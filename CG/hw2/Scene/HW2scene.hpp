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

    // auto rotation
    bool autoRotation;
    GLfloat rotation_velocity;

    //manual rotation
    glm::quat rotation_by_control;

    // fun with texture
    float uvMultiplier;

    // fun with light
    glm::vec3 ambient_;
    glm::vec3 diffuse_;
    glm::vec3 specular_;
    float specular_power_;
    float specular_strength_;
    glm::vec3 light_direction_;

    // rendering object
    renderObjectType currentRenderObjectType;

    std::array<std::unique_ptr<IRenderObject>, renderObjectType::count> renderObjects;
};

#endif /* end of include guard: SIMPLET_HPP */