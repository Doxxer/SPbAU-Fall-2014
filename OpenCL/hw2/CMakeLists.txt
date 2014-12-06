cmake_minimum_required(VERSION 2.8.4)
set(EXECUTABLE_NAME "hw2")
project(${EXECUTABLE_NAME})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wno-deprecated-declarations")

FIND_LIBRARY(OPENCL_LIBRARIES OpenCL)
set(LIBS ${OPENCL_LIBRARIES}) 

set(SOURCE_FILES
    main.cpp)
add_executable(${EXECUTABLE_NAME} ${SOURCE_FILES})

set(RESOURCES scan.cl input.txt)
foreach(resource ${RESOURCES})
    add_custom_command(TARGET ${EXECUTABLE_NAME} POST_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${CMAKE_SOURCE_DIR}/${resource}
                       $<TARGET_FILE_DIR:${EXECUTABLE_NAME}>/${resource})
endforeach()


target_link_libraries(${EXECUTABLE_NAME} ${LIBS})