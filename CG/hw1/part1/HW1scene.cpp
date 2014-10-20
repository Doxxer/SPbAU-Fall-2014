#include <AntTweakBar.h>
#include "HW1scene.hpp"
#include "shader.hpp"

HW1scene::HW1scene(OpenGLContext *openGLContext, string mode)
        : offset_x(0), offset_y(0), scale(1.0f), wireframe_(false), mode(mode), Scene(openGLContext) {
    TwInit(TW_OPENGL_CORE, NULL);

    bar = TwNewBar("Parameters");
    TwDefine("Parameters size='500 150' color='70 100 120' valueswidth=220 iconpos=topleft");

    TwAddVarRW(bar, "Wireframe mode", TW_TYPE_BOOLCPP, &wireframe_, " true='ON' false='OFF' key=Z ");

    TwAddVarRW(bar, "offset x", TW_TYPE_FLOAT, &offset_x, " min=-2 max=2 step=0.1 keyincr=D keydecr=A");
    TwAddVarRW(bar, "offset y", TW_TYPE_FLOAT, &offset_y, " min=-2 max=2 step=0.1 keyincr=W keydecr=S");
    TwAddVarRW(bar, "scale", TW_TYPE_FLOAT, &this->scale, " min=1 max=8 step=0.1 keyincr=E keydecr=Q");

//    TwAddButton(bar, "Fullscreen toggle", toggleFullscreen, NULL, " label='Toggle fullscreen mode' key=F");

    TwAddVarRW(bar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_control_,
            " label='Object orientation' opened=true help='Change the object orientation.' ");

    vs_ = create_shader(GL_VERTEX_SHADER, mode + ".vs");
    fs_ = create_shader(GL_FRAGMENT_SHADER, mode + ".fs");
    program_ = create_program(vs_, fs_);
    init_buffer();
    init_vertex_array();
}

HW1scene::~HW1scene() {
    glDeleteProgram(program_);
    glDeleteShader(vs_);
    glDeleteShader(fs_);
    glDeleteVertexArrays(1, &vao_);
    glDeleteBuffers(1, &vx_buf_);

    TwDeleteAllBars();
    TwTerminate();
}

void HW1scene::init_buffer() {
    glGenBuffers(1, &vx_buf_);
    glBindBuffer(GL_ARRAY_BUFFER, vx_buf_);

    if (mode == "4") {
        float const initial_size = 2.0f;
        vec2 const data[6] =
                {
                        vec2(-initial_size, -initial_size),
                        vec2(initial_size, -initial_size),
                        vec2(initial_size, initial_size),
                        vec2(-initial_size, -initial_size),
                        vec2(initial_size, initial_size),
                        vec2(-initial_size, initial_size)
                };
        glBufferData(GL_ARRAY_BUFFER, sizeof(vec2) * 6, data, GL_STATIC_DRAW);
    } else {
        vec2 const data[3] =
                {
                        vec2(-1.0f * glm::sqrt(3.0f), -1.0f),
                        vec2(0.0f, 2.0f),
                        vec2(glm::sqrt(3.0f), -1.0f)
                };
        glBufferData(GL_ARRAY_BUFFER, sizeof(vec2) * 3, data, GL_STATIC_DRAW);
    }
}

void HW1scene::init_vertex_array() {
    glGenVertexArrays(1, &vao_);
    glBindVertexArray(vao_);
    glBindBuffer(GL_ARRAY_BUFFER, vx_buf_);

    GLuint const pos_location = (GLuint const) glGetAttribLocation(program_, "in_pos");
    glVertexAttribPointer(pos_location, 2, GL_FLOAT, GL_FALSE, sizeof(vec2), 0);
    glEnableVertexAttribArray(0);
    glBindVertexArray(0);
}

void HW1scene::draw(float timeFromStart) {
    float const rotation_angle = timeFromStart * (mode == "4" ? 0.0f : 50.0f);
    float const w = (float) openGLContext->getWindowWidth();
    float const h = (float) openGLContext->getWindowHeight();
    float const side = 2.0f;

//    mat4 const proj = perspective(45.0f, w / h, 0.1f, 100.0f);
    mat4 const proj = ortho(-side, side, -side * h / w, side * h / w, -10.0f, 100.0f);

    mat4 const view = lookAt(vec3(0.0f, 0.0f, 8.0f), vec3(0.0f, 0.0f, 0.0f), vec3(0.0f, 1.0f, 0.0f));
    mat4 const model = rotate(toMat4(rotation_by_control_), rotation_angle, vec3(0, 0, 1));

    if (wireframe_)
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    else
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

    glDisable(GL_CULL_FACE);
    glDisable(GL_DEPTH_TEST);
    glClearColor(0.2f, 0.2f, 0.2f, 1);
    glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glUseProgram(program_);

    glUniformMatrix4fv(glGetUniformLocation(program_, "model"), 1, GL_FALSE, &model[0][0]);
    glUniformMatrix4fv(glGetUniformLocation(program_, "view"), 1, GL_FALSE, &view[0][0]);
    glUniformMatrix4fv(glGetUniformLocation(program_, "proj"), 1, GL_FALSE, &proj[0][0]);

    if (mode == "4") {
        glUniform1f(glGetUniformLocation(program_, "scale"), scale);
        glUniform1f(glGetUniformLocation(program_, "offset_y"), offset_y);
        glUniform1f(glGetUniformLocation(program_, "offset_x"), offset_x);
    }

    glBindVertexArray(vao_);

    glDrawArrays(GL_TRIANGLES, 0, mode == "4" ? 6 : 3);
}