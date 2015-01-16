#ifndef JITFUNCTION_HPP
#define JITFUNCTION_HPP

#include "mathvm.h"
#include "ast.h"
#include "asmjit/asmjit.h"
#include "JitVariable.hpp"

namespace mathvm {
    class JitFunction : public TranslatedFunction {
    public:
        JitFunction(AstFunction *astFunction) : TranslatedFunction(astFunction), compiler(&runtime) {
            asmjit::FileLogger *logger = new asmjit::FileLogger();
            compiler.setLogger(logger);
        }

        virtual void disassemble(ostream &out) const override {
        }

        asmjit::X86Compiler &getCompiler() {
            return compiler;
        }

        varStack *getStack() {
            return &stack;
        }

    private:
        asmjit::JitRuntime runtime;
        asmjit::X86Compiler compiler;
        varStack stack;
    };
}


#endif /* end of include guard: JITFUNCTION_HPP */
