#include <iostream>

#include "mathvm.h"
#include "logger.hpp"

using namespace mathvm;
using namespace std;

int main(int argc, char **argv) {
    if (argc < 2) {
        cerr << "Usage: make run <source_file_name.mvm>" << endl;
        return 1;
    }

    const char *source =
            "int a;"
            "int b;"
            "int c;"
            "a = 1;"
            "b = 2;"
            "c = a + b;";
//    const char* source = loadFile(argv[1]);

    if (source == NULL) {
        cerr << "Cannot read file " << argv[1] << endl;
        return 1;
    }

    Translator *translator = new BytecodeTranslatorImpl();
    Code *code = NULL;
    Status *translateStatus = translator->translate(source, &code);

    if (translateStatus->isError()) {
        uint32_t position = translateStatus->getPosition();
        uint32_t line = 0, offset = 0;
        positionToLineOffset(source, position, line, offset);
        printf("Cannot translate expression: expression at %d,%d; error '%s'\n",
                line, offset, translateStatus->getError().c_str());
    }

    if (code) {
        LOG << "-----------------------------" << endl;
        code->disassemble(cout);
        LOG << "-----------------------------" << endl;
    } else {
        LOG << "CODE IS NULL" << endl;
    }

    delete translateStatus;
    delete translator;
    delete code;
    return 0;
}