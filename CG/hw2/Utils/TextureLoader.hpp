#ifndef TEXTURELOADER_HPP
#define TEXTURELOADER_HPP

#include <string>
#include "lodepng.h"

struct ImageDescription {
    vector<unsigned char> data;
    unsigned int width;
    unsigned int height;
};

ImageDescription loadTexture(std::string path) {
    vector<unsigned char> image;
    unsigned int width, height;
    unsigned int error = lodepng::decode(image, width, height, path);
    if (error != 0) {
        std::cout << "error loading texture " << path << ": " << error << ": " << lodepng_error_text(error) << std::endl;
        exit(1);
    }

    return {image, width, height};
}

#endif /* end of include guard: TEXTURELOADER_HPP */
