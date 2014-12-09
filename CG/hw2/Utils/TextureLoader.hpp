#ifndef TEXTURELOADER_HPP
#define TEXTURELOADER_HPP

#include <string>
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
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glGenerateMipmap(GL_TEXTURE_2D);
}

#endif /* end of include guard: TEXTURELOADER_HPP */
