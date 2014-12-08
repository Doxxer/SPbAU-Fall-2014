#ifndef MODELOBJECT_HPP
#define MODELOBJECT_HPP

#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <vector>
#include <string>
#include "IRenderObject.hpp"

using std::string;

class ModelObject : public IRenderObject {

public:
    ModelObject(string pathToModel, string const &pathToVertexShader, string const& pathToFragmentShader);

    virtual void render() override;

    virtual ~ModelObject();

    void setMatrices(GLfloat *modelView, GLfloat *view, GLfloat *proj, GLfloat *mvp, GLfloat *normals) override {
        this->modelView = modelView;
        this->view = view;
        this->proj = proj;
        this->mvp = mvp;
        this->normalsMatrix = normals;
    }

    virtual void setTextureParams(GLfloat uvMultiplier) override {
        this->uvMultiplier = uvMultiplier;
    }

    virtual void setLightParams(GLfloat *lightView, GLfloat *ambient, GLfloat *diffuse, GLfloat *specular,
            GLfloat specularStrength, GLfloat specularPower) override {
        this->lightView = lightView;
        this->ambient = ambient;
        this->diffuse = diffuse;
        this->specular = specular;
        this->specularStrength = specularStrength;
        this->specularPower = specularPower;
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

    GLfloat *modelView, *view, *proj, *mvp, *normalsMatrix;
    GLuint texture;
    GLfloat uvMultiplier;

    GLfloat *lightView, *ambient, *diffuse, *specular;
    GLfloat specularStrength, specularPower;
};

#endif /* end of include guard: MODELOBJECT_HPP */
