#include <iostream>
#include "mathvm.h"

#include "logger.hpp"

using namespace mathvm;
using namespace std;

void printErrorIfNeeded(string module, char const *source, Status const *translateStatus) {
    if (translateStatus->isError()) {
        uint32_t position = translateStatus->getPosition();
        uint32_t line = 0, offset = 0;
        positionToLineOffset(source, position, line, offset);
        printf("Error in %s: expression at %d,%d; error '%s'\n",
                module.c_str(), line, offset, translateStatus->getError().c_str());
    }
}

int main(int argc, char **argv) {
    if (argc < 2) {
        cerr << "Usage: make run <source_file_name.mvm>" << endl;
        return 1;
    }

    const char *source = loadFile(argv[1]);
    if (source == NULL) {
        cerr << "Cannot read file " << argv[1] << endl;
        return 1;
    }

    Translator *translator = new BytecodeTranslatorImpl();
    Code *code = NULL;
    Status *translateStatus = translator->translate(source, &code);
    printErrorIfNeeded("translator to bytecode", source, translateStatus);

    if (code) {
        LOG << "-----------------------------" << endl;
#ifdef DEBUG
        code->disassemble(cout);
#endif
        LOG << "------------RUN:-----------------" << endl;
        std::vector<Var *> vars;
        Status *interpreterStatus = code->execute(vars);
        printErrorIfNeeded("simple interpretator", source, interpreterStatus);
    } else {
        LOG << "CODE IS NULL" << endl;
    }

    delete translateStatus;
    delete translator;
    delete code;

    return 0;
}