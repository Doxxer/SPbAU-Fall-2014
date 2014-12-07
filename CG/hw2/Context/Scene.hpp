#ifndef SCENE_HPP
#define SCENE_HPP

#include <memory>

class OpenGLContext;

class Scene {
public:
    Scene(std::shared_ptr<OpenGLContext> openGLContext) : openGLContext(openGLContext) {

    }

    virtual void draw(double timeFromStart) = 0;

    virtual ~Scene() {
    }

protected:
    std::shared_ptr<OpenGLContext> openGLContext;
};

#endif