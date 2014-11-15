#include "InterpreterCodeImpl.hpp"

namespace mathvm {
    void InterpreterCodeImpl::disassemble(ostream &out, FunctionFilter *filter) {
        Code::disassemble(out, filter);
        bytecode->dump(out);
    }

    Status *InterpreterCodeImpl::execute(vector<Var *> &vars) {
        return Status::Ok();
    }
}
