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
    HW1scene(OpenGLContext *openGLContext, string mode);

    ~HW1scene();

    virtual void draw(float timeFromStart) override;

private:
    TwBar *antTweakBar;
    bool isWireFrame;
    GLuint cowVertexShader, cowFragmentShader, cowShaderProgram;
    GLuint cowColorVertexShader, cowColorFragmentShader, cowColorShaderProgram;
    GLuint wireframeVertexShader, wireframeFragmentShader, wireframeShaderProgram;
    GLuint vbo_vertices, vbo_indices, vbo_normals;
    GLuint vao;
    quat rotation_by_ATB;
    int velocity;
    int frequency;

    string mode;

    vector<glm::vec4> vertices;
    vector<glm::vec3> normals;
    vector<GLuint> indices;

    void init_buffers();

    void init_VAO();

    void setGlobalWireFrameIfNeeded();

    void cowPass(GLfloat const *proj, GLfloat const *view, GLfloat const *model);
    void cowColorPass(GLfloat const *proj, GLfloat const *view, GLfloat const *model, float);

    void wireFramePass(GLfloat const *proj, GLfloat const *view, GLfloat const *model);

    void setConstants();
};

#endif /* end of include guard: SIMPLET_HPP */