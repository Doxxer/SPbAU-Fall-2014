#ifndef SPHERE_HPP
#define SPHERE_HPP

#include "ModelObject.hpp"

struct Sphere : ModelObject {
    Sphere() : ModelObject("Resources/sphere.obj", "Resources/main.vs", "Resources/main.fs") {
    }
};

#endif
