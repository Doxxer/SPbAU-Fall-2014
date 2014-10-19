#include <AntTweakBar.h>
#include "HW1scene.hpp"
#include "shader.hpp"
#include "ObjLoader.hpp"

HW1scene::HW1scene(OpenGLContext *openGLContext, string mode)
        : velocity(5), frequency(3), mode(mode), isWireFrame(false), Scene(openGLContext) {
    TwInit(TW_OPENGL_CORE, NULL);

    antTweakBar = TwNewBar("Parameters");
    TwDefine("Parameters size='500 190' color='70 100 120' valueswidth=220 iconpos=topleft");

    TwAddVarRW(antTweakBar, "Wireframe mode", TW_TYPE_BOOLCPP, &isWireFrame, " true='ON' false='OFF' key=W ");

    TwAddVarRW(antTweakBar, "velocity (v)", TW_TYPE_INT32, &velocity, " min=0 max=30 keyincr=S keydecr=A");
    TwAddVarRW(antTweakBar, "frequency (k)", TW_TYPE_INT32, &frequency, " min=0 max=30  keyincr=F keydecr=D");

    TwAddVarRW(antTweakBar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_ATB,
            " label='Object orientation' opened=true help='Change the object orientation.' ");

    cowVertexShader = create_shader(GL_VERTEX_SHADER, "cow.vs");
    cowFragmentShader = create_shader(GL_FRAGMENT_SHADER, "cow.fs");
    cowShaderProgram = create_program(cowVertexShader, cowFragmentShader);

    cowColorVertexShader = create_shader(GL_VERTEX_SHADER, "cow_color.vs");
    cowColorFragmentShader = create_shader(GL_FRAGMENT_SHADER, "cow_color.fs");
    cowColorShaderProgram = create_program(cowColorVertexShader, cowColorFragmentShader);

    wireframeVertexShader = create_shader(GL_VERTEX_SHADER, "wireframe.vs");
    wireframeFragmentShader = create_shader(GL_FRAGMENT_SHADER, "wireframe.fs");
    wireframeShaderProgram = create_program(wireframeVertexShader, wireframeFragmentShader);

    LoadOBJModel("model.obj", vertices, normals, indices);

    init_buffers();
    init_VAO();
    setConstants();
}

void HW1scene::setConstants() {
    vec4 center = vec4(0, 0, 0, 0);
    for (size_t i = 0; i < vertices.size(); ++i) {
        center += vertices[i];
    }

    center /= vertices.size();
    float maxDistance = 0;
    for (size_t i = 0; i < vertices.size(); ++i) {
        maxDistance = glm::max(maxDistance, length(vertices[i] - center));
    }

    glUseProgram(cowColorShaderProgram);
    glUniform1f(glGetUniformLocation(cowColorShaderProgram, "N"), vertices.size());
    glUniform4f(glGetUniformLocation(cowColorShaderProgram, "center"), center[0], center[1], center[2], center[3]);
    glUniform1f(glGetUniformLocation(cowColorShaderProgram, "maxDistance"), maxDistance);
}

HW1scene::~HW1scene() {
    glDeleteProgram(cowShaderProgram);
    glDeleteShader(cowVertexShader);
    glDeleteShader(cowFragmentShader);

    glDeleteProgram(cowColorShaderProgram);
    glDeleteShader(cowColorVertexShader);
    glDeleteShader(cowColorFragmentShader);

    glDeleteProgram(wireframeShaderProgram);
    glDeleteShader(wireframeVertexShader);
    glDeleteShader(wireframeFragmentShader);

    glDeleteVertexArrays(1, &vao);
    glDeleteBuffers(1, &vbo_vertices);
    glDeleteBuffers(1, &vbo_indices);
    glDeleteBuffers(1, &vbo_normals);

    TwDeleteAllBars();
    TwTerminate();
}

void HW1scene::init_buffers() {
    glGenBuffers(1, &vbo_vertices);
    glBindBuffer(GL_ARRAY_BUFFER, vbo_vertices);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices[0]) * vertices.size(), vertices.data(), GL_STATIC_DRAW);

    glGenBuffers(1, &vbo_indices);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_indices);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices[0]) * indices.size(), indices.data(), GL_STATIC_DRAW);

    glGenBuffers(1, &vbo_normals);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_normals);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(normals[0]) * normals.size(), normals.data(), GL_STATIC_DRAW);
}

void HW1scene::init_VAO() {
    glGetError();
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    glBindBuffer(GL_ARRAY_BUFFER, vbo_vertices);
    GLuint vertex_coords_attribute = (GLuint) glGetAttribLocation(cowShaderProgram, "vertex_coords");
    glVertexAttribPointer(vertex_coords_attribute, 4, GL_FLOAT, GL_FALSE, sizeof(vertices[0]), NULL);
    glEnableVertexAttribArray(vertex_coords_attribute);

    vertex_coords_attribute = (GLuint) glGetAttribLocation(cowColorShaderProgram, "vertex_coords");
    glVertexAttribPointer(vertex_coords_attribute, 4, GL_FLOAT, GL_FALSE, sizeof(vertices[0]), NULL);
    glEnableVertexAttribArray(vertex_coords_attribute);

    glBindBuffer(GL_ARRAY_BUFFER, vbo_normals);
    GLuint normal_coords_attribute = (GLuint) glGetAttribLocation(cowShaderProgram, "normal_coords");
    glVertexAttribPointer(normal_coords_attribute, 3, GL_FLOAT, GL_FALSE, sizeof(normals[0]), NULL);
    glEnableVertexAttribArray(normal_coords_attribute);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_indices);
}

void HW1scene::draw(float timeFromStart) {
    float const w = (float) openGLContext->getWindowWidth();
    float const h = (float) openGLContext->getWindowHeight();

    mat4 const proj = perspective(45.0f, w / h, 0.1f, 100.0f);
    mat4 const view = lookAt(vec3(0.0f, 0.0f, 15.0f), vec3(0.0f, 0.0f, 0.0f), vec3(0.0f, 1.0f, 0.0f));
    mat4 const model = rotate(toMat4(rotation_by_ATB), 0.0f, vec3(0, 0, 1));

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glClearColor(0.2f, 0.2f, 0.2f, 1);
    glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    setGlobalWireFrameIfNeeded();

    if (mode == "1") {
        cowPass(&proj[0][0], &view[0][0], &model[0][0]);
        wireFramePass(&proj[0][0], &view[0][0], &model[0][0]);
    } else if (mode == "4") {
        cowColorPass(&proj[0][0], &view[0][0], &model[0][0], timeFromStart);
        wireFramePass(&proj[0][0], &view[0][0], &model[0][0]);
    }

    setGlobalWireFrameIfNeeded();
}

void HW1scene::cowPass(GLfloat const *proj, GLfloat const *view, GLfloat const *model) {
    glUseProgram(cowShaderProgram);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "model"), 1, GL_FALSE, model);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "view"), 1, GL_FALSE, view);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "proj"), 1, GL_FALSE, proj);

    glBindVertexArray(vao);
    glDrawElements(GL_TRIANGLES, (GLsizei) indices.size(), GL_UNSIGNED_INT, 0);
}

void HW1scene::wireFramePass(GLfloat const *proj, GLfloat const *view, GLfloat const *model) {
    glEnable(GL_POLYGON_OFFSET_LINE);
    glPolygonOffset(-1.0f, 0.0f);
    glUseProgram(wireframeShaderProgram);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "model"), 1, GL_FALSE, model);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "view"), 1, GL_FALSE, view);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "proj"), 1, GL_FALSE, proj);

    glBindVertexArray(vao);
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    glDrawElements(GL_TRIANGLES, (GLsizei) indices.size(), GL_UNSIGNED_INT, 0);

    glDisable(GL_POLYGON_OFFSET_LINE);
}

void HW1scene::cowColorPass(GLfloat const *proj, GLfloat const *view, GLfloat const *model, float timeFromStart) {
    glUseProgram(cowColorShaderProgram);
    glUniformMatrix4fv(glGetUniformLocation(cowColorShaderProgram, "model"), 1, GL_FALSE, model);
    glUniformMatrix4fv(glGetUniformLocation(cowColorShaderProgram, "view"), 1, GL_FALSE, view);
    glUniformMatrix4fv(glGetUniformLocation(cowColorShaderProgram, "proj"), 1, GL_FALSE, proj);
    glUniform1f(glGetUniformLocation(cowColorShaderProgram, "timeFromStart"), timeFromStart);
    glUniform1f(glGetUniformLocation(cowColorShaderProgram, "v"), velocity);
    glUniform1f(glGetUniformLocation(cowColorShaderProgram, "k"), frequency);

    glBindVertexArray(vao);
    glDrawElements(GL_TRIANGLES, (GLsizei) indices.size(), GL_UNSIGNED_INT, 0);
}

void HW1scene::setGlobalWireFrameIfNeeded() {
    if (isWireFrame)
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    else
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}