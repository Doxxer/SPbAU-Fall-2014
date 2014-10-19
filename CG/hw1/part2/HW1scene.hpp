#ifndef SIMPLET_HPP
#define SIMPLET_HPP

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include "Scene.hpp"
#include "OpenGLContext.hpp"
#include "vector"

using namespace glm;
using namespace std;

class HW1scene : public Scene {
public:
    HW1scene(OpenGLContext *openGLContext);

    ~HW1scene();

    virtual void draw(float timeFromStart) override;

private:
    TwBar *antTweakBar;
    bool isWireFrame;
    GLuint vertexShader, fragmentShader, shaderProgram;
    GLuint vbo_vertices, vbo_indices;
    GLuint vao;
    quat rotation_by_ATB;

    vector<glm::vec4> vertices;
    vector<glm::vec3> normals;
    vector<GLuint> indices;

    void init_buffers();

    void init_vertex_array();
};

#endif /* end of include guard: SIMPLET_HPP */