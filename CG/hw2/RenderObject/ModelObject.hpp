#ifndef MODELOBJECT_HPP
#define MODELOBJECT_HPP

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <vector>
#include <string>
#include "IRenderObject.hpp"

using std::string;

class ModelObject : public IRenderObject {

public:
    ModelObject(string pathToModel, string const &pathToVertexShader, string const& pathToFragmentShader);

    virtual void render();

    virtual ~ModelObject();

    void setMatrices(GLfloat *model, GLfloat *view, GLfloat *proj, GLfloat *mvp) override {
        this->model = model;
        this->view = view;
        this->proj = proj;
        this->mvp = mvp;
    }

private:
    std::string modelFilePath, vsFilePath, fsFilePath;

    GLuint vertexShader, fragmentShader, shaderProgram;
    GLuint vbo_vertices, vbo_indices, vbo_normals, vbo_texcoords;
    GLuint vertexArrayObject;

    std::vector<glm::vec4> vertices;
    std::vector<glm::vec3> normals;
    std::vector<glm::vec2> texcoords;
    std::vector<GLuint> indices;

    GLfloat *model, *view, *proj, *mvp;
    GLuint texture;
};

#endif /* end of include guard: MODELOBJECT_HPP */
