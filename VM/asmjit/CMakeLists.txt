cmake_minimum_required(VERSION 2.8.4)
project(asmjit)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

file(GLOB ASMJIT asmjit/base/*.cpp asmjit/x86/*.cpp)

set(SOURCE_FILES
    main.cpp
    ${ASMJIT})
add_executable(asmjit ${SOURCE_FILES})