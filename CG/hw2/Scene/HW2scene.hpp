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

    virtual void render(double time) override;

private:
    enum renderObjectType {
        cow = 0,
        quad,
        sphere,
        cylinder,
        count
    };

    double rotation_angle = 0;

    TwBar *antTweakBar;

    bool isWireFrame;
    bool autoRotation;
    GLfloat rotation_velocity;
    glm::quat rotation_by_control;
    float uvMultiplier;
    renderObjectType currentRenderObjectType;

    std::array<std::unique_ptr<IRenderObject>, renderObjectType::count> renderObjects;
};

#endif /* end of include guard: SIMPLET_HPP */