#ifndef __CONTEXT_HPP_
#define __CONTEXT_HPP_

#include "InterpreterCodeImpl.hpp"

namespace mathvm {
    typedef std::pair<uint16_t, uint16_t> EntityInContextDescriptor;

    class Context {
        typedef std::vector<Context *> ContextList;
        typedef std::vector<Var *> VariablesList;
        typedef map<string, uint16_t> VariablesMap;

    public:
        explicit Context(InterpreterCodeImpl *code)
                : contextID(0), code(code), parentContext(NULL), childContexts(new ContextList()) {
            childContexts->push_back(this);
        }

        Context(Context *parent, uint16_t id)
                : contextID(id), code(parent->code), parentContext(parent), childContexts(parent->childContexts) {
        }

        InterpreterCodeImpl *getCode() const {
            return code;
        }

        uint16_t getContextID() const {
            return contextID;
        }

        Context *addChildContext();

        uint16_t introduceVariable(VarType type, std::string const &name);
        uint16_t introduceFunction(BytecodeFunction *);

        BytecodeFunction *getFunction(std::string const &name);
        EntityInContextDescriptor getVariableDescriptor(std::string const &name);
        Var* getVariableByID(EntityInContextDescriptor descriptor);

    private:
        uint16_t contextID;
        InterpreterCodeImpl *code;
        Context *parentContext;
        ContextList *childContexts;

        VariablesMap variablesMap;
        VariablesList variablesList;
    };
}
#endif