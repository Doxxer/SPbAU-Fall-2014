#ifndef __CONTEXT_HPP_
#define __CONTEXT_HPP_

#include "InterpreterCodeImpl.hpp"

namespace mathvm {
    class Context {

    public:
        explicit Context(InterpreterCodeImpl *code) : code(code) {

        }

    private:
        InterpreterCodeImpl *code;
    };
}
#endif