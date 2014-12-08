cmake_minimum_required(VERSION 2.8)
set(EXECUTABLE_NAME "hw2")
project(${EXECUTABLE_NAME})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Werror -pedantic -Ofast -march=native -mtune=native")

find_package(OpenGL REQUIRED)

include_directories(Utils RenderObject Context Model)

set(SOURCE_FILES
    RenderObject/IRenderObject.hpp
    RenderObject/ModelObject.hpp
    RenderObject/ModelObject.cpp
    Model/Cow.hpp
    Model/Sphere.hpp
    Model/Cylinder.hpp
    Model/Quad.hpp
    Context/Scene.hpp
    Scene/HW2scene.hpp
    Scene/HW2scene.cpp
    Utils/TextureLoader.hpp
    Utils/ObjLoader.hpp
    Utils/shader.cpp
    Utils/shader.hpp
    Utils/tiny_obj_loader.cc
    Utils/tiny_obj_loader.h
    Utils/lodepng.cpp
    Utils/lodepng.h
    Context/OpenGLContext.cpp
    main.cpp
    )

set(RESOURCES Resources/main.vs Resources/main.fs Resources/cow.obj)

add_executable(${EXECUTABLE_NAME} ${SOURCE_FILES} ${SHADERS})

set(LIBS AntTweakBar glfw3 GLEW)

IF (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    set(LIBS ${LIBS} Xext X11 Xrandr Xi Xxf86vm pthread)
ENDIF (${CMAKE_SYSTEM_NAME} MATCHES "Linux")

foreach(res ${RESOURCES})
    add_custom_command(TARGET ${EXECUTABLE_NAME} POST_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${CMAKE_SOURCE_DIR}/${res}
                       $<TARGET_FILE_DIR:${EXECUTABLE_NAME}>/${res})
endforeach()

target_link_libraries(${EXECUTABLE_NAME} ${OPENGL_LIBRARY} ${LIBS})