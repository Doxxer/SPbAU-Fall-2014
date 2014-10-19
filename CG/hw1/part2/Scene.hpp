#ifndef SCENE_HPP
#define SCENE_HPP

class OpenGLContext;

class Scene {
public:
    Scene(OpenGLContext *openGLContext) : openGLContext(openGLContext) {

    }

    virtual void draw(float timeFromStart) = 0;

    virtual ~Scene() {

    }

protected:
    OpenGLContext *openGLContext;
};

#endif