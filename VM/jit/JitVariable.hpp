#ifndef JITVARIABLE_HPP
#define JITVARIABLE_HPP

#include "asmjit/asmjit.h"
#include "mathvm.h"

namespace mathvm {
    struct JitVariable {
        JitVariable() : gp(NULL), type(VT_INVALID) {
        }

        JitVariable(VarType type, asmjit::X86GpVar *var = 0) : gp(var), type(type) {
        }

        JitVariable(VarType type, asmjit::X86XmmVar *var = 0) : xmm(var), type(type) {
        }

        union {
            asmjit::X86GpVar *gp;
            asmjit::X86XmmVar *xmm;
        };

        VarType type;

        static JitVariable newGpVar(asmjit::X86Compiler &compiler, VarType type, int64_t value);

        static JitVariable newXmmVar(asmjit::X86Compiler &compiler, double value);

        static JitVariable newGpVar(asmjit::X86Compiler &compiler, VarType type);

        static JitVariable newXmmVar(asmjit::X86Compiler &compiler);
    };

    typedef std::vector<JitVariable> varStack;
}

#endif /* end of include guard: JITVARIABLE_HPP */
