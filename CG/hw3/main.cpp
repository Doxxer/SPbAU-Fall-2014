#include <string>
#include <memory>
#include "OpenGLContext.hpp"
#include "Scene/HW3scene.hpp"

int main(int argc, char **argv) {
    std::shared_ptr<OpenGLContext> context(new OpenGLContext("turaev.timur hw3", 1400, 700));
    context->setScene(new HW3scene(context));
    context->run();
    return 0;
}
