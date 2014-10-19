cmake_minimum_required(VERSION 2.8)
set(EXECUTABLE_NAME "hw1_part2")
project(${EXECUTABLE_NAME})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

find_package(OpenGL REQUIRED)

set(SOURCE_FILES
    main.cpp
    shader.cpp
    HW1scene.cpp
    OpenGLContext.cpp
    tiny_obj_loader.cc)
set(RESOURCES cow.vs cow.fs wireframe.fs wireframe.vs cow_color.fs cow_color.vs model.obj)

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