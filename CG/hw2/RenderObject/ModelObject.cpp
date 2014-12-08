#include "ModelObject.hpp"
#include "shader.hpp"
#include "ObjLoader.hpp"
#include "TextureLoader.hpp"

void ModelObject::render() {
    glUseProgram(shaderProgram);
    glUniformMatrix4fv(glGetUniformLocation(shaderProgram, "mvp"), 1, GL_FALSE, mvp);
    glUniformMatrix4fv(glGetUniformLocation(shaderProgram, "model"), 1, GL_FALSE, model);
    glUniform1f(glGetUniformLocation(shaderProgram, "uv_mult"), uvMultiplier);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, texture);
    glUniform1i(glGetUniformLocation(shaderProgram, "textureSampler"), 0);

    glBindVertexArray(vertexArrayObject);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_indices);
    glDrawElements(GL_TRIANGLES, (GLsizei) indices.size(), GL_UNSIGNED_INT, NULL);
}

ModelObject::ModelObject(string pathToModel, string const &pathToVertexShader, string const &pathToFragmentShader)
        : modelFilePath(pathToModel), vsFilePath(pathToVertexShader), fsFilePath(pathToFragmentShader) {
    vertexShader = create_shader(GL_VERTEX_SHADER, vsFilePath);
    fragmentShader = create_shader(GL_FRAGMENT_SHADER, fsFilePath);
    shaderProgram = create_program(vertexShader, fragmentShader);

    LoadOBJModel(modelFilePath, vertices, normals, texcoords, indices);

    // init buffers
    glGenBuffers(1, &vbo_vertices);
    glBindBuffer(GL_ARRAY_BUFFER, vbo_vertices);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr) (sizeof(vertices[0]) * vertices.size()), vertices.data(), GL_STATIC_DRAW);

    glGenBuffers(1, &vbo_indices);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_indices);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, (GLsizeiptr) (sizeof(indices[0]) * indices.size()), indices.data(), GL_STATIC_DRAW);

    glGenBuffers(1, &vbo_normals);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_normals);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, (GLsizeiptr) (sizeof(normals[0]) * normals.size()), normals.data(), GL_STATIC_DRAW);

    glGenBuffers(1, &vbo_texcoords);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo_texcoords);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, (GLsizeiptr) (sizeof(texcoords[0]) * texcoords.size()), texcoords.data(), GL_STATIC_DRAW);

    // init_VAO
    glGetError();
    glGenVertexArrays(1, &vertexArrayObject);
    glBindVertexArray(vertexArrayObject);

    glBindBuffer(GL_ARRAY_BUFFER, vbo_vertices);
    GLuint vertex_coords_attribute = (GLuint) glGetAttribLocation(shaderProgram, "vertex_coords");
    glVertexAttribPointer(vertex_coords_attribute, 4, GL_FLOAT, GL_FALSE, sizeof(vertices[0]), NULL);
    glEnableVertexAttribArray(vertex_coords_attribute);

    glBindBuffer(GL_ARRAY_BUFFER, vbo_normals);
    GLuint normal_coords_attribute = (GLuint) glGetAttribLocation(shaderProgram, "normal_coords");
    glVertexAttribPointer(normal_coords_attribute, 3, GL_FLOAT, GL_FALSE, sizeof(normals[0]), NULL);
    glEnableVertexAttribArray(normal_coords_attribute);

    glBindBuffer(GL_ARRAY_BUFFER, vbo_texcoords);
    GLuint tex_coords_attribute = (GLuint) glGetAttribLocation(shaderProgram, "tex_coords");
    glVertexAttribPointer(tex_coords_attribute, 2, GL_FLOAT, GL_FALSE, sizeof(texcoords[0]), NULL);
    glEnableVertexAttribArray(tex_coords_attribute);

    // load textures
    auto image = loadTexture("Resources/texture.png");
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, image.width, image.height, 0, GL_RGBA, GL_UNSIGNED_BYTE, image.data.data());
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glGenerateMipmap(GL_TEXTURE_2D);
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
