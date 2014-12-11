cmake_minimum_required(VERSION 2.8.4)
set(EXECUTABLE_NAME "time")
project(${EXECUTABLE_NAME})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

set(SOURCE_FILES main.cpp)
add_executable(${EXECUTABLE_NAME} ${SOURCE_FILES})