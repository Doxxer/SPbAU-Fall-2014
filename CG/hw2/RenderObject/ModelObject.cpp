#include "ModelObject.hpp"
#include "shader.hpp"
#include "ObjLoader.hpp"
#include "TextureLoader.hpp"

void ModelObject::render() {
    glUseProgram(shaderProgram);

    // vertex shader
    glUniformMatrix4fv(glGetUniformLocation(shaderProgram, "mvp"), 1, GL_FALSE, mvp);
    glUniformMatrix4fv(glGetUniformLocation(shaderProgram, "view"), 1, GL_FALSE, view);
    glUniformMatrix4fv(glGetUniformLocation(shaderProgram, "model"), 1, GL_FALSE, model);
    glUniformMatrix3fv(glGetUniformLocation(shaderProgram, "modelView33"), 1, GL_FALSE, modelView33);
    glUniform1f(glGetUniformLocation(shaderProgram, "uv_mult"), uvMultiplier);
    glUniform3fv(glGetUniformLocation(shaderProgram, "lightDirection"), 1, lightDirection);

    // fragment shader
    glUniform3fv(glGetUniformLocation(shaderProgram, "light.color"), 1, lightColor);
    glUniform3fv(glGetUniformLocation(shaderProgram, "light.specularColor"), 1, specularColor);
    glUniform1f(glGetUniformLocation(shaderProgram, "light.ambientPower"), ambientPower);
    glUniform1f(glGetUniformLocation(shaderProgram, "light.diffusePower"), diffusePower);
    glUniform1f(glGetUniformLocation(shaderProgram, "light.specularPower"), 1.0f / specularPower);

    // textures
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, textureBrick);
    if (mipmap) {
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
        glGenerateMipmap(GL_TEXTURE_2D);
    } else {
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    }
    glUniform1i(glGetUniformLocation(shaderProgram, "textureBrick"), 0);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, textureNormal);
    if (mipmap) {
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glGenerateMipmap(GL_TEXTURE_2D);
    } else {
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    }
    glUniform1i(glGetUniformLocation(shaderProgram, "textureNormal"), 1);

    // draw
    glBindVertexArray(vertexArrayObject);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_indices);
    glDrawElements(GL_TRIANGLES, (GLsizei) indices.size(), GL_UNSIGNED_INT, NULL);
}

ModelObject::ModelObject(string pathToModel, string const &pathToVertexShader, string const &pathToFragmentShader)
        : modelFilePath(pathToModel), vsFilePath(pathToVertexShader), fsFilePath(pathToFragmentShader) {
    vertexShader = create_shader(GL_VERTEX_SHADER, vsFilePath);
    fragmentShader = create_shader(GL_FRAGMENT_SHADER, fsFilePath);
    shaderProgram = create_program(vertexShader, fragmentShader);

    LoadOBJModel(modelFilePath, vertices, normals, texcoords, indices, tangents, bitangents);

    // init buffers
    createVertexBufferObject(&vbo_vertices, vertices);
    createVertexBufferObject(&vbo_indices, indices);
    createVertexBufferObject(&vbo_normals, normals);
    createVertexBufferObject(&vbo_texcoords, texcoords);
    createVertexBufferObject(&vbo_tangents, tangents);
    createVertexBufferObject(&vbo_bitangents, bitangents);

    // init_VAO
    glGetError();
    glGenVertexArrays(1, &vertexArrayObject);
    glBindVertexArray(vertexArrayObject);

    bindVertexBufferObject(vbo_vertices, "vertex_coords", vertices, 4);
    bindVertexBufferObject(vbo_normals, "normal_coords", normals, 3);
    bindVertexBufferObject(vbo_texcoords, "uv_coords", texcoords, 2);
    bindVertexBufferObject(vbo_tangents, "tangent_coords", tangents, 3);
    bindVertexBufferObject(vbo_bitangents, "bitangent_coords", bitangents, 3);

    // load textures
    loadTexture("Resources/texture.png", &textureBrick);
    loadTexture("Resources/normal.png", &textureNormal);
}

template<typename T>
void ModelObject::createVertexBufferObject(GLuint *vbo, vector<T> const &data) {
    glGenBuffers(1, vbo);
    glBindBuffer(GL_ARRAY_BUFFER, *vbo);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr) (sizeof(data[0]) * data.size()), data.data(), GL_STATIC_DRAW);
}

template<typename T>
void ModelObject::bindVertexBufferObject(GLuint vbo, char const * attributeName, vector<T> const &data, GLint size) {
    GLuint attribute = (GLuint) glGetAttribLocation(shaderProgram, attributeName);
    glEnableVertexAttribArray(attribute);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glVertexAttribPointer(attribute, size, GL_FLOAT, GL_FALSE, (GLsizei) sizeof(data[0]), NULL);
}

ModelObject::~ModelObject() {
    glDeleteProgram(shaderProgram);
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);

    glDeleteVertexArrays(1, &vertexArrayObject);
    glDeleteBuffers(1, &vbo_vertices);
    glDeleteBuffers(1, &vbo_indices);
    glDeleteBuffers(1, &vbo_normals);
}