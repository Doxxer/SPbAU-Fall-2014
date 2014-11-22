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

double a = 221.4144;

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
    FuncBuilderX mainFunctionPrototype;
    FuncBuilderX nativePrototype;
    mainFunctionPrototype.setRet(kX86VarTypeXmmSd);
    nativePrototype.setRet(kX86VarTypeXmmSd);
    c.addFunc(kFuncConvHost, mainFunctionPrototype);


    X86XmmVar retVariable(c, kX86VarTypeXmmSd, "retVariable");

    X86GpVar native(c);
    c.mov(native, imm_ptr(nativeAddress));

    nativePrototype.setArg(0, kX86VarTypeXmmSd);
    X86XmmVar input(c, kX86VarTypeXmmSd, "input");
    setXmmVariable(c, input, 221.4144);

    X86CallNode *call = c.call(native, kFuncConvHost, nativePrototype);
    call->setArg(0, input);
    call->setRet(0, retVariable);
    c.ret(retVariable);
    c.endFunc();

    typedef double (*FuncType)();
    FuncType f = asmjit_cast<FuncType>(c.make());
    cout << f() << endl;

    runtime.release((void *) f);

    return 0;
}