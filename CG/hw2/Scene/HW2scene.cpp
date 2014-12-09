#include <AntTweakBar.h>
#include "Sphere.hpp"
#include "Cylinder.hpp"
#include "Cow.hpp"
#include "Quad.hpp"
#include "HW2scene.hpp"

HW2scene::HW2scene(std::shared_ptr<OpenGLContext> openGLContext)
        : Scene(openGLContext),
          isWireFrame(false),
          autoRotation(false),
          rotation_velocity(90),
          uvMultiplier(1.0f),
          ambient_(0.1, 0.1, 0.1),
          specular_(1, 0, 0),
          specular_power_(30),
          specular_strength_(5),
          light_position_(0, 0, 10),
          currentRenderObjectType(renderObjectType::cow) {
    TwInit(TW_OPENGL_CORE, NULL);

    antTweakBar = TwNewBar("Parameters");
    TwDefine("Parameters size='400 400' color='70 100 120' valueswidth=220 iconpos=topleft");
    TwAddVarRW(antTweakBar, "Wireframe mode", TW_TYPE_BOOLCPP, &isWireFrame, "true='ON' false='OFF' key=W");
    TwAddSeparator(antTweakBar, NULL, "group='Auto rotation'");
    TwAddVarRW(antTweakBar, "Enable", TW_TYPE_BOOLCPP, &autoRotation, " group='Auto rotation' true='ON' false='OFF' key=A");
    TwAddVarRW(antTweakBar, "Velocity", TW_TYPE_FLOAT, &rotation_velocity, " group='Auto rotation' min=0 max=1000 step=10");

    TwAddVarRW(antTweakBar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_control, "label='Object orientation' opened=true");

    TwAddSeparator(antTweakBar, NULL, "group='Texture manipulation'");
    TwAddVarRW(antTweakBar, "Tex-coords multiplier", TW_TYPE_FLOAT, &uvMultiplier, " group='Texture manipulation' min=0 max=30 step=0.1");

    TwAddVarRW(antTweakBar, "LightPosition", TW_TYPE_DIR3F, &light_position_, "opened=true");

    TwEnumVal const values[] = {
            {renderObjectType::cow, "cow from hw1"},
            {renderObjectType::quad, "simple big quad"},
            {renderObjectType::sphere, "common sphere"},
            {renderObjectType::cylinder, "cylinder"}
    };
    TwAddVarRW(antTweakBar, "Render object:", TwDefineEnum(NULL, values, renderObjectType::count), &currentRenderObjectType, "key=Q");

    renderObjects[renderObjectType::cow].reset(new Cow());
    renderObjects[renderObjectType::quad].reset(new Quad());
    renderObjects[renderObjectType::sphere].reset(new Sphere());
    renderObjects[renderObjectType::cylinder].reset(new Cylinder());
}

HW2scene::~HW2scene() {
    TwDeleteAllBars();
    TwTerminate();
}

void HW2scene::render(double time) {
    if (autoRotation) {
        rotation_angle += time * rotation_velocity;
    } else {
        rotation_angle = 0;
    }

    glm::mat4 proj = glm::perspective(45.0f, openGLContext->getWindowWidth() / openGLContext->getWindowHeight(), 0.1f, 100.0f);
    glm::mat4 view = glm::lookAt(glm::vec3(0, 0, 15), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0));
    glm::quat rotation_by_time = glm::quat(glm::vec3(0, glm::radians(rotation_angle), -glm::radians(rotation_angle)));
    glm::mat4 model = glm::mat4_cast(rotation_by_control * rotation_by_time);
    glm::mat4 mvp = proj * view * model;

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glClearColor(0.2f, 0.2f, 0.2f, 1);
    glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    if (isWireFrame)
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    else
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

    renderObjects[currentRenderObjectType]->setMatrices(&model[0][0], &view[0][0], &proj[0][0], &mvp[0][0]);
    renderObjects[currentRenderObjectType]->setTextureParams(uvMultiplier);

    renderObjects[currentRenderObjectType]->setLightParams(
            &light_position_[0], &ambient_[0], &specular_[0],
            specular_strength_, specular_power_);
    renderObjects[currentRenderObjectType]->render();

    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}