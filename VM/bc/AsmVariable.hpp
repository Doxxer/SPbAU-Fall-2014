#ifndef ASMVARIABLE_HPP
#define ASMVARIABLE_HPP

#include "asmjit.h"

namespace mathvm {
    struct AsmVariable {
        AsmVariable(VarType varType, asmjit::GpVar *var = 0) : gpVar(var), varType(varType) {
        }

        AsmVariable(VarType varType, asmjit::X86XmmVar *var = 0) : xmmVar(var), varType(varType) {
        }

        union {
            asmjit::GpVar *gpVar;
            asmjit::X86XmmVar *xmmVar;
        };

        VarType varType;
    };
}

#endif /* end of include guard: ASMVARIABLE_HPP */
