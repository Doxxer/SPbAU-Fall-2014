#include <iostream>
#include "mathvm.h"
#include "JitTranslator.hpp"
#include "JitCode.hpp"
#include "logger.hpp"

using namespace mathvm;
using namespace std;

bool printErrorIfNeeded(string module, char const *source, Status const *status) {
    if (status && status->isError()) {
        uint32_t position = status->getPosition();
        uint32_t line = 0, offset = 0;
        positionToLineOffset(source, position, line, offset);
        printf("Error in %s (expression at %d:%d): error '%s'\n",
                module.c_str(), line, offset, status->getError().c_str());
        return true;
    }
    return false;
}


int main(int argc, char **argv) {
    if (argc < 2) {
        cerr << "Usage: " << argv[0] << " <source_file_name.mvm>" << endl;
        return 1;
    }

    const char *source = loadFile(argv[1]);
    if (source == NULL) {
        cerr << "Cannot read file " << argv[1] << endl;
        return 1;
    }

    JitTranslator visitor;
    JitCode *code = NULL;
    if (printErrorIfNeeded("jit translator", source, visitor.translate(source, (Code **) &code))) {
        exit(100);
    }

    LOG("---------------------");
    std::vector<Var *> vars;
    if (printErrorIfNeeded("jit executor", source, code->execute(vars))) {
        exit(200);
    }

    return 0;
}