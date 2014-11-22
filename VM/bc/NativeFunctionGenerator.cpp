#include "SimpleInterpreter.hpp"
#include "asmjit.h"
#include "Errors.hpp"
#include "AsmVariable.hpp"

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
        X86Compiler compiler(&runtime);
        switch (signature->at(0).first) {
            case VT_VOID:
                compiler.addFunc(kFuncConvHost, FuncBuilder0<Void>());
                break;
            case VT_DOUBLE:
                compiler.addFunc(kFuncConvHost, FuncBuilder0<double>());
                break;
            case VT_INT:
                compiler.addFunc(kFuncConvHost, FuncBuilder0<signedIntType>());
                break;
            case VT_STRING:
                compiler.addFunc(kFuncConvHost, FuncBuilder0<char const *>());
                break;
            default:
                throw InterpretationError(string("Wrong NativeFunction return type ") + typeToName(signature->at(0).first));
        }

        // ...
        switch (signature->at(0).first) {
            case VT_DOUBLE: {
                X86XmmVar retVariable(compiler, kX86VarTypeXmmSd, "returnVariable");
                // TODO
                // callNativeFunction->setRet(0, retVariable);
                compiler.ret(retVariable);
                break;
            }
            case VT_STRING:
            case VT_INT: {
                X86GpVar retVariable(compiler, kVarTypeInt64, "returnVariable");
                // TODO
                // callNativeFunction->setRet(0, retVariable);
                compiler.ret(retVariable);
                break;
            }
            case VT_VOID:
                break;
            default:
                throw InterpretationError(string("Wrong NativeFunction return type ") + typeToName(signature->at(0).first));
        }
//        compiler.ret(returnVariable);
        compiler.endFunc();

        // calling native function
        void *wrappedNativeFunction = compiler.make();
        switch (signature->at(0).first) {
            case VT_VOID:
                asmjit_cast<void (*)()>(wrappedNativeFunction)();
                break;
            case VT_DOUBLE:
                pushVariable(asmjit_cast<double (*)()>(wrappedNativeFunction)());
                break;
            case VT_INT:
                pushVariable(asmjit_cast<signedIntType(*)()>(wrappedNativeFunction)());
                break;
            case VT_STRING:
                pushVariable(asmjit_cast<char const *(*)()>(wrappedNativeFunction)());
                break;
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