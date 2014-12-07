#ifndef QUAD_HPP
#define QUAD_HPP

#include "ModelObject.hpp"

struct Quad : ModelObject {
    Quad() : ModelObject("Resources/quad.obj", "Resources/main.vs", "Resources/main.fs") {
    }
};

#endif
