#ifndef MODELOBJECT_HPP
#define MODELOBJECT_HPP

#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <vector>
#include <string>
#include <GL/glew.h>
#include "IRenderObject.hpp"

using std::string;

class ModelObject : public IRenderObject {

public:
    ModelObject(string pathToModel, string const &pathToVertexShader, string const& pathToFragmentShader);

    virtual void render() override;

    virtual ~ModelObject();

    void setMatrices(GLfloat *model, GLfloat *view, GLfloat *proj, GLfloat *mvp, GLfloat *modelView, GLfloat *modelView33) {
        this->model = model;
        this->view = view;
        this->proj = proj;
        this->mvp = mvp;
        this->modelView = modelView;
        this->modelView33 = modelView33;
    }

    virtual void setTextureParams(GLfloat uvMultiplier, bool mipmap) {
        this->uvMultiplier = uvMultiplier;
        this->mipmap = mipmap;
    }

    virtual void setLightParams(GLfloat *lightDirection,
            GLfloat *lightColor, GLfloat *specularColor,
            GLfloat ambientPower, GLfloat diffusePower, GLfloat specularPower) {
        this->lightDirection = lightDirection;
        this->lightColor = lightColor;
        this->specularColor = specularColor;

        this->ambientPower = ambientPower;
        this->diffusePower = diffusePower;
        this->specularPower = specularPower;
    }

private:
    std::string modelFilePath, vsFilePath, fsFilePath;

    GLuint vertexShader, fragmentShader, shaderProgram;
    GLuint vbo_vertices, vbo_indices, vbo_normals, vbo_texcoords, vbo_tangents, vbo_bitangents;
    GLuint vertexArrayObject;

    std::vector<glm::vec4> vertices;
    std::vector<glm::vec3> normals, tangents, bitangents;
    std::vector<glm::vec2> texcoords;
    std::vector<GLuint> indices;

    GLfloat *model, *view, *proj, *modelView, *modelView33, *mvp;
    GLuint textureBrick, textureNormal;
    GLfloat uvMultiplier;
    bool mipmap;

    GLfloat *lightDirection;
    GLfloat *lightColor, *specularColor;
    GLfloat ambientPower, diffusePower, specularPower;

    template<typename T>
    void createVertexBufferObject(GLuint *vbo, std::vector<T> const &data);

    template<typename T>
    void bindVertexBufferObject(GLuint vbo, char const *attributeName, std::vector<T> const &data, GLint size);
};

#endif /* end of include guard: MODELOBJECT_HPP */
