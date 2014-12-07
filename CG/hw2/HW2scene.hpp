#ifndef SIMPLET_HPP
#define SIMPLET_HPP

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <memory>
#include "Scene.hpp"
#include "OpenGLContext.hpp"
#include "vector"

using namespace glm;
using namespace std;

class HW2scene : public Scene {
public:
    HW2scene(shared_ptr<OpenGLContext> openGLContext);

    ~HW2scene();

    virtual void draw(double timeFromStart) override;

private:
    TwBar *antTweakBar;
    bool isWireFrame;
    GLuint cowVertexShader, cowFragmentShader, cowShaderProgram;
    GLuint vbo_vertices, vbo_indices, vbo_normals;
    GLuint vao;
    quat rotation_by_ATB;
    GLfloat rotation_velocity;

    vector<glm::vec4> vertices;
    vector<glm::vec3> normals;
    vector<GLuint> indices;

    void init_buffers();

    void init_VAO();

    void cowPass(GLfloat const *proj, GLfloat const *view, GLfloat const *model);
};

#endif /* end of include guard: SIMPLET_HPP */