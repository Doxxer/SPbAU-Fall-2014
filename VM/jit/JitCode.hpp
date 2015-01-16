#ifndef JITCODE_HPP
#define JITCODE_HPP

#include "mathvm.h"
#include "JitFunction.hpp"

namespace mathvm {
    class JitCode : public Code {
    private:
        std::vector<void *> functions;
    public:
        virtual Status *execute(vector<Var *> &vars) override;

        uint16_t addFunction(JitFunction *function);

        JitFunction *functionByName(const string &name) const;

        void setCompiledCode(uint16_t id, void *code);
    };
}

#endif /* end of include guard: JITCODE_HPP */
