#include "JitVariable.hpp"

using namespace mathvm;

JitVariable JitVariable::newGpVar(asmjit::X86Compiler &compiler, VarType type) {
    return JitVariable(type, new asmjit::X86GpVar(compiler));
}

JitVariable JitVariable::newXmmVar(asmjit::X86Compiler &compiler) {
    return JitVariable(VT_DOUBLE, new asmjit::X86XmmVar(compiler));
}

JitVariable JitVariable::newGpVar(asmjit::X86Compiler &compiler, VarType type, int64_t value) {
    JitVariable jitVariable = newGpVar(compiler, type);

    compiler.mov(*jitVariable.gp, asmjit::imm(value));
    return jitVariable;
}

JitVariable JitVariable::newXmmVar(asmjit::X86Compiler &compiler, double value) {
    JitVariable jitVariable = newXmmVar(compiler);

    asmjit::X86GpVar temp = compiler.newGpVar();
    uint64_t *valueAddress = (uint64_t *) (&value);
    compiler.mov(temp, *valueAddress);
    compiler.movq(*jitVariable.xmm, temp.m());
    compiler.unuse(temp);
    return jitVariable;
}
