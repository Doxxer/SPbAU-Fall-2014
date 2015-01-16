#include "JitCode.hpp"

using namespace mathvm;

Status *JitCode::execute(std::vector<Var *> &vars) {
    void (*main)() = asmjit_cast<void (*)()>(functions[0]);
    main();
    return Status::Ok();
}

JitFunction *JitCode::functionByName(std::string const &name) const {
    return dynamic_cast<JitFunction *>(Code::functionByName(name));
}

void JitCode::setCompiledCode(uint16_t id, void *code) {
    if (code == NULL) {
        throw std::logic_error(std::string("asmjit compilation error"));
    }
    functions.at(id) = code;
}

uint16_t JitCode::addFunction(JitFunction *function) {
    uint16_t id = Code::addFunction(function);
    functions.push_back(NULL);
    return id;
}
