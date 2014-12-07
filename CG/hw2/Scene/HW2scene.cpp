#include <AntTweakBar.h>
#include <Cow.hpp>
#include "HW2scene.hpp"

HW2scene::HW2scene(std::shared_ptr<OpenGLContext> openGLContext)
        : Scene(openGLContext), isWireFrame(false), rotation_velocity(90), currentRenderObjectType(renderObjectType::cow) {
    TwInit(TW_OPENGL_CORE, NULL);

    antTweakBar = TwNewBar("Parameters");
    TwDefine("Parameters size='500 200' color='70 100 120' valueswidth=220 iconpos=topleft");
    TwAddVarRW(antTweakBar, "Wireframe mode", TW_TYPE_BOOLCPP, &isWireFrame, "true='ON' false='OFF' key=W");
    TwAddVarRW(antTweakBar, "ObjRotation", TW_TYPE_QUAT4F, &rotation_by_control, "label='Object orientation' opened=true");
    TwAddVarRW(antTweakBar, "RotationVelocity", TW_TYPE_FLOAT, &rotation_velocity, "min=0 max=360 step=10");

    TwEnumVal const values[] = {
            {renderObjectType::cow, "Cow from hw1"}
    };
    TwAddVarRW(antTweakBar, "Render object:", TwDefineEnum(NULL, values, renderObjectType::count), &currentRenderObjectType, NULL);

    renderObjects[renderObjectType::cow].reset(new Cow());
}

HW2scene::~HW2scene() {
    TwDeleteAllBars();
    TwTerminate();
}

void HW2scene::render(double timeFromStart) {
    double rotation_angle = timeFromStart * rotation_velocity;

    glm::mat4 proj = glm::perspective(45.0f, openGLContext->getWindowWidth() / openGLContext->getWindowHeight(), 0.1f, 100.0f);
    glm::mat4 view = glm::lookAt(glm::vec3(0, 0, 15), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0));
    glm::quat rotation_by_time = glm::quat(glm::vec3(0, glm::radians(rotation_angle), 0));
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
    renderObjects[currentRenderObjectType]->render();

    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}