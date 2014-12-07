#include <AntTweakBar.h>
#include "HW2scene.hpp"
#include "shader.hpp"
#include "ObjLoader.hpp"

HW2scene::HW2scene(shared_ptr<OpenGLContext> openGLContext)
        : Scene(openGLContext), isWireFrame(false), rotation_velocity(90) {
    TwInit(TW_OPENGL_CORE, NULL);

    antTweakBar = TwNewBar("Parameters");
    TwDefine("Parameters size='500 200' color='70 100 120' valueswidth=220 iconpos=topleft");

    TwAddVarRW(antTweakBar, "Wireframe mode", TW_TYPE_BOOLCPP, &isWireFrame, " true='ON' false='OFF' key=W ");

    TwAddVarRW(antTweakBar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_ATB,
            " label='Object orientation' opened=true help='Change the object orientation.' ");
    TwAddVarRW(antTweakBar, "RotationVelocity", TW_TYPE_FLOAT, &rotation_velocity, " min=0 max=360 step=10");

    cowVertexShader = create_shader(GL_VERTEX_SHADER, "cow.vs");
    cowFragmentShader = create_shader(GL_FRAGMENT_SHADER, "cow.fs");
    cowShaderProgram = create_program(cowVertexShader, cowFragmentShader);

    LoadOBJModel("Resources/cow.obj", vertices, normals, indices);

    init_buffers();
    init_VAO();
}

HW2scene::~HW2scene() {
    glDeleteProgram(cowShaderProgram);
    glDeleteShader(cowVertexShader);
    glDeleteShader(cowFragmentShader);

    glDeleteVertexArrays(1, &vao);
    glDeleteBuffers(1, &vbo_vertices);
    glDeleteBuffers(1, &vbo_indices);
    glDeleteBuffers(1, &vbo_normals);

    TwDeleteAllBars();
    TwTerminate();
}

void HW2scene::init_buffers() {
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

void HW2scene::init_VAO() {
    glGetError();
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    glBindBuffer(GL_ARRAY_BUFFER, vbo_vertices);
    GLuint vertex_coords_attribute = (GLuint) glGetAttribLocation(cowShaderProgram, "vertex_coords");
    glVertexAttribPointer(vertex_coords_attribute, 4, GL_FLOAT, GL_FALSE, sizeof(vertices[0]), NULL);
    glEnableVertexAttribArray(vertex_coords_attribute);

    glBindBuffer(GL_ARRAY_BUFFER, vbo_normals);
    GLuint normal_coords_attribute = (GLuint) glGetAttribLocation(cowShaderProgram, "normal_coords");
    glVertexAttribPointer(normal_coords_attribute, 3, GL_FLOAT, GL_FALSE, sizeof(normals[0]), NULL);
    glEnableVertexAttribArray(normal_coords_attribute);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_indices);
}

void HW2scene::draw(double timeFromStart) {
    float rotation_angle = timeFromStart * rotation_velocity;

    mat4 const proj = perspective(45.0f, openGLContext->getWindowWidth() / openGLContext->getWindowHeight(), 0.1f, 100.0f);
    mat4 const view = lookAt(vec3(0, 0, 15), vec3(0, 0, 0), vec3(0, 1, 0));
    quat const rotation_by_time = quat(vec3(0, radians(rotation_angle), 0));

    mat4 const model = mat4_cast(rotation_by_ATB * rotation_by_time);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glClearColor(0.2f, 0.2f, 0.2f, 1);
    glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    if (isWireFrame)
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    else
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

    cowPass(&proj[0][0], &view[0][0], &model[0][0]);

    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}

void HW2scene::cowPass(GLfloat const *proj, GLfloat const *view, GLfloat const *model) {
    glUseProgram(cowShaderProgram);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "model"), 1, GL_FALSE, model);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "view"), 1, GL_FALSE, view);
    glUniformMatrix4fv(glGetUniformLocation(cowShaderProgram, "proj"), 1, GL_FALSE, proj);

    glBindVertexArray(vao);
    glDrawElements(GL_TRIANGLES, (GLsizei) indices.size(), GL_UNSIGNED_INT, 0);
}