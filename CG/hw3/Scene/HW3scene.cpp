#include <AntTweakBar.h>
#include "Sphere.hpp"
#include "Cylinder.hpp"
#include "Cow.hpp"
#include "Quad.hpp"
#include "HW3scene.hpp"

HW3scene::HW3scene(std::shared_ptr<OpenGLContext> openGLContext)
        : Scene(openGLContext),
          position(0, 0, 15),
          autoRotation(false),
          rotation_velocity(90),
          uvMultiplier(1.0f),
          mipmap(true),
          lightDirection(0, 0, -1),
          lightColor(1, 1, 1),
          specularColor(1, 1, 1),
          ambientPower(0.05),
          diffusePower(1),
          specularPower(1/80.0f),
          currentRenderObjectType(renderObjectType::sphere),
          currentPostProcessEffect(postProcessEffect::boxBlur) {
    TwInit(TW_OPENGL_CORE, NULL);

    antTweakBar = TwNewBar("Parameters");
    TwDefine("Parameters size='350 600' color='70 100 120' valueswidth=200 iconpos=topleft");
    TwAddSeparator(antTweakBar, NULL, "group='Auto rotation'");
    TwAddVarRW(antTweakBar, "Enable", TW_TYPE_BOOLCPP, &autoRotation, " group='Auto rotation' true='ON' false='OFF'");
    TwAddVarRW(antTweakBar, "Velocity", TW_TYPE_FLOAT, &rotation_velocity, " group='Auto rotation' min=0 max=1000 step=10");

    TwAddVarRW(antTweakBar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_control, "label='Object orientation' opened=true");

    TwAddSeparator(antTweakBar, NULL, "group='Texture manipulation'");
    TwAddVarRW(antTweakBar, "Tex-coords multiplier", TW_TYPE_FLOAT, &uvMultiplier,
            " group='Texture manipulation' min=0 max=30 step=0.1 keydecr=E keyincr=R");
    TwAddVarRW(antTweakBar, "MIP filtration", TW_TYPE_BOOLCPP, &mipmap, " group='Texture manipulation' true='ON' false='OFF' key=M");

    TwAddSeparator(antTweakBar, NULL, "group='Light manipulation'");
    TwAddVarRW(antTweakBar, "Light direction", TW_TYPE_DIR3F, &lightDirection, "group='Light manipulation' opened=true");
    TwAddVarRW(antTweakBar, "Light color", TW_TYPE_COLOR3F, &lightColor, "group='Light manipulation'");
    TwAddVarRW(antTweakBar, "Specular", TW_TYPE_COLOR3F, &specularColor, "group='Light manipulation'");
    TwAddVarRW(antTweakBar, "ambient power", TW_TYPE_FLOAT, &ambientPower, " group='Light manipulation' min=0 max=1 step=0.01");
    TwAddVarRW(antTweakBar, "Diffuse power", TW_TYPE_FLOAT, &diffusePower, "group='Light manipulation' min=0 max=1 step=0.01");
    TwAddVarRW(antTweakBar, "Specular power", TW_TYPE_FLOAT, &specularPower, " group='Light manipulation' min=0 max=1 step=0.01");

    TwEnumVal const renderModelsDescriptions[] = {
            {renderObjectType::cow, "cow from hw1"},
            {renderObjectType::quad, "simple big quad"},
            {renderObjectType::sphere, "common sphere"},
            {renderObjectType::cylinder, "cylinder"}
    };
    TwAddVarRW(antTweakBar, "Render object:", TwDefineEnum(NULL, renderModelsDescriptions, renderObjectType::countRenderObjectType), &currentRenderObjectType, "key=Q");

    TwEnumVal const postProcessEffectDescriptions[] = {
            {postProcessEffect::boxBlur, "9 point box blur"},
            {postProcessEffect::gaussBlur, "Gauss blur"},
            {postProcessEffect::sobelFilter, "Sobel edge detection"}
    };
    TwAddVarRW(antTweakBar, "Postprocces effect", TwDefineEnum(NULL, postProcessEffectDescriptions, postProcessEffect::countPostProcessEffect), &currentPostProcessEffect, "key=Z");

    glGenFramebuffers(1, &framebuffer);
    glBindFramebuffer(GL_FRAMEBUFFER, framebuffer);

    GLuint framebufferTexture;
    glGenTextures(1, &framebufferTexture);
    glBindTexture(GL_TEXTURE_2D, framebufferTexture);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, (GLsizei) openGLContext->getWindowWidth(),
            (GLsizei) openGLContext->getWindowHeight(), 0, GL_RGBA, GL_UNSIGNED_BYTE, 0);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

    GLuint renderbufferDepth;
    glGenRenderbuffers(1, &renderbufferDepth);
    glBindRenderbuffer(GL_RENDERBUFFER, renderbufferDepth);
    glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, (GLsizei) openGLContext->getWindowWidth(),
            (GLsizei) openGLContext->getWindowHeight());
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, renderbufferDepth);
    glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, framebufferTexture, 0);

    GLenum drawBuffers[1] = {GL_COLOR_ATTACHMENT0};
    glDrawBuffers(1, drawBuffers);

    renderObjects[renderObjectType::cow].reset(new Cow());
    renderObjects[renderObjectType::quad].reset(new Quad());
    renderObjects[renderObjectType::sphere].reset(new Sphere());
    renderObjects[renderObjectType::cylinder].reset(new Cylinder());
    framebufferQuad.reset(new FramebufferQuad("Resources/frame.obj", "Resources/passthrough.vs", "Resources/boxBlur.fs", framebufferTexture));

    postProcessEffects[postProcessEffect::boxBlur] = "Resources/boxBlur.fs";
    postProcessEffects[postProcessEffect::gaussBlur] = "Resources/simple.fs";
    postProcessEffects[postProcessEffect::sobelFilter] = "Resources/simple.fs";
}

HW3scene::~HW3scene() {
    TwDeleteAllBars();
    TwTerminate();
}

void HW3scene::render(double time, double yaw, double pitch, char keysPressed) {
    if (autoRotation) {
        rotation_angle += time * rotation_velocity;
    } else {
        rotation_angle = 0;
    }

    double speed = 1.0f;

    glm::mat4 proj = glm::perspective(45.0f, openGLContext->getWindowWidth() / openGLContext->getWindowHeight(), 0.1f, 100.0f);

    glm::vec3 direction(cos(pitch) * sin(yaw), sin(pitch), cos(pitch) * cos(yaw));
    glm::vec3 right(sin(yaw - glm::half_pi<double>()), 0.0f, cos(yaw - glm::half_pi<double>()));
    glm::vec3 up = glm::cross(right, direction);
    if (keysPressed & (1 << 0)) {
        position -= right * speed;
    }
    if (keysPressed & (1 << 1)) {
        position += direction * speed;
    }
    if (keysPressed & (1 << 2)) {
        position -= direction * speed;
    }
    if (keysPressed & (1 << 3)) {
        position += right * speed;
    }

    glm::mat4 view = glm::lookAt(position, position + direction, up);

    glm::quat rotation_by_time = glm::quat(glm::vec3(0, glm::radians(rotation_angle), -glm::radians(rotation_angle)));
    glm::mat4 model = glm::mat4_cast(rotation_by_control * rotation_by_time);

    glm::mat4 modelView = view * model;
    glm::mat4 mvp = proj * modelView;
    glm::mat3x3 modelView33 = glm::mat3x3(modelView);

    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
    glDepthFunc(GL_LEQUAL);
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

    renderObjects[currentRenderObjectType]->setMatrices(&model[0][0], &view[0][0], &proj[0][0], &mvp[0][0], &modelView[0][0], &modelView33[0][0]);
    renderObjects[currentRenderObjectType]->setTextureParams(uvMultiplier, mipmap);
    renderObjects[currentRenderObjectType]->setLightParams(
            &lightDirection[0],
            &lightColor[0], &specularColor[0],
            ambientPower, diffusePower, specularPower);

    // render to texture
    glBindFramebuffer(GL_FRAMEBUFFER, framebuffer);
    renderObjects[currentRenderObjectType]->render();

    // render to screen
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    framebufferQuad->setFragmentShader(postProcessEffects[currentPostProcessEffect]);
    framebufferQuad->render();
}