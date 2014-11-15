#include <iostream>
#include "mathvm.h"

#include "parser.h"
#include "logger.hpp"

#include "ast_printer.hpp"

using namespace mathvm;
using namespace std;

class AstPrinter : public Translator {
public:
    virtual Status *translate(const string &program, Code **) {
        Parser parser;
        Status *status = parser.parseProgram(program);
        if (status && status->isError()) {
            return status;
        }
        PrinterVisitor visitor(cout);
        parser.top()->node()->visit(&visitor);
        return Status::Ok();
    }
};

int main(int argc, char **argv) {
    if (argc < 2) {
        cerr << "Usage: make run <source_file_name.mvm>" << endl;
        return 1;
    }

//    const char *source =
//            "int a; a = 1;"
//            "print ('a+123456789012345=', a+123456789012345,'\n');";
//
    const char *source = loadFile(argv[1]);

    if (source == NULL) {
        cerr << "Cannot read file " << argv[1] << endl;
        return 1;
    }

    Translator *translator = new BytecodeTranslatorImpl();
//    Translator *translator = new AstPrinter();

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
#ifdef DEBUG
        code->disassemble(cout);
#endif
        LOG << "-----------------------------" << endl;
        std::vector<Var *> vars;
        code->execute(vars);
    } else {
        LOG << "CODE IS NULL" << endl;
    }

    delete translateStatus;
    delete translator;
    delete code;

    return 0;
}