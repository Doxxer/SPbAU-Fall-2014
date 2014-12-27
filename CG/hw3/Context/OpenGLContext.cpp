#include "OpenGLContext.hpp"

bool OpenGLContext::leftMouseButtonPressed = false;
double OpenGLContext::mouseXPosition;
double OpenGLContext::mouseYPosition;

void OpenGLContext::init() {
    glfwSetErrorCallback(glfw_error_callback);

    if (!glfwInit()) {
        exit(EXIT_FAILURE);
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_SAMPLES, 4);

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
    glfwSwapInterval(1);

    glfwSetKeyCallback(window, key_callback);
    glfwSetCharCallback(window, (GLFWcharfun) TwEventCharGLFW);
    glfwSetMouseButtonCallback(window, mouse_buttons_callback);
    glfwSetCursorPosCallback(window, mouse_position_callback);
    glfwSetScrollCallback(window, mouse_scroll_callback);

    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    framebuffer_size_callback(window, windowWidth, windowHeight);
}

void OpenGLContext::run() {
    while (!glfwWindowShouldClose(window)) {
        drawScene();
        handleUserInput();
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
}

void OpenGLContext::handleUserInput() {
    static double x, y;
    double mouseSpeed = 0.005;
    if (leftMouseButtonPressed) {
        yaw += (x - mouseXPosition) * mouseSpeed;
        pitch += (y - mouseYPosition) * mouseSpeed;
    }

    keysPressed = 0;
    keysPressed |= ((glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) << 0);
    keysPressed |= ((glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) << 1);
    keysPressed |= ((glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) << 2);
    keysPressed |= ((glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) << 3);

    prevLeftMouseButtonPressed = leftMouseButtonPressed;
    x = mouseXPosition;
    y = mouseYPosition;
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
    }
    scene->render(dt, yaw, pitch, keysPressed);
    TwDraw();
}

void OpenGLContext::setScene(Scene *concreteScene) {
    try {
        scene.reset(concreteScene);
    }
    catch (std::exception const &e) {
        std::cout << e.what() << std::endl;
        exit(EXIT_FAILURE);
    }
}

OpenGLContext::~OpenGLContext() {
    scene.reset();
    glfwDestroyWindow(window);
    glfwTerminate();
}
