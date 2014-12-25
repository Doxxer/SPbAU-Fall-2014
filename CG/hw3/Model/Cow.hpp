#ifndef COW_HPP
#define COW_HPP

#include "ModelObject.hpp"

struct Cow : ModelObject {
    Cow() : ModelObject("Resources/cow.obj", "Resources/main.vs", "Resources/main.fs") {
    }
};

#endif
