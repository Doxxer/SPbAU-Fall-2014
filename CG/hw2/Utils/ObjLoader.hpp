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

void LoadOBJModel(string const &filename, vector<vec4> &vertices, vector<vec3> &normals, vector<vec2> &texcoords, vector<GLuint> &indices) {
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
}

#endif