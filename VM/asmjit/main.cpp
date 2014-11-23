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

typedef int64_t INT;

int main(int argc, char *argv[]) {
    INT d = -22321;

    void *nativeAddress = dlsym(RTLD_DEFAULT, "abs");
    if (!nativeAddress) {
        cout << "error: fn address not found";
        return 1;
    }

    JitRuntime runtime;
    FileLogger logger(stdout);
    X86Compiler c(&runtime);
    c.setLogger(&logger);

    auto q = kVarTypeInt64;

    // main function - 0 input params and return DOUBLE (cuz sqrt return double)
    FuncBuilderX mainFunctionPrototype;
    FuncBuilderX nativePrototype;
    mainFunctionPrototype.setRet(q);
    nativePrototype.addArg(q);
    nativePrototype.setRet(q);
    c.addFunc(kFuncConvHost, mainFunctionPrototype);


    X86GpVar r0(c, q, "retVariable");
    X86GpVar a0(c, q, "input");
    X86GpVar fn(c);
    c.mov(fn, imm_ptr(nativeAddress));
    c.mov(a0, d);

    auto pr = FuncBuilder1<INT, INT>();

    cout << pr.getArgCount() << endl;
    cout << pr.getArgList()[0] << q << endl;
    cout << pr.getRet() << q << endl;

    X86CallNode *call = c.call(fn, kFuncConvHost, nativePrototype);
    call->setArg(0, a0);
    call->setRet(0, r0);

    c.ret(r0);
    c.endFunc();

    typedef INT (*FuncType)();
    FuncType f = (FuncType) asmjit_cast<FuncType>(c.make());
    cout << f() << endl;

    runtime.release((void *) f);

    return 0;
}