#ifndef COW_HPP
#define COW_HPP

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <vector>
#include "IRenderObject.hpp"

class Cow : public IRenderObject {

public:
    Cow();

    virtual void render() override;

    virtual void setMatrices(GLfloat *model, GLfloat *view, GLfloat *proj, GLfloat *mvp) override {
        this->model = model;
        this->mvp = mvp;
    }

    virtual ~Cow();

private:
    GLuint vertexShader, fragmentShader, shaderProgram;
    GLuint vbo_vertices, vbo_indices, vbo_normals;
    GLuint vertexArrayObject;

    std::vector<glm::vec4> vertices;
    std::vector<glm::vec3> normals;
    std::vector<GLuint> indices;

    GLfloat *model, *mvp;
};

#endif /* end of include guard: COW_HPP */
