#include "OpenGLContext.hpp"

void OpenGLContext::init() {
    glfwSetErrorCallback(glfw_error_callback);

    // Initialise GLFW
    if (!glfwInit()) {
        exit(EXIT_FAILURE);
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_SAMPLES, 4);

    // Open a window and create its OpenGL context
    window = glfwCreateWindow(windowWidth, windowHeight, windowTitle.c_str(), NULL, NULL);
    if (!window) {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }
    glfwMakeContextCurrent(window);

    glewExperimental = GL_TRUE;
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
        exit(EXIT_FAILURE);
    }

    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);

    glfwSetKeyCallback(window, key_callback);
    glfwSetCharCallback(window, (GLFWcharfun) TwEventCharGLFW);

    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    glfwSetMouseButtonCallback(window, mouse_buttons_callback);
    glfwSetCursorPosCallback(window, mouse_position_callback);
    glfwSetScrollCallback(window, mouse_scroll_callback);

    framebuffer_size_callback(window, windowWidth, windowHeight);
}

void OpenGLContext::run() {
    while (!glfwWindowShouldClose(window)) {
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        drawScene();
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
}

void OpenGLContext::drawScene() {
    static double time = glfwGetTime();
    double dt = glfwGetTime() - time;
    time += dt;
    framesCounter++;
    frameTime += dt;
    if (frameTime > 0.5) {
        double FPS = framesCounter / frameTime;
        frameTime = framesCounter = 0;

        char newTitle[128];
        sprintf(newTitle, "%s (%.1f FPS)", windowTitle.c_str(), FPS);
        glfwSetWindowTitle(window, newTitle);

        std::cout << FPS << std::endl;
    }
    scene->draw(time);
    TwDraw();
}

void OpenGLContext::setScene(Scene *concreteScene) {
    try {
        scene.reset(concreteScene);
    }
    catch (std::exception const &except) {
        std::cout << except.what() << std::endl;
        exit(EXIT_FAILURE);
    }
}

OpenGLContext::~OpenGLContext() {
    glfwDestroyWindow(window);
    glfwTerminate();
    scene.reset();
}
