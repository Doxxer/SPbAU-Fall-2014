cmake_minimum_required(VERSION 2.8.4)
project(temp)

find_package(OpenGL REQUIRED)

set(SOURCE_FILES
    main.cpp
    shader.cpp
    sample_t.cpp)
add_executable(temp ${SOURCE_FILES})

# libraries
target_link_libraries(temp glfw3 glew anttweakbar ${OPENGL_LIBRARY})