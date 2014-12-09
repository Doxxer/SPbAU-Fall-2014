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

    void setMatrices(GLfloat *model, GLfloat *view, GLfloat *proj, GLfloat *mvp) override {
        this->model = model;
        this->view = view;
        this->proj = proj;
        this->mvp = mvp;
    }

    virtual void setTextureParams(GLfloat uvMultiplier) override {
        this->uvMultiplier = uvMultiplier;
    }

    virtual void setLightParams(GLfloat *lightPosition, GLfloat *ambient, GLfloat *specular,
            GLfloat specularStrength, GLfloat specularPower) override {
        this->lightPosition = lightPosition;
        this->ambient = ambient;
        this->specular = specular;
        this->specularStrength = specularStrength;
        this->specularPower = specularPower;
    }

private:
    std::string modelFilePath, vsFilePath, fsFilePath;

    GLuint vertexShader, fragmentShader, shaderProgram;
    GLuint vbo_vertices, vbo_indices, vbo_normals, vbo_texcoords;
//    GLuint vbo_tangents, vbo_bitangents;
    GLuint vertexArrayObject;

    std::vector<glm::vec4> vertices;
    std::vector<glm::vec3> normals, tangents, bitangents;
    std::vector<glm::vec2> texcoords;
    std::vector<GLuint> indices;

    GLfloat *model, *view, *proj, *mvp;
    GLuint textureBrick, textureNormal;
    GLfloat uvMultiplier;

    GLfloat *lightPosition, *ambient, *specular;
    GLfloat specularStrength, specularPower;

    template<typename T>
    void createVertexBufferObject(GLuint *vbo, std::vector<T> const &data);

    template<typename T>
    void bindVertexBufferObject(GLuint vbo, char const *attributeName, std::vector<T> const &data, GLint size);
};

#endif /* end of include guard: MODELOBJECT_HPP */
