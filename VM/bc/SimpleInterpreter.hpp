#ifndef __SIMPLEINTERPRETER_HPP_
#define __SIMPLEINTERPRETER_HPP_

#include "mathvm.h"
#include "InterpreterCodeImpl.hpp"

namespace mathvm {
    class SimpleInterpreter : public InterpreterCodeImpl {

    public:
        virtual Status *execute(vector<Var *> &vars) override;

    private:
        vector<Var> programStack;
        std::vector<Bytecode *> bytecodes;
        std::vector<uint32_t> indices;
        vector<vector<Var>> vars;
        std::vector<uint16_t> currentContext;

        void run(ostream &out);
        
        Var popVariable() {
            Var back = programStack.back();
            programStack.pop_back();
            return back;
        }

        void pushVariable(double value) {
            Var var(VT_DOUBLE, "");
            var.setDoubleValue(value);
            programStack.push_back(var);
        }

        void pushVariable(int64_t value) {
            Var var(VT_INT, "");
            var.setIntValue(value);
            programStack.push_back(var);
        }

        void pushVariable(char const* value) {
            Var var(VT_STRING, "");
            var.setStringValue(value);
            programStack.push_back(var);
        }

        Var loadVariable(uint16_t id) {
            return loadVariable(currentContext.back(), id);
        }

        Var loadVariable(uint16_t contextID, uint16_t variableID) {
            assert(vars.size() > contextID);
            assert(vars[contextID].size() > variableID);
            return vars[contextID][variableID];
        }

        void storeVariable(uint16_t id) {
            while (vars.size() <= currentContext.back()){
                vars.push_back(vector<Var>());
            }

            vector<Var> &local_vars = vars[currentContext.back()];
            while (local_vars.size() <= id) {
                local_vars.push_back(Var(VT_INT, ""));
            }
            local_vars[id] = programStack.back();
            programStack.pop_back();
        }

        template<class T, class R = T>
        void binary_operation(VarType type, R (*binaryFunction)(T const &, T const &)) {
            binary_operation<T, R>(type, binaryFunction, type);
        }

        template<class T, class R = T>
        void binary_operation(VarType type, R (*binaryFunction)(T const &, T const &), VarType resultType) {
            Var left = popVariable();
            Var right = popVariable();

            Var result(resultType, "");
            T leftValue = type == VT_DOUBLE ? left.getDoubleValue() : left.getIntValue();
            T rightValue = type == VT_DOUBLE ? right.getDoubleValue() : right.getIntValue();
            R resultValue = binaryFunction(leftValue, rightValue);
            resultType == VT_DOUBLE ? result.setDoubleValue(resultValue) : result.setIntValue(resultValue);
            programStack.push_back(result);
        }

        template<class T>
        bool check_condition(bool (*comparer)(T const &, T const &)) {
            Var left = popVariable();
            Var right = popVariable();
            return comparer(right.getIntValue(), left.getIntValue());
        }

        template<class T>
        void unary_operation(VarType type, T (*unaryFunction)(T const &)) {
            Var var = popVariable();

            Var result(type, "");
            T value = type == VT_DOUBLE ? var.getDoubleValue() : var.getIntValue();
            T resultValue = unaryFunction(value);
            type == VT_DOUBLE ? result.setDoubleValue(resultValue) : result.setIntValue(resultValue);
            programStack.push_back(result);
        }

        template<class T>
        static T add(T const &a, T const &b) {
            return a + b;
        }

        template<class T>
        static T sub(T const &a, T const &b) {
            return a - b;
        }

        template<class T>
        static T mul(T const &a, T const &b) {
            return a * b;
        }

        template<class T>
        static T _div(T const &a, T const &b) {
            return a / b;
        }

        template<class T>
        static T mod(T const &a, T const &b) {
            return a % b;
        }

        template<class T>
        static T _or(T const &a, T const &b) {
            return a | b;
        }

        template<class T>
        static T _and(T const &a, T const &b) {
            return a & b;
        }

        template<class T>
        static T _xor(T const &a, T const &b) {
            return a ^ b;
        }

        template<class T>
        static T neg(T const &a) {
            if (a == 0)
                return 1;
            return -a;
        }

        template<class T>
        static bool _eq(T const &a, T const &b) {
            return a == b;
        }

        template<class T>
        static int64_t _cmp(T const &a, T const &b) {
            // bc_swap should be
            if (a < b) {
                return 1;
            } else if (a > b) {
                return -1;
            } else return 0;
        }

        template<class T>
        static bool _neq(T const &a, T const &b) {
            return a != b;
        }

        template<class T>
        static bool _g(T const &a, T const &b) {
            return a > b;
        }

        template<class T>
        static bool _ge(T const &a, T const &b) {
            return a >= b;
        }

        template<class T>
        static bool _l(T const &a, T const &b) {
            return a < b;
        }

        template<class T>
        static bool _le(T const &a, T const &b) {
            return a <= b;
        }

    };
};

#endif