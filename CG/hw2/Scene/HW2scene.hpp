#ifndef SIMPLET_HPP
#define SIMPLET_HPP

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <memory>
#include <array>
#include "IRenderObject.hpp"
#include "Scene.hpp"
#include "OpenGLContext.hpp"

class HW2scene : public Scene {
public:
    HW2scene(std::shared_ptr<OpenGLContext> openGLContext);

    ~HW2scene();

    virtual void render(double timeFromStart) override;

private:
    enum renderObjectType {
        cow = 0,

        count
    };

    TwBar *antTweakBar;

    bool isWireFrame;
    glm::quat rotation_by_control;
    GLfloat rotation_velocity;
    renderObjectType currentRenderObjectType;

    std::array<std::unique_ptr<IRenderObject>, renderObjectType::count> renderObjects;
};

#endif /* end of include guard: SIMPLET_HPP */