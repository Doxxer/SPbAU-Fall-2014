#include <iostream>
#include <dlfcn.h>

#include "asmjit/asmjit.h"

using namespace asmjit;
using namespace std;

void setXmmVariable(X86Compiler &c, XmmVar &v, double d) {
    X86GpVar temp = c.newGpVar();
    c.mov(temp, *(reinterpret_cast<uint64_t *>(&d)));
    c.movq(v, temp.m());
    c.unuse(temp);
}

int main(int argc, char *argv[]) {
    void *nativeAddress = dlsym(RTLD_DEFAULT, "sqrt");
    if (!nativeAddress) {
        cout << "error: native address not found";
        return 1;
    }
    JitRuntime runtime;
    FileLogger logger(stdout);
    X86Compiler c(&runtime);
//    c.setLogger(&logger);

    // main function - 0 input params and return DOUBLE (cuz sqrt return double)
    c.addFunc(kFuncConvHost, FuncBuilder1<double, double>());
    X86XmmVar input(c, kX86VarTypeXmmSd, "input");
    X86XmmVar retVariable(c, kX86VarTypeXmmSd, "retVariable");
    c.setArg(0, input);

    X86GpVar fun(c);
    c.mov(fun, imm_ptr(nativeAddress));
    X86CallNode *call = c.call(fun, kFuncConvHost, FuncBuilder1<double, double>());
    call->setArg(0, input);
    call->setRet(0, retVariable);

//    setXmmVariable(c, retVariable, 1.234);

    c.ret(retVariable);
    c.endFunc();

    typedef double (*FuncType)(double);
    cout << asmjit_cast<FuncType>(c.make())(221.4144) << endl;

    return 0;
}