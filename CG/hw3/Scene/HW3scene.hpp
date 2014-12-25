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

class HW3scene : public Scene {
public:
    HW3scene(std::shared_ptr<OpenGLContext> openGLContext);

    ~HW3scene();

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

    // auto rotation
    bool autoRotation;
    GLfloat rotation_velocity;

    //manual rotation
    glm::quat rotation_by_control;

    // fun with texture
    float uvMultiplier;
    bool mipmap;

    // fun with light
    glm::vec3 lightDirection;
    glm::vec3 lightColor;
    glm::vec3 specularColor;
    float ambientPower;
    float diffusePower;
    float specularPower;

    // rendering object
    renderObjectType currentRenderObjectType;

    std::array<std::unique_ptr<IRenderObject>, renderObjectType::count> renderObjects;
};

#endif /* end of include guard: SIMPLET_HPP */