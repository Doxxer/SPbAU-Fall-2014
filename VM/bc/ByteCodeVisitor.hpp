#include "ast.h"
#include "Context.hpp"
#include "TranslationError.hpp"

namespace mathvm {
    class BytecodeVisitor : public AstVisitor {
    public:
        BytecodeVisitor(Context *context, BytecodeFunction *function = NULL) : context(context), function(function) {

        }

        virtual void visitForNode(ForNode *node) override;

        virtual void visitPrintNode(PrintNode *node) override;

        virtual void visitLoadNode(LoadNode *node) override;

        virtual void visitIfNode(IfNode *node) override;

        virtual void visitIntLiteralNode(IntLiteralNode *node) override;

        virtual void visitDoubleLiteralNode(DoubleLiteralNode *node) override;

        virtual void visitStringLiteralNode(StringLiteralNode *node) override;

        virtual void visitWhileNode(WhileNode *node) override;

        virtual void visitBlockNode(BlockNode *node) override;

        virtual void visitBinaryOpNode(BinaryOpNode *node) override;

        virtual void visitUnaryOpNode(UnaryOpNode *node) override;

        virtual void visitNativeCallNode(NativeCallNode *node) override;

        virtual void visitFunctionNode(FunctionNode *node) override;

        virtual void visitReturnNode(ReturnNode *node) override;

        virtual void visitStoreNode(StoreNode *node) override;

        virtual void visitCallNode(CallNode *node) override;

    private:
        Context *context;
        BytecodeFunction *function;
        VarType lastType;

        Bytecode *bc() const {
            return function->bytecode();
        }

        VarType loadVariable(EntityInContextDescriptor variableDescriptor, AstNode *node) {
            VarType type = context->getVariableByID(variableDescriptor)->type();
            if (variableDescriptor.first != context->getContextID()) {
                switch (type) {
                    case VT_INT:
                        bc()->addInsn(BC_LOADCTXIVAR);
                        break;
                    case VT_DOUBLE:
                        bc()->addInsn(BC_LOADCTXDVAR);
                        break;
                    case VT_STRING:
                        bc()->addInsn(BC_LOADCTXSVAR);
                        break;
                    default:
                        throw TranslationError("Incorrect loading context-variable type", node->position());
                }
                bc()->addUInt16(variableDescriptor.first);
                bc()->addUInt16(variableDescriptor.second);
            } else {
                switch (type) {
                    case VT_INT:
                        bc()->addInsn(BC_LOADIVAR);
                        break;
                    case VT_DOUBLE:
                        bc()->addInsn(BC_LOADDVAR);
                        break;
                    case VT_STRING:
                        bc()->addInsn(BC_LOADSVAR);
                        break;
                    default:
                        throw TranslationError("Incorrect loading noncontext-variable type", node->position());
                }
                bc()->addUInt16(variableDescriptor.second);
            }
            return type;
        }

        void storeVariable(EntityInContextDescriptor variableDescriptor, AstNode *node) {
            VarType type = context->getVariableByID(variableDescriptor)->type();
            if (variableDescriptor.first != context->getContextID()) {
                switch (type) {
                    case VT_INT:
                        bc()->addInsn(BC_STORECTXIVAR);
                        break;
                    case VT_DOUBLE:
                        bc()->addInsn(BC_STORECTXDVAR);
                        break;
                    case VT_STRING:
                        bc()->addInsn(BC_STORECTXSVAR);
                        break;
                    default:
                        throw TranslationError("Incorrect storing context-variable type", node->position());
                }
                bc()->addUInt16(variableDescriptor.first);
                bc()->addUInt16(variableDescriptor.second);
            } else {
                switch (type) {
                    case VT_INT:
                        bc()->addInsn(BC_STOREIVAR);
                        break;
                    case VT_DOUBLE:
                        bc()->addInsn(BC_STOREDVAR);
                        break;
                    case VT_STRING:
                        bc()->addInsn(BC_STORESVAR);
                        break;
                    default:
                        throw TranslationError("Incorrect storing noncontext-variable type", node->position());
                }
                bc()->addUInt16(variableDescriptor.second);
            }
        }

        void checkType(VarType expected, AstNode *node) {
            if (expected != lastType) {
                throw TranslationError(string("Type error: expected '") + typeToName(expected) + "', got: '" + typeToName(lastType),
                        node->position());
            }
        }
    };
}