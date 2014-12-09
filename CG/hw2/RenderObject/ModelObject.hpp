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

    void setMatrices(GLfloat *model,GLfloat *view, GLfloat *proj, GLfloat *mvp) override {
        this->model = model;
        this->view = view;
        this->proj = proj;
        this->mvp = mvp;
    }

    virtual void setTextureParams(GLfloat uvMultiplier) override {
        this->uvMultiplier = uvMultiplier;
    }

    virtual void setLightParams(GLfloat *ambient,
            GLfloat *specular, GLfloat specularStrength, GLfloat specularPower,
            GLfloat *lightPosition, GLfloat *lightColor, GLfloat lightPower) override {
        this->ambient = ambient;

        this->specular = specular;
        this->specularStrength = specularStrength;
        this->specularPower = specularPower;

        this->lightPosition = lightPosition;
        this->lightColor = lightColor;
        this->lightPower = lightPower;
    }

private:
    std::string modelFilePath, vsFilePath, fsFilePath;

    GLuint vertexShader, fragmentShader, shaderProgram;
    GLuint vbo_vertices, vbo_indices, vbo_normals, vbo_texcoords;
    GLuint vertexArrayObject;

    std::vector<glm::vec4> vertices;
    std::vector<glm::vec3> normals, tangents, bitangents;
    std::vector<glm::vec2> texcoords;
    std::vector<GLuint> indices;

    GLfloat *model, *view, *proj, *mvp;
    GLuint textureBrick, textureNormal;
    GLfloat uvMultiplier;

    GLfloat *ambient;
    GLfloat *specular;
    GLfloat specularStrength, specularPower;
    GLfloat *lightPosition, *lightColor;
    GLfloat lightPower;

    template<typename T>
    void createVertexBufferObject(GLuint *vbo, std::vector<T> const &data);

    template<typename T>
    void bindVertexBufferObject(GLuint vbo, char const *attributeName, std::vector<T> const &data, GLint size);
};

#endif /* end of include guard: MODELOBJECT_HPP */
