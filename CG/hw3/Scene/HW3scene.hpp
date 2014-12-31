#ifndef SIMPLET_HPP
#define SIMPLET_HPP

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <memory>
#include <array>
#include "ModelObject.hpp"
#include "Scene.hpp"
#include "OpenGLContext.hpp"
#include "FramebufferQuad.hpp"

class HW3scene : public Scene {
public:
    HW3scene(std::shared_ptr<OpenGLContext> openGLContext);

    ~HW3scene();

    virtual void render(double time, double yaw, double pitch, char keysPressed) override;

private:
    enum renderObjectType {
        cow = 0,
        quad,
        sphere,
        cylinder,
        countRenderObjectType
    };

    enum postProcessEffect {
        boxBlur = 0,
        gaussBlur,
        sobelFilter,
        countPostProcessEffect
    };

    GLuint framebuffer = 0;

    double rotation_angle = 0;

    TwBar *antTweakBar;

    glm::vec3 position;

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
    postProcessEffect currentPostProcessEffect;

    std::array<std::unique_ptr<ModelObject>, renderObjectType::countRenderObjectType> renderObjects;
    std::array<std::string, postProcessEffect::countPostProcessEffect> postProcessEffects;

    std::unique_ptr<FramebufferQuad> framebufferQuad;
};

#endif /* end of include guard: SIMPLET_HPP */