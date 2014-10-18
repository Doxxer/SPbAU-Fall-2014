#ifndef OPENGLCONTEXT_HPP
#define OPENGLCONTEXT_HPP

#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <AntTweakBar.h>
#include <memory>
#include <iostream>
#include <string>
#include "Scene.hpp"

using std::string;
using std::chrono::system_clock;
using std::chrono::duration;

class OpenGLContext {
public:
    OpenGLContext(string const &windowTitle, int const windowWidth, int const windowHeight)
            : windowTitle(windowTitle), windowWidth(windowWidth), windowHeight(windowHeight) {
        init();
    }

    void run();


    int const getWindowWidth() const {
        return windowWidth;
    }

    int const getWindowHeight() const {
        return windowHeight;
    }

    void setScene(Scene *concreteScene);

    virtual ~OpenGLContext();

private:
    string windowTitle;
    int const windowWidth;
    int const windowHeight;
    GLFWwindow *window;
    std::unique_ptr<Scene> scene;

    void init();

    void drawScene() {
        static system_clock::time_point const start = system_clock::now();
        scene->draw(duration<float>(system_clock::now() - start).count());
        TwDraw();
    }

    static void mouse_buttons_callback(GLFWwindow *, int button, int action, int mods) {
        TwEventMouseButtonGLFW(button, action);
    }

    static void mouse_position_callback(GLFWwindow *, double x, double y) {
        TwEventMousePosGLFW((int) x, (int) y);
    }

    static void mouse_scroll_callback(GLFWwindow *window, double x, double y) {
        TwEventMouseWheelGLFW((int) y);
    }

    static void glfw_error_callback(int error, const char *description) {
        fprintf(stderr, "GLFW error #%d occurred:\n%s\n", error, description);
    }

    static void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods) {
        if (TwEventKeyGLFW(key, action) || TwEventCharGLFW(key, action)) {
            return;
        }
        if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS) {
            glfwSetWindowShouldClose(window, GL_TRUE);
        }
    }

    static void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
        if (width <= 0 || height <= 0) {
            return;
        }
        glViewport(0, 0, width, height);
        TwWindowSize(width, height);
    }
};

#endif