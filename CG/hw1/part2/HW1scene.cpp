#include <AntTweakBar.h>
#include "HW1scene.hpp"
#include "shader.hpp"
#include "ObjLoader.hpp"

HW1scene::HW1scene(OpenGLContext *openGLContext) : isWireFrame(false), Scene(openGLContext) {
    TwInit(TW_OPENGL_CORE, NULL);

    antTweakBar = TwNewBar("Parameters");
    TwDefine("Parameters size='500 150' color='70 100 120' valueswidth=220 iconpos=topleft");

    TwAddVarRW(antTweakBar, "Wireframe mode", TW_TYPE_BOOLCPP, &isWireFrame, " true='ON' false='OFF' key=W ");

//    TwAddButton(bar, "Fullscreen toggle", toggleFullscreen, NULL, " label='Toggle fullscreen mode' key=F");

    TwAddVarRW(antTweakBar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_ATB,
            " label='Object orientation' opened=true help='Change the object orientation.' ");

    vertexShader = create_shader(GL_VERTEX_SHADER, "cow.vs");
    fragmentShader = create_shader(GL_FRAGMENT_SHADER, "cow.fs");
    shaderProgram = create_program(vertexShader, fragmentShader);

    LoadOBJModel("model.obj", vertices, normals, indices);

    init_buffers();
    init_vertex_array();
}

HW1scene::~HW1scene() {
    glDeleteProgram(shaderProgram);
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
    glDeleteVertexArrays(1, &vao);
    glDeleteBuffers(1, &vbo_vertices);
    glDeleteBuffers(1, &vbo_indices);

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
}

void HW1scene::init_vertex_array() {
    glGetError();
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    glBindBuffer(GL_ARRAY_BUFFER, vbo_vertices);
    GLuint vertex_coords_attribute = (GLuint) glGetAttribLocation(shaderProgram, "vertex_coords");
    glVertexAttribPointer(vertex_coords_attribute, 4, GL_FLOAT, GL_FALSE, sizeof(vertices[0]), NULL);
    glEnableVertexAttribArray(vertex_coords_attribute);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_indices);
}

void HW1scene::draw(float timeFromStart) {
    float const w = (float) openGLContext->getWindowWidth();
    float const h = (float) openGLContext->getWindowHeight();

//    float const side = 2.0f;
//    mat4 const proj = ortho(-side, side, -side * h / w, side * h / w, -10.0f, 100.0f);

    mat4 const proj = perspective(45.0f, w / h, 0.1f, 100.0f);
    mat4 const view = lookAt(vec3(0.0f, 0.0f, 18.0f), vec3(0.0f, 0.0f, 0.0f), vec3(0.0f, 1.0f, 0.0f));
    mat4 const model = rotate(toMat4(rotation_by_ATB), 0.0f, vec3(0, 0, 1));

    if (isWireFrame)
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    else
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

    glDisable(GL_CULL_FACE);
    glDisable(GL_DEPTH_TEST);
    glClearColor(0.2f, 0.2f, 0.2f, 1);
    glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glUseProgram(shaderProgram);

    glUniformMatrix4fv(glGetUniformLocation(shaderProgram, "model"), 1, GL_FALSE, &model[0][0]);
    glUniformMatrix4fv(glGetUniformLocation(shaderProgram, "view"), 1, GL_FALSE, &view[0][0]);
    glUniformMatrix4fv(glGetUniformLocation(shaderProgram, "proj"), 1, GL_FALSE, &proj[0][0]);

    glBindVertexArray(vao);
    glDrawElements(GL_TRIANGLES, (GLsizei) indices.size(), GL_UNSIGNED_INT, 0);
}