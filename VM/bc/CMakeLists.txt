cmake_minimum_required(VERSION 3.0.2)
project(bc)

include_directories("~/Documents/SvnRepos/mathvm/include")
include_directories("~/Documents/SvnRepos/mathvm/vm")

set(CMAKE_CXX_COMPILER_ID clang)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -DDEBUG")

set(VM_BASE ~/Documents/SvnRepos/mathvm/vm)

set(BASE_FILES
    ${VM_BASE}/ast.cpp
    ${VM_BASE}/interpreter.cpp
    ${VM_BASE}/mathvm.cpp
    ${VM_BASE}/parser.cpp
    ${VM_BASE}/scanner.cpp
    ${VM_BASE}/utils.cpp)

set(SOURCE_FILES
    main_interpreter.cpp
    Context.cpp
    SimpleInterpreter.cpp
    BytecodeVisitor.cpp)

add_executable(bc ${SOURCE_FILES} ${BASE_FILES})