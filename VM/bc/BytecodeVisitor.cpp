#include "ast.h"
#include "BytecodeVisitor.hpp"
#include "logger.hpp"

namespace mathvm {

    void BytecodeVisitor::visitForNode(ForNode *node) {
        LOG << "visitForNode" << endl;
        // TODO
    }

    void BytecodeVisitor::visitPrintNode(PrintNode *node) {
        LOG << "visitPrintNode" << endl;
        // TODO
    }

    void BytecodeVisitor::visitLoadNode(LoadNode *node) {
        LOG << "visitLoadNode" << endl;
        // TODO
    }

    void BytecodeVisitor::visitIfNode(IfNode *node) {
        LOG << "visitIfNode" << endl;
        // TODO
    }

    void BytecodeVisitor::visitIntLiteralNode(IntLiteralNode *node) {
        LOG << "visitIntLiteralNode" << endl;

        bc()->addInsn(BC_ILOAD);
        bc()->addInt64(node->literal());
        lastType = VT_INT;
    }

    void BytecodeVisitor::visitDoubleLiteralNode(DoubleLiteralNode *node) {
        LOG << "visitDoubleLiteralNode" << endl;

        bc()->addInsn(BC_DLOAD);
        bc()->addDouble(node->literal());
        lastType = VT_DOUBLE;
    }

    void BytecodeVisitor::visitStringLiteralNode(StringLiteralNode *node) {
        LOG << "visitStringLiteralNode" << endl;
        // TODO
    }

    void BytecodeVisitor::visitWhileNode(WhileNode *node) {
        LOG << "visitWhileNode" << endl;
        // TODO
    }

    void BytecodeVisitor::visitBlockNode(BlockNode *node) {
        LOG << "visitBlockNode" << endl;

        Scope::VarIterator variableIterator(node->scope());
        while (variableIterator.hasNext()) {
            AstVar *var = variableIterator.next();
            context->introduceVariable(var->type(), var->name());
        }
        Scope::FunctionIterator functionIterator(node->scope());
        while (functionIterator.hasNext()) {
            context->introduceFunction(new BytecodeFunction(functionIterator.next()));
        }

        node->visitChildren(this);

        functionIterator = Scope::FunctionIterator(node->scope());
        while (functionIterator.hasNext()) {
            visitFunctionNode(functionIterator.next()->node());
        }
    }

    void BytecodeVisitor::visitBinaryOpNode(BinaryOpNode *node) {
        // TODO
        LOG << "visitBinaryOpNode" << endl;
    }

    void BytecodeVisitor::visitUnaryOpNode(UnaryOpNode *node) {
        // TODO
        LOG << "visitUnaryOpNode" << endl;
    }

    void BytecodeVisitor::visitNativeCallNode(NativeCallNode *node) {
        LOG << "visitNativeCallNode" << std::endl;
        throw TranslationError("NativeCallNode not implemented", node->position());
    }

    void BytecodeVisitor::visitFunctionNode(FunctionNode *node) {
        LOG << "visitFunctionNode" << endl;
        Context *child = context->addChildContext();

        BytecodeVisitor visitor(child, context->getFunction(node->name()));
        for (uint32_t i = 0; i < node->parametersNumber(); i++) {
            uint16_t id = child->introduceVariable(node->parameterType(i), node->parameterName(i));
            switch (node->parameterType(i)) {
                case VT_DOUBLE:
                    visitor.bc()->addInsn(BC_STOREDVAR);
                    break;
                case VT_INT:
                    visitor.bc()->addInsn(BC_STOREIVAR);
                    break;
                case VT_STRING:
                    visitor.bc()->addInsn(BC_STORESVAR);
                    break;
                default:
                    throw TranslationError("Incorrect storing variable type", node->position());
            }
            visitor.bc()->addUInt16(id);
        }
        lastType = node->returnType();
        visitor.visitBlockNode(node->body());
    }

    void BytecodeVisitor::visitReturnNode(ReturnNode *node) {
        // TODO
        LOG << "visitReturnNode" << endl;
    }

    void BytecodeVisitor::visitStoreNode(StoreNode *node) {
        LOG << "visitStoreNode" << endl;

        EntityInContextDescriptor variableDescriptor = context->getVariableDescriptor(node->var()->name());

        if (node->op() == tINCRSET || node->op() == tDECRSET) {
            loadVariable(variableDescriptor, node);
        }
        node->value()->visit(this);

        VarType varType = context->getVariableByID(variableDescriptor)->type();
        checkType(varType, node);

        switch (node->op()) {
            case tINCRSET:
                bc()->addInsn(varType == VT_DOUBLE ? BC_DADD : BC_IADD);
                break;
            case tDECRSET:
                bc()->addInsn(BC_SWAP);
                bc()->addInsn(varType == VT_DOUBLE ? BC_DSUB : BC_ISUB);
                break;
            case tASSIGN:
                break;
            default:
                throw TranslationError("Incorrect storing variable operation", node->position());
        }
        storeVariable(variableDescriptor, node);
    }

    void BytecodeVisitor::visitCallNode(CallNode *node) {
        // TODO
        LOG << "visitCallNode" << endl;
    }
}