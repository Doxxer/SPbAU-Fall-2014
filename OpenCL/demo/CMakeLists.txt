cmake_minimum_required(VERSION 2.8.4)
set(EXECUTABLE_NAME "demo")
project(${EXECUTABLE_NAME})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wno-deprecated-declarations")

FIND_LIBRARY(OPENCL_LIBRARIES OpenCL)
set(LIBS ${OPENCL_LIBRARIES}) 

set(SOURCE_FILES
    main.cpp)
add_executable(${EXECUTABLE_NAME} ${SOURCE_FILES})

set(CL_SCRIPTS vector_add.cl)
foreach(script ${CL_SCRIPTS})
    add_custom_command(TARGET ${EXECUTABLE_NAME} POST_BUILD
                       COMMAND ${CMAKE_COMMAND} -E copy
                       ${CMAKE_SOURCE_DIR}/${script}
                       $<TARGET_FILE_DIR:${EXECUTABLE_NAME}>/${script})
endforeach()


target_link_libraries(${EXECUTABLE_NAME} ${LIBS})