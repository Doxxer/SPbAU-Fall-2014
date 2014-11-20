#include <cstdint>
#include <cstdlib>
#include "SimpleInterpreter.hpp"
#include "Errors.hpp"
#include "logger.hpp"

namespace mathvm {

    Status *SimpleInterpreter::execute(vector<Var *> &vars) {
        try {
            stringstream ss;
            run(ss);
            LOG << "---------RESULT-----------" << endl;
            cout << ss.str();
        } catch (InterpretationError e) {
            return Status::Error(e.what());
        }

        return Status::Ok();
    }

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"

    void SimpleInterpreter::run(ostream &out) {
        programStack.clear();
        bytecodes.clear();
        indices.clear();
        vars.clear();
        bytecodes.push_back(bytecode);
        indices.push_back(0);
        currentContext.push_back(0);

        while (!bytecodes.empty()) {
            uint32_t &currentIndex = indices.back();
            Bytecode &bytecode = *bytecodes.back();
            Instruction instruction = bytecode.getInsn(currentIndex);
            size_t instructionLength;
            LOG << "index: " << currentIndex << ", instruction: " << bytecodeName(instruction, &instructionLength) << endl;
            switch (instruction) {
                case BC_DLOAD:
                    pushVariable(bytecode.getDouble(currentIndex + 1));
                    break;
                case BC_ILOAD:
                    pushVariable(bytecode.getInt64(currentIndex + 1));
                    break;
                case BC_SLOAD:
                    pushVariable(constantById(bytecode.getUInt16(currentIndex + 1)).c_str());
                    break;
                case BC_DLOAD0:
                    pushVariable(0.0);
                    break;
                case BC_ILOAD0:
                    pushVariable((int64_t) 0);
                    break;
                case BC_SLOAD0:
                    pushVariable("");
                    break;
                case BC_DLOAD1:
                    pushVariable(1.0);
                    break;
                case BC_ILOAD1:
                    pushVariable((int64_t) 1);
                    break;
                case BC_DLOADM1:
                    pushVariable(-1.0);
                    break;
                case BC_ILOADM1:
                    pushVariable((int64_t) -1);
                    break;
                case BC_DADD:
                    binary_operation(VT_DOUBLE, add<double>);
                    break;
                case BC_IADD:
                    binary_operation(VT_INT, add<int64_t>);
                    break;
                case BC_DSUB:
                    binary_operation(VT_DOUBLE, sub<double>);
                    break;
                case BC_ISUB:
                    binary_operation(VT_INT, sub<int64_t>);
                    break;
                case BC_DMUL:
                    binary_operation(VT_DOUBLE, mul<double>);
                    break;
                case BC_IMUL:
                    binary_operation(VT_INT, mul<int64_t>);
                    break;
                case BC_DDIV:
                    binary_operation(VT_DOUBLE, _div<double>);
                    break;
                case BC_IDIV:
                    binary_operation(VT_INT, _div<int64_t>);
                    break;
                case BC_IMOD:
                    binary_operation(VT_INT, mod<int64_t>);
                    break;
                case BC_DNEG:
                    unary_operation(VT_DOUBLE, neg<double>);
                    break;
                case BC_INEG:
                    unary_operation(VT_INT, neg<int64_t>);
                    break;
                case BC_IAOR:
                    binary_operation(VT_INT, _or<int64_t>);
                    break;
                case BC_IAAND:
                    binary_operation(VT_INT, _and<int64_t>);
                    break;
                case BC_IAXOR:
                    binary_operation(VT_INT, _xor<int64_t>);
                    break;
                case BC_IPRINT:
                    out << popVariable().getIntValue();
                    break;
                case BC_DPRINT:
                    out << popVariable().getDoubleValue();
                    break;
                case BC_SPRINT:
                    out << popVariable().getStringValue();
                    break;
                case BC_SWAP: {
                    Var v1 = popVariable();
                    Var v2 = popVariable();
                    programStack.push_back(v1);
                    programStack.push_back(v2);
                    break;
                }
                case BC_STOREDVAR0:
                case BC_STOREIVAR0:
                    storeVariable(0);
                    break;
                case BC_STOREDVAR1:
                case BC_STOREIVAR1:
                    storeVariable(1);
                    break;
                case BC_STOREDVAR2:
                case BC_STOREIVAR2:
                    storeVariable(2);
                    break;
                case BC_STOREDVAR3:
                case BC_STOREIVAR3:
                    storeVariable(3);
                    break;
                case BC_LOADDVAR:
                case BC_LOADIVAR:
                case BC_LOADSVAR:
                    programStack.push_back(loadVariable(bytecode.getUInt16(currentIndex + 1)));
                    break;
                case BC_STOREDVAR:
                case BC_STOREIVAR:
                    storeVariable(bytecode.getUInt16(currentIndex + 1));
                    break;
                case BC_LOADCTXDVAR:
                case BC_LOADCTXIVAR:
                case BC_LOADCTXSVAR:
                    programStack.push_back(loadVariable(bytecode.getUInt16(currentIndex + 1), bytecode.getUInt16(currentIndex + 2)));
//                    currentIndex += 3;
//                    continue;
                    break;
                case BC_DCMP:
                    binary_operation<double, int64_t>(VT_DOUBLE, _cmp<double>, VT_INT);
                    break;
                case BC_ICMP:
                    binary_operation(VT_INT, _cmp<int64_t>);
                    break;
                case BC_JA: {
                    currentIndex += bytecode.getInt16(currentIndex + 1) + 1;
                    continue;
                }
                case BC_IFICMPNE: {
                    if (!check_condition(_neq<int64_t>))
                        break;
                    currentIndex += bytecode.getInt16(currentIndex + 1) + 1;
                    continue;
                }
                case BC_IFICMPE: {
                    if (!check_condition(_eq<int64_t>))
                        break;
                    currentIndex += bytecode.getInt16(currentIndex + 1) + 1;
                    continue;
                }
                case BC_IFICMPG: {
                    if (!check_condition(_g<int64_t>))
                        break;
                    currentIndex += bytecode.getInt16(currentIndex + 1) + 1;
                    continue;
                }
                case BC_IFICMPGE: {
                    if (!check_condition(_ge<int64_t>))
                        break;
                    currentIndex += bytecode.getInt16(currentIndex + 1) + 1;
                    continue;
                }
                case BC_IFICMPL: {
                    if (!check_condition(_l<int64_t>))
                        break;
                    currentIndex += bytecode.getInt16(currentIndex + 1) + 1;
                    continue;
                }
                case BC_IFICMPLE: {
                    if (!check_condition(_le<int64_t>))
                        break;
                    currentIndex += bytecode.getInt16(currentIndex + 1) + 1;
                    continue;
                }
                case BC_STOP: {
                    indices.clear();
                    bytecodes.clear();
                    continue;
                }
                case BC_CALL: {
                    TranslatedFunction *f = functionById(bytecode.getUInt16(currentIndex + 1));
                    bytecodes.push_back(static_cast<BytecodeFunction *>(f)->bytecode());
                    indices.push_back(0);
                    currentContext.push_back(f->id());
                    continue;
                }
                case BC_RETURN: {
                    indices.pop_back();
                    bytecodes.pop_back();
                    if (!indices.empty()) {
                        size_t len;
                        bytecodeName(BC_CALL, &len);
                        indices.back() += len;
                    }
                    currentContext.pop_back();
                    continue;
                }
                case BC_D2I:
                    pushVariable((int64_t) popVariable().getDoubleValue());
                    break;
                case BC_I2D:
                    pushVariable((double) popVariable().getIntValue());
                    break;
                case BC_S2I:
                    throw InterpretationError("BC_S2I instruction deprecated");
                case BC_BREAK:
                    break;
                case BC_INVALID:
                    throw InterpretationError("BC_Invalid instruction");
                default:
                    throw InterpretationError(string("Unknown interpreting instruction: ") + bytecodeName(instruction, 0));
            }
            currentIndex += instructionLength;
        }
    }

#pragma clang diagnostic pop
}
