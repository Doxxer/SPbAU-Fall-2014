#ifndef OBJLOADER_HPP
#define OBJLOADER_HPP

#include <string>
#include <vector>
#include <iostream>
#include <glm/glm.hpp>
#include <GL/glew.h>
#include "tiny_obj_loader.h"

using std::vector;
using glm::vec4;
using glm::vec3;
using glm::vec2;
using std::string;

void LoadOBJModel(string const &filename,
        vector<vec4> *vertices,
        vector<vec3> *normals,
        vector<vec2> *texcoords,
        vector<GLuint> *indices,
        vector<vec3> *tangents,
        vector<vec3> *bitangents);

#endif