#ifndef JITSCOPE_HPP
#define JITSCOPE_HPP

#include "JitFunction.hpp"

namespace mathvm {
    struct JitScope {
        JitScope *parent;
        JitFunction *function;
        std::map<const AstVar *, uint16_t> vars;

        JitScope(JitFunction *function, JitScope *parent) : function(function), parent(parent) {

        }

        void addVar(const AstVar *var);
    };
}

#endif /* end of include guard: JITSCOPE_HPP */