#include <string>
#include "OpenGLContext.hpp"
#include "HW1scene.hpp"

int main(int argc, char **argv) {
    OpenGLContext *context = new OpenGLContext("turaev.timur hw1", 800, 600);
    context->setScene(new HW1scene(context));
    context->run();
    delete context;
    return 0;
}
