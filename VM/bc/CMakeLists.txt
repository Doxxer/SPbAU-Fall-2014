cmake_minimum_required(VERSION 3.0.2)
project(bc)

set(VM_BASE ~/Documents/SvnRepos/mathvm/vm)
set(VM_ASMJIT ~/Documents/SvnRepos/mathvm/libs)

include_directories("~/Documents/SvnRepos/mathvm/include")
include_directories("~/Documents/SvnRepos/mathvm/vm")
include_directories(${VM_ASMJIT})

set(CMAKE_CXX_COMPILER_ID clang)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -DDEBUG")

set(ASMJIT
    ${VM_ASMJIT}/asmjit/x86/x86cpuinfo.cpp
    ${VM_ASMJIT}/asmjit/x86/x86operand_regs.cpp
    ${VM_ASMJIT}/asmjit/x86/x86assembler.cpp
    ${VM_ASMJIT}/asmjit/x86/x86operand.cpp
    ${VM_ASMJIT}/asmjit/x86/x86scheduler.cpp
    ${VM_ASMJIT}/asmjit/x86/x86context.cpp
    ${VM_ASMJIT}/asmjit/x86/x86inst.cpp
    ${VM_ASMJIT}/asmjit/x86/x86compiler.cpp
    ${VM_ASMJIT}/asmjit/base/context.cpp
    ${VM_ASMJIT}/asmjit/base/containers.cpp
    ${VM_ASMJIT}/asmjit/base/cpuinfo.cpp
    ${VM_ASMJIT}/asmjit/base/error.cpp
    ${VM_ASMJIT}/asmjit/base/assembler.cpp
    ${VM_ASMJIT}/asmjit/base/runtime.cpp
    ${VM_ASMJIT}/asmjit/base/cputicks.cpp
    ${VM_ASMJIT}/asmjit/base/vmem.cpp
    ${VM_ASMJIT}/asmjit/base/operand.cpp
    ${VM_ASMJIT}/asmjit/base/zone.cpp
    ${VM_ASMJIT}/asmjit/base/compiler.cpp
    ${VM_ASMJIT}/asmjit/base/codegen.cpp
    ${VM_ASMJIT}/asmjit/base/globals.cpp
    ${VM_ASMJIT}/asmjit/base/constpool.cpp
    ${VM_ASMJIT}/asmjit/base/string.cpp
    ${VM_ASMJIT}/asmjit/base/logger.cpp
    ${VM_ASMJIT}/asmjit/base/intutil.cpp)

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
    NativeFunctionGenerator.cpp
    BytecodeVisitor.cpp)

add_executable(bc ${SOURCE_FILES} ${BASE_FILES} ${ASMJIT})