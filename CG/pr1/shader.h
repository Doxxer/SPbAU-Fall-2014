#pragma once

#include <vector>
using std::vector;
#include <string>
using std::string;
#include <fstream>
using std::ifstream;
#include <iostream>
using std::cerr;
using std::endl;
#include <chrono>
namespace chrono = std::chrono;
#include <memory>
using std::unique_ptr;

#include <gl/glew.h>

GLuint create_shader( GLenum shader_type, char const * file_name );
GLuint create_program( GLuint vs, GLuint fs );
