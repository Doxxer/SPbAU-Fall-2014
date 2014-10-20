#ifndef SIMPLET_HPP
#define SIMPLET_HPP

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include "Scene.hpp"
#include "OpenGLContext.hpp"

using namespace glm;

class HW1scene : public Scene {
public:
    HW1scene(OpenGLContext *openGLContext, string mode);

    ~HW1scene();

    virtual void draw(float timeFromStart) override;

private:
    TwBar *bar;
    bool wireframe_;
    GLuint vs_, fs_, program_;
    GLuint vx_buf_;
    GLuint vao_;
    quat rotation_by_control_;
    string mode;

    float offset_x, offset_y, scale;

    void init_buffer();

    void init_vertex_array();
};

#endif /* end of include guard: SIMPLET_HPP */