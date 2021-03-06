#ifndef OBJLOADER_HPP
#define OBJLOADER_HPP

#include <string>
#include <vector>
#include <iostream>
#include <glm/glm.hpp>
#include "tiny_obj_loader.h"

using std::vector;
using glm::vec4;
using glm::vec3;
using glm::vec2;
using std::string;

void LoadOBJModel(string const &filename,
        vector<vec4> &vertices,
        vector<vec3> &normals,
        vector<vec2> &texcoords,
        vector<GLuint> &indices,
        vector<vec3> &tangents,
        vector<vec3> &bitangents) {
    std::vector<tinyobj::shape_t> shapes;
    std::vector<tinyobj::material_t> materials;

    std::string err = tinyobj::LoadObj(shapes, materials, filename.c_str());

    if (!err.empty()) {
        std::cerr << err << std::endl;
        exit(1);
    }

    // vertices
    assert((shapes[0].mesh.positions.size() % 3) == 0);
    for (size_t v = 0; v < shapes[0].mesh.positions.size() / 3; v++) {
        vertices.push_back(vec4(
                shapes[0].mesh.positions[3 * v + 0],
                shapes[0].mesh.positions[3 * v + 1],
                shapes[0].mesh.positions[3 * v + 2], 1.0f));
    }

    // normals
    assert((shapes[0].mesh.normals.size() % 3) == 0);
    for (size_t v = 0; v < shapes[0].mesh.normals.size() / 3; v++) {
        normals.push_back(vec3(
                shapes[0].mesh.normals[3 * v + 0],
                shapes[0].mesh.normals[3 * v + 1],
                shapes[0].mesh.normals[3 * v + 2]));
    }

    // texcoords
    assert((shapes[0].mesh.texcoords.size() % 2) == 0);
    for (size_t v = 0; v < shapes[0].mesh.texcoords.size() / 2; v++) {
        texcoords.push_back(vec2(
                shapes[0].mesh.texcoords[2 * v + 0],
                shapes[0].mesh.texcoords[2 * v + 1]));
    }

    // indices
    indices = shapes[0].mesh.indices;

    // tangents and bitangents
    tangents.assign(vertices.size(), glm::vec3(0, 0, 0));
    bitangents.assign(vertices.size(), glm::vec3(0, 0, 0));
    for (size_t v = 0; v < indices.size(); v += 3) {
        glm::vec4 &v0 = vertices[indices[v + 0]];
        glm::vec4 &v1 = vertices[indices[v + 1]];
        glm::vec4 &v2 = vertices[indices[v + 2]];
        glm::vec2 &uv0 = texcoords[indices[v + 0]];
        glm::vec2 &uv1 = texcoords[indices[v + 1]];
        glm::vec2 &uv2 = texcoords[indices[v + 2]];

        glm::vec3 deltaPos1 = glm::vec3(v1 - v0);
        glm::vec3 deltaPos2 = glm::vec3(v2 - v0);
        glm::vec2 deltaUV1 = uv1 - uv0;
        glm::vec2 deltaUV2 = uv2 - uv0;

        float r = 1.0f / (deltaUV1.x * deltaUV2.y - deltaUV1.y * deltaUV2.x);

        glm::vec3 tangent = (deltaPos1 * deltaUV2.y - deltaPos2 * deltaUV1.y) * r;
        glm::vec3 bitangent = (deltaPos2 * deltaUV1.x - deltaPos1 * deltaUV2.x) * r;

        tangents[indices[v + 0]] += tangent;
        tangents[indices[v + 1]] += tangent;
        tangents[indices[v + 2]] += tangent;

        bitangents[indices[v + 0]] += bitangent;
        bitangents[indices[v + 1]] += bitangent;
        bitangents[indices[v + 2]] += bitangent;
    }

    for (size_t i = 0; i < vertices.size(); i += 1) {
        glm::vec3 &n = normals[i];
        glm::vec3 &t = tangents[i];
        glm::vec3 &b = bitangents[i];
        t = glm::normalize(t - n * glm::dot(n, t));
        if (glm::dot(glm::cross(n, t), b) < 0.0f) {
            t *= -1;
        }
    }
}

#endif