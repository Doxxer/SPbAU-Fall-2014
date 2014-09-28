#ifndef SIMPLET_HPP
#define SIMPLET_HPP

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>

using namespace glm;

class sample_t {
public:
    sample_t();

    ~sample_t();

    void init_buffer();

    void init_vertex_array();

    void draw_frame(float time_from_start);

private:
    TwBar *bar;
    bool wireframe_;
    GLuint vs_, fs_, program_;
    GLuint vx_buf_;
    GLuint vao_;
    glm::quat rotation_by_control_;
};

#endif /* end of include guard: SIMPLET_HPP */