#include <iostream>
#include <dlfcn.h>
#include <cmath>
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
    int64_t d = -221;
    cout << sqrt(d) << endl;

    void *nativeAddress = dlsym(RTLD_DEFAULT, "max");
    if (!nativeAddress) {
        cout << "error: native address not found";
        return 1;
    }

    JitRuntime runtime;
    FileLogger logger(stdout);
    X86Compiler c(&runtime);
    c.setLogger(&logger);

    auto q = kVarTypeInt64;
//    auto q = kX86VarTypeXmmSd;

    // main function - 0 input params and return DOUBLE (cuz sqrt return double)
    FuncBuilderX mainFunctionPrototype;
    FuncBuilderX nativePrototype;
    mainFunctionPrototype.setRet(q);
    nativePrototype.setRet(q);
    c.addFunc(kFuncConvHost, mainFunctionPrototype);


    X86XmmVar retVariable(c, q, "retVariable");

    X86GpVar native(c);
    c.mov(native, imm_ptr(nativeAddress));
    nativePrototype.setArg(0, q);
    nativePrototype.setArg(1, q);

//    X86XmmVar input(c, q, "input");
//    setXmmVariable(c, input, 10);

    X86GpVar input = c.newGpVar(q);
    c.mov(input, static_cast<int64_t>(d));
    X86GpVar input1 = c.newGpVar(q);
    c.mov(input, static_cast<int64_t>(d + 1));

    X86CallNode *call = c.call(native, kFuncConvHost, nativePrototype);
    call->setArg(0, input);
    call->setArg(1, input1);
    call->setRet(0, retVariable);
    c.ret(retVariable);
    c.endFunc();

    typedef int64_t (*FuncType)();
    FuncType f = (FuncType) asmjit_cast<FuncType>(c.make());
    cout << f() << endl;

    runtime.release((void *) f);

    return 0;
}