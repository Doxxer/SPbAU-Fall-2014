#include <iostream>
#include "parser.h"
#include "BytecodeVisitor.hpp"

using namespace std;

namespace mathvm {
    Status *BytecodeTranslatorImpl::translateBytecode(string const &source, InterpreterCodeImpl **code) {
        Parser parser;
        Status *status = parser.parseProgram(source);
        if (status && status->isError()) {
            return status;
        }

        *code = new InterpreterCodeImpl();
        Context topContext(*code);

        BytecodeVisitor visitor(&topContext);
        visitor.visitFunctionNode(parser.top()->node());

        return Status::Ok();
    }

    Status *BytecodeTranslatorImpl::translate(string const &source, Code **code) {
        return translateBytecode(source, (InterpreterCodeImpl **) code);
    }
}