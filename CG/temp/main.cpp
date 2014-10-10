#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <AntTweakBar.h>
#include <memory>
#include <iostream>
#include "sample_t.hpp"

using std::chrono::system_clock;
using std::chrono::duration;

std::unique_ptr<sample_t> g_sample;

void mouse_buttons_callback(GLFWwindow *, int button, int action, int mods) {
    TwEventMouseButtonGLFW(button, action);
}

void mouse_position_callback(GLFWwindow *, double x, double y) {
    TwEventMousePosGLFW((int) x, (int) y);
}

void mouse_scroll_callback(GLFWwindow *window, double x, double y) {
    TwEventMouseWheelGLFW((int) y);
}

void glfw_error_callback(int error, const char *description) {
    fprintf(stderr, "GLFW error #%d occurred:\n%s\n", error, description);
}

void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods) {
    if (TwEventKeyGLFW(key, action) || TwEventCharGLFW(key, action)) {
        return;
    }

    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, GL_TRUE);
}

void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
    if (width <= 0 || height <= 0)
        return;

    glViewport(0, 0, width, height);
    TwWindowSize(width, height);
}

void draw_func() {
    static system_clock::time_point const start = system_clock::now();

    g_sample->draw_frame(duration<float>(system_clock::now() - start).count());

    TwDraw();
}

int main(void) {
    glfwSetErrorCallback(glfw_error_callback);

    // Initialise GLFW
    if (!glfwInit()) {
        exit(EXIT_FAILURE);
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Open a window and create its OpenGL context
    GLFWwindow *window;
    window = glfwCreateWindow(640, 480, "test working with GLFW", NULL, NULL);
    if (!window) {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }
    glfwMakeContextCurrent(window);

    // Initialize GLEW
    glewExperimental = GL_TRUE;
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
        exit(EXIT_FAILURE);
    }

    try {
        g_sample.reset(new sample_t());
    }
    catch (std::exception const &except) {
        std::cout << except.what() << std::endl;
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


    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    glEnable(GL_DEPTH_TEST);
    framebuffer_size_callback(window, 640, 480);

    while (!glfwWindowShouldClose(window)) {
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        draw_func();
        glfwSwapBuffers(window);

        glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();
    g_sample.reset();

    return 0;
}
