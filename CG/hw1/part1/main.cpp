#include <string>
#include "OpenGLContext.hpp"
#include "HW1scene.hpp"

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s [1,2,3,4]\n", argv[0]);
        return 1;
    }

    std::string mode = std::string(argv[1]);

    OpenGLContext *context = new OpenGLContext("turaev.timur hw1", 800, 600);
    context->setScene(new HW1scene(context, mode));
    context->run();
    delete context;
    return 0;
}
