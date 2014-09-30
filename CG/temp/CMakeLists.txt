cmake_minimum_required(VERSION 2.8.4)
project(temp)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

find_package(OpenGL REQUIRED)

set(SOURCE_FILES
    main.cpp
    shader.cpp
    sample_t.cpp)
add_executable(temp ${SOURCE_FILES})

# libraries
target_link_libraries(temp glfw3 glew anttweakbar ${OPENGL_LIBRARY})