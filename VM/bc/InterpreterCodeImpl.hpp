#ifndef __INTERPRETERCODEIMPL_HPP_
#define __INTERPRETERCODEIMPL_HPP_

#include "mathvm.h"

namespace mathvm {
    class InterpreterCodeImpl : public Code {

    public:
        InterpreterCodeImpl() : bytecode(new Bytecode) {

        }

        virtual ~InterpreterCodeImpl() {
            delete bytecode;
        }

        Bytecode *getBytecode() const {
            return bytecode;
        }

        virtual Status *execute(vector<Var *> &vars);

        virtual void disassemble(ostream &out, FunctionFilter *filter) override;

    private:
        Bytecode *bytecode;
    };
}

#endif