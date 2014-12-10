#ifndef TEXTURELOADER_HPP
#define TEXTURELOADER_HPP

#include <string>
#include <GL/glew.h>
#include <iostream>
#include <vector>
#include "lodepng.h"

void loadTexture(std::string path, GLuint *textureID) {
    vector<unsigned char> data;
    unsigned int width, height;
    unsigned int error = lodepng::decode(data, width, height, path);
    if (error != 0) {
        std::cout << "error loading texture " << path << ": " << error << ": " << lodepng_error_text(error) << std::endl;
        exit(1);
    }

    glGenTextures(1, textureID);
    glBindTexture(GL_TEXTURE_2D, *textureID);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data.data());
}

#endif /* end of include guard: TEXTURELOADER_HPP */
