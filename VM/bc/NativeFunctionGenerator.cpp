#include "SimpleInterpreter.hpp"
#include "asmjit.h"
#include "Errors.hpp"

using namespace asmjit;

namespace mathvm {
    void SimpleInterpreter::callNative(uint16_t id) {
        const Signature *signature;
        const std::string *name;
        const void *nativeCodeAddress = nativeById(id, &signature, &name);
        if (!nativeCodeAddress) {
            throw std::string("Native function not found");
        }

        JitRuntime runtime;
        FileLogger logger(stdout);
        X86Compiler compiler(&runtime);
        compiler.setLogger(&logger);

        switch (signature->at(0).first) {
            case VT_VOID:
                compiler.addFunc(kFuncConvHost, FuncBuilder0<Void>());
                break;
            case VT_DOUBLE:
                compiler.addFunc(kFuncConvHost, FuncBuilder0<double>());
            case VT_INT:
                compiler.addFunc(kFuncConvHost, FuncBuilder0<signedIntType>());
            case VT_STRING:
                compiler.addFunc(kFuncConvHost, FuncBuilder0<char const *>());
            default:
                throw InterpretationError(string("Wrong NativeFunction return type ") + typeToName(signature->at(0).first));
        }

        // ...

        compiler.endFunc();

        // call
        void *wrappedNativeFunction = compiler.make();

        switch (signature->at(0).first) {
            case VT_VOID:
                asmjit_cast<void (*)()>(wrappedNativeFunction)();
                break;
            case VT_DOUBLE:
                pushVariable(asmjit_cast<double (*)()>(wrappedNativeFunction)());
            case VT_INT:
                pushVariable(asmjit_cast<signedIntType(*)()>(wrappedNativeFunction)());
            case VT_STRING:
                pushVariable(asmjit_cast<char const *(*)()>(wrappedNativeFunction)());
            default:
                throw InterpretationError(string("Wrong NativeFunction return type ") + typeToName(signature->at(0).first));
        }
        runtime.release(wrappedNativeFunction);
    }

    void setXmmVariable(X86Compiler &c, XmmVar &v, double d) {
        X86GpVar temp = c.newGpVar();
        c.mov(temp, *(reinterpret_cast<uint64_t *>(&d)));
        c.movq(v, temp.m());
        c.unuse(temp);
    }
}