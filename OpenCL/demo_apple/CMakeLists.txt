cmake_minimum_required(VERSION 2.8.4)
project(temp)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

FIND_LIBRARY(OPENCL_LIBRARIES OpenCL)
set(LIBS ${OPENCL_LIBRARIES}) 

set(SOURCE_FILES
    hello.cpp)
add_executable(temp ${SOURCE_FILES})

target_link_libraries(temp ${LIBS})