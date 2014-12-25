#ifndef CYLINDER_HPP
#define CYLINDER_HPP

#include "ModelObject.hpp"

struct Cylinder : ModelObject {
    Cylinder() : ModelObject("Resources/cylinder.obj", "Resources/main.vs", "Resources/main.fs") {
    }
};

#endif
