#include <string>
#include <memory>
#include "OpenGLContext.hpp"
#include "HW2scene.hpp"

int main(int argc, char **argv) {
    std::shared_ptr<OpenGLContext> context(new OpenGLContext("turaev.timur hw2", 1400, 700));
    context->setScene(new HW2scene(context));
    context->run();
    return 0;
}
