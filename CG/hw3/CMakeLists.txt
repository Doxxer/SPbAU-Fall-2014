cmake_minimum_required(VERSION 2.8)
set(EXECUTABLE_NAME "hw3")
project(${EXECUTABLE_NAME})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Werror -pedantic -Ofast -march=native -mtune=native")

find_package(OpenGL REQUIRED)

include_directories(Utils RenderObject Context Model)

file(GLOB SOURCE_FILES
    Context/*.*
    Model/*.*
    RenderObject/*.*
    Scene/*.*
    Utils/*.*
    main.cpp)

set(RESOURCES Resources/main.vs Resources/main.fs
    Resources/passthrough.vs Resources/boxBlur.fs Resources/simple.fs
    Resources/cow.obj Resources/quad.obj Resources/sphere.obj Resources/cylinder.obj Resources/frame.obj
    Resources/texture.png Resources/normal.png)

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