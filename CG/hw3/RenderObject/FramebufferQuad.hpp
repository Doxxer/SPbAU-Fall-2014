#ifndef FRAMEBUFFERQUAD_HPP
#define FRAMEBUFFERQUAD_HPP

#include <shader.hpp>
#include "ObjLoader.hpp"
#include "IRenderObject.hpp"

class FramebufferQuad : public IRenderObject {
private:
    GLuint frameTexture;
    GLuint vertexShader, fragmentShader, shaderProgram;
    GLuint vbo_vertices, vbo_indices;
    GLuint vertexArrayObject;

    std::vector<glm::vec4> vertices;
    std::vector<GLuint> indices;

    std::string fragmentShaderPath;

    int blurSize;
    float width, height;
public:

    FramebufferQuad(string pathToModel, string const &pathToVertexShader, string const &pathToFragmentShader, GLuint frameTexture)
            : frameTexture(frameTexture), fragmentShaderPath(pathToFragmentShader) {
        vertexShader = create_shader(GL_VERTEX_SHADER, pathToVertexShader);
        fragmentShader = create_shader(GL_FRAGMENT_SHADER, pathToFragmentShader);
        shaderProgram = create_program(vertexShader, fragmentShader);

        LoadOBJModel(pathToModel, &vertices, NULL, NULL, &indices, NULL, NULL);

        // init buffers
        createVertexBufferObject(&vbo_vertices, vertices);
        createVertexBufferObject(&vbo_indices, indices);

        glGenVertexArrays(1, &vertexArrayObject);
        glBindVertexArray(vertexArrayObject);

        bindVertexBufferObject(vbo_vertices, "vertex_coords", vertices, 4);
    }

    virtual void render() override {
        glClearColor(0.2f, 0.2f, 0.2f, 1);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glUseProgram(shaderProgram);

        glUniform1i(glGetUniformLocation(shaderProgram, "blurSize"), blurSize);
        glUniform1f(glGetUniformLocation(shaderProgram, "pixelSizeH"), 1.0f / width);
        glUniform1f(glGetUniformLocation(shaderProgram, "pixelSizeV"), 1.0f / height);

        // textures
        glActiveTexture(GL_TEXTURE0);
        glBindTexture(GL_TEXTURE_2D, frameTexture);
        glUniform1i(glGetUniformLocation(shaderProgram, "frameTexture"), 0);

        glBindVertexArray(vertexArrayObject);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_indices);
        glDrawElements(GL_TRIANGLES, (GLsizei) indices.size(), GL_UNSIGNED_INT, NULL);
    }

    void setPostProcessingParams(float width, float height, int blurSize) {
        this->width = width;
        this->height = height;
        this->blurSize = blurSize;
    }

    void setFragmentShader(std::string shader) {
        if (fragmentShaderPath == shader) {
            return;
        }

        fragmentShaderPath = shader;
        fragmentShader = create_shader(GL_FRAGMENT_SHADER, fragmentShaderPath);
        shaderProgram = create_program(vertexShader, fragmentShader);
    }

private:
    template<typename T>
    void createVertexBufferObject(GLuint *vbo, std::vector<T> const &data) {
        glGenBuffers(1, vbo);
        glBindBuffer(GL_ARRAY_BUFFER, *vbo);
        glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr) (sizeof(data[0]) * data.size()), data.data(), GL_STATIC_DRAW);
    }

    template<typename T>
    void bindVertexBufferObject(GLuint vbo, char const *attributeName, std::vector<T> const &data, GLint size) {
        GLuint attribute = (GLuint) glGetAttribLocation(shaderProgram, attributeName);
        glEnableVertexAttribArray(attribute);
        glBindBuffer(GL_ARRAY_BUFFER, vbo);
        glVertexAttribPointer(attribute, size, GL_FLOAT, GL_FALSE, (GLsizei) sizeof(data[0]), NULL);
    }
};

#endif /* end of include guard: FRAMEBUFFERQUAD_HPP */