#include "JitScope.hpp"

using namespace mathvm;

void JitScope::addVar(const AstVar *var) {
    vars.insert(std::make_pair(var, vars.size()));
}
