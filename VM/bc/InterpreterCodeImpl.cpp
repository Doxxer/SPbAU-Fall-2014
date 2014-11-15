#include "InterpreterCodeImpl.hpp"
#include "Errors.hpp"
#include "logger.hpp"

namespace mathvm {
    void InterpreterCodeImpl::disassemble(ostream &out, FunctionFilter *filter) {
        bytecode->dump(out);
    }

    Status *InterpreterCodeImpl::execute(vector<Var *> &vars) {
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

    void InterpreterCodeImpl::run(ostream& out) {
        // TODO rename to ???
        stack_t stack;
        vector<Bytecode *> bytecodes;
        vector<uint32_t> indices;
        vars_t vars;
        bytecodes.push_back(bytecode);
        indices.push_back(0);

        while (!bytecodes.empty()) {
            // TODO rename to index
            uint32_t &ip = indices.back();
            Bytecode &bc = *bytecodes.back();
            Instruction instruction = bc.getInsn(ip);
            size_t instructionLength;
            LOG << "index: " << ip << ", instruction: " << bytecodeName(instruction, &instructionLength) << endl;
            switch (instruction) {
                case BC_DLOAD: {
                    Var var(VT_DOUBLE, "");
                    var.setDoubleValue(bc.getDouble(ip + 1));
                    stack.push_back(var);
                    break;
                }
                case BC_ILOAD: {
                    Var var(VT_INT, "");
                    var.setIntValue(bc.getInt64(ip + 1));
                    stack.push_back(var);
                    break;
                }
                case BC_SLOAD: {
                    Var var(VT_STRING, "");
                    var.setStringValue(constantById(bc.getUInt16(ip + 1)).c_str());
                    stack.push_back(var);
                    break;
                }
                case BC_DLOAD0: {
                    Var var(VT_DOUBLE, "");
                    var.setDoubleValue(0);
                    stack.push_back(var);
                    break;
                }
                case BC_ILOAD0: {
                    Var var(VT_INT, "");
                    var.setIntValue(0);
                    stack.push_back(var);
                    break;
                }
                case BC_SLOAD0: {
                    Var var(VT_STRING, "");
                    var.setStringValue("");
                    stack.push_back(var);
                    break;
                }
                case BC_DLOAD1: {
                    Var var(VT_DOUBLE, "");
                    var.setDoubleValue(1);
                    stack.push_back(var);
                    break;
                }
                case BC_ILOAD1: {
                    Var var(VT_INT, "");
                    var.setIntValue(1);
                    stack.push_back(var);
                    break;
                }
                case BC_DLOADM1: {
                    Var var(VT_DOUBLE, "");
                    var.setDoubleValue(-1);
                    stack.push_back(var);
                    break;
                }
                case BC_ILOADM1: {
                    Var var(VT_INT, "");
                    var.setIntValue(-1);
                    stack.push_back(var);
                    break;
                }
                case BC_DADD:
                    binary_operation(VT_DOUBLE, stack, add<double>);
                    break;
                case BC_IADD:
                    binary_operation(VT_INT, stack, add<int>);
                    break;
                case BC_DSUB:
                    binary_operation(VT_DOUBLE, stack, sub<double>);
                    break;
                case BC_ISUB:
                    binary_operation(VT_INT, stack, sub<int>);
                    break;
                case BC_DMUL:
                    binary_operation(VT_DOUBLE, stack, mul<double>);
                    break;
                case BC_IMUL:
                    binary_operation(VT_INT, stack, mul<int>);
                    break;
                case BC_DDIV:
                    binary_operation(VT_DOUBLE, stack, _div<double>);
                    break;
                case BC_IDIV:
                    binary_operation(VT_INT, stack, _div<int>);
                    break;
                case BC_IMOD:
                    binary_operation(VT_INT, stack, mod<int>);
                    break;
                case BC_DNEG:
                    unary_operation(VT_DOUBLE, stack, neg<double>);
                    break;
                case BC_INEG:
                    unary_operation(VT_INT, stack, neg<int>);
                    break;
                case BC_IAOR:
                    binary_operation(VT_INT, stack, _or<int>);
                    break;
                case BC_IAAND:
                    binary_operation(VT_INT, stack, _and<int>);
                    break;
                case BC_IAXOR:
                    binary_operation(VT_INT, stack, _xor<int>);
                    break;
                case BC_IPRINT: {
                    Var v = stack.back();
                    stack.pop_back();
                    out << v.getIntValue();
                    break;
                }
                case BC_DPRINT: {
                    Var v = stack.back();
                    stack.pop_back();
                    out << v.getDoubleValue();
                    break;
                }
                case BC_SPRINT: {
                    Var v = stack.back();
                    stack.pop_back();
                    out << v.getStringValue();
                    break;
                }
                case BC_SWAP: {
                    Var v1 = stack.back();
                    stack.pop_back();
                    Var v2 = stack.back();
                    stack.pop_back();
                    stack.push_back(v1);
                    stack.push_back(v2);
                    break;
                }
                case BC_STOREDVAR0:
                case BC_STOREIVAR0:
                    storeVariable(stack, vars, 0);
                    break;
                case BC_STOREDVAR1:
                case BC_STOREIVAR1:
                    storeVariable(stack, vars, 1);
                    break;
                case BC_STOREDVAR2:
                case BC_STOREIVAR2:
                    storeVariable(stack, vars, 2);
                    break;
                case BC_STOREDVAR3:
                case BC_STOREIVAR3:
                    storeVariable(stack, vars, 3);
                    break;
                case BC_LOADDVAR:
                case BC_LOADIVAR:
                case BC_LOADSVAR:
                    stack.push_back(vars[bc.getUInt16(ip + 1)].back());
                    break;
                case BC_STOREDVAR:
                case BC_STOREIVAR:
                    storeVariable(stack, vars, bc.getUInt16(ip + 1));
                    break;
                case BC_DCMP:
                    break;
                case BC_ICMP:
                    break;
                case BC_JA: {
                    ip += bc.getInt16(ip + 1) + 1;
                    continue;
                }
                case BC_IFICMPNE: {
                    if (!check_condition(stack, _neq<int>))
                        break;
                    ip += bc.getInt16(ip + 1) + 1;
                    continue;
                }
                case BC_IFICMPE: {
                    if (!check_condition(stack, _eq<int>))
                        break;
                    ip += bc.getInt16(ip + 1) + 1;
                    continue;
                }
                case BC_IFICMPG: {
                    if (!check_condition(stack, _g<int>))
                        break;
                    ip += bc.getInt16(ip + 1) + 1;
                    continue;
                }
                case BC_IFICMPGE: {
                    if (!check_condition(stack, _ge<int>))
                        break;
                    ip += bc.getInt16(ip + 1) + 1;
                    continue;
                }
                case BC_IFICMPL: {
                    if (!check_condition(stack, _l<int>))
                        break;
                    ip += bc.getInt16(ip + 1) + 1;
                    continue;
                }
                case BC_IFICMPLE: {
                    if (!check_condition(stack, _le<int>))
                        break;
                    ip += bc.getInt16(ip + 1) + 1;
                    continue;
                }
                case BC_STOP: {
                    indices.clear();
                    bytecodes.clear();
                    continue;
                }
                case BC_CALL: {
                    TranslatedFunction *f = functionById(bc.getUInt16(ip + 1));
                    bytecodes.push_back(static_cast<BytecodeFunction *>(f)->bytecode());
                    indices.push_back(0);
                    break;
                }
                case BC_RETURN: {
                    indices.pop_back();
                    bytecodes.pop_back();
                    if (!indices.empty()) {
                        size_t len;
                        bytecodeName(BC_CALL, &len);
                        indices.back() += len;
                    }
                    continue;
                }
                case BC_INVALID:
                    throw InterpretationError("BC_Invalid instruction");
                default:
                    throw InterpretationError("Unknown instruction");
            }
            ip += instructionLength;
        }
    }

#pragma clang diagnostic pop
}
