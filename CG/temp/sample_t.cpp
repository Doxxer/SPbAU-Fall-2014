#include <AntTweakBar.h>
#include "sample_t.hpp"
#include "shader.hpp"

sample_t::sample_t() : wireframe_(false) {
    TwInit(TW_OPENGL_CORE, NULL);

    bar = TwNewBar("Parameters");
    TwDefine("Parameters size='500 150' color='70 100 120' valueswidth=220 iconpos=topleft");

    TwAddVarRW(bar, "Wireframe mode", TW_TYPE_BOOLCPP, &wireframe_, " true='ON' false='OFF' key=W ");

//    TwAddButton(bar, "Fullscreen toggle", toggle_fullscreen_callback, NULL,
//            " label='Toggle fullscreen mode' key=f");

    TwAddVarRW(bar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_control_,
            " label='Object orientation' opened=true help='Change the object orientation.' ");

    vs_ = create_shader(GL_VERTEX_SHADER, "vs.glsl");
    fs_ = create_shader(GL_FRAGMENT_SHADER, "fs.glsl");
    program_ = create_program(vs_, fs_);
    init_buffer();
    init_vertex_array();
}

sample_t::~sample_t() {
    glDeleteProgram(program_);
    glDeleteShader(vs_);
    glDeleteShader(fs_);
    glDeleteVertexArrays(1, &vao_);
    glDeleteBuffers(1, &vx_buf_);

    TwDeleteAllBars();
    TwTerminate();
}

void sample_t::init_buffer() {
    glGenBuffers(1, &vx_buf_);
    glBindBuffer(GL_ARRAY_BUFFER, vx_buf_);
    vec2 const data[3] =
            {
                    vec2(0, 0), vec2(1, 0), vec2(1, 1)
            };

    glBufferData(GL_ARRAY_BUFFER, sizeof(vec2) * 3, data, GL_STATIC_DRAW);
}

void sample_t::init_vertex_array() {
    glGenVertexArrays(1, &vao_);
    glBindVertexArray(vao_);
    glBindBuffer(GL_ARRAY_BUFFER, vx_buf_);

    GLuint const pos_location = (GLuint const) glGetAttribLocation(program_, "in_pos");
    glVertexAttribPointer(pos_location, 2, GL_FLOAT, GL_FALSE, sizeof(vec2), 0);
    glEnableVertexAttribArray(0);
    glBindVertexArray(0);
}

void sample_t::draw_frame(float time_from_start) {
    float const rotation_angle = time_from_start * 360;

    float const w = (float) 640;
    float const h = (float) 480;
    mat4 const proj = perspective(45.0f, w / h, 0.1f, 100.0f);
    mat4 const view = lookAt(vec3(0, 0, 8), vec3(0, 0, 0), vec3(0, 1, 0));
    quat const rotation_by_time = quat(vec3(radians(rotation_angle), 0, 0));
    mat4 const modelview = view * mat4_cast(rotation_by_control_ * rotation_by_time);
    mat4 const mvp = proj * modelview;

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

    GLuint const mvp_location = glGetUniformLocation(program_, "mvp");
    glUniformMatrix4fv(mvp_location, 1, GL_FALSE, &mvp[0][0]);

    glBindVertexArray(vao_);

    glDrawArrays(GL_TRIANGLES, 0, 3);
}
