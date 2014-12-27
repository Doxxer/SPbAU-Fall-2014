#ifndef SCENE_HPP
#define SCENE_HPP

#include <memory>

class OpenGLContext;

class Scene {
public:
    Scene(std::shared_ptr<OpenGLContext> openGLContext) : openGLContext(openGLContext) {

    }

    virtual void render(double timeFromStart, double yaw, double pitch, char keysPressed) = 0;

    virtual ~Scene() {
    }

protected:
    std::shared_ptr<OpenGLContext> openGLContext;
};

#endif