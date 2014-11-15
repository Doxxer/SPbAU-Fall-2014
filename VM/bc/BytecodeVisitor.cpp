#include "ast.h"
#include "BytecodeVisitor.hpp"
#include "logger.hpp"

namespace mathvm {

    void BytecodeVisitor::visitForNode(ForNode *node) {
        LOG << "visitForNode TODO" << endl;
        // TODO
    }

    void BytecodeVisitor::visitPrintNode(PrintNode *node) {
        LOG << "visitPrintNode" << endl;
        for (uint32_t i = 0; i < node->operands(); ++i) {
            node->operandAt(i)->visit(this);
            switch (lastType) {
                case VT_INT:
                    bc()->addInsn(BC_IPRINT);
                    break;
                case VT_DOUBLE:
                    bc()->addInsn(BC_DPRINT);
                    break;
                case VT_STRING:
                    bc()->addInsn(BC_SPRINT);
                    break;
                default:
                    throw TranslationError("Incorrect printing variable type", node->position());
            }
        }
    }

    void BytecodeVisitor::visitLoadNode(LoadNode *node) {
        LOG << "visitLoadNode" << endl;
        EntityInContextDescriptor variableDescriptor = context->getVariableDescriptor(node->var()->name());
        lastType = loadVariable(variableDescriptor, node);
    }

    void BytecodeVisitor::visitIfNode(IfNode *node) {
        LOG << "visitIfNode TODO" << endl;
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

        uint16_t id = context->introduceStringConst(node->literal());
        bc()->addInsn(BC_SLOAD);
        bc()->addUInt16(id);
        lastType = VT_STRING;
    }

    void BytecodeVisitor::visitWhileNode(WhileNode *node) {
        LOG << "visitWhileNode TODO" << endl;
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
        LOG << "visitBinaryOpNode" << endl;

        node->left()->visit(this);
        VarType leftType = lastType;
        node->right()->visit(this);
        VarType rightType = lastType;

        switch (node->kind()) {
            case tOR:
            case tAND:
            case tAOR:
            case tAAND:
            case tAXOR:
            case tMOD: {
                switch (node->kind()) {
                    case tAND:
                    case tAAND:
                        bc()->addInsn(BC_IAAND);
                        break;
                    case tOR:
                    case tAOR:
                        bc()->addInsn(BC_IAOR);
                        break;
                    case tAXOR:
                        bc()->addInsn(BC_IAXOR);
                        break;
                    case tMOD:
                        bc()->addInsn(BC_IMOD);
                        break;
                    default:;
                }
                lastType = VT_INT;
                break;
            }

            case tEQ:
            case tNEQ:
            case tGT:
            case tGE:
            case tLT:
            case tLE: {
                VarType varType = equateTypes(leftType, rightType, node);
                if (varType == VT_DOUBLE) {
                    bc()->addInsn(BC_DCMP);
                    bc()->addInsn(BC_ILOAD0);
                }
                Label _else(bc());
                Label end(bc());
                switch (node->kind()) {
                    case tEQ:
                        bc()->addBranch(BC_IFICMPE, _else);
                        break;
                    case tNEQ:
                        bc()->addBranch(BC_IFICMPNE, _else);
                        break;
                    case tGT:
                        bc()->addBranch(BC_IFICMPG, _else);
                        break;
                    case tGE:
                        bc()->addBranch(BC_IFICMPGE, _else);
                        break;
                    case tLT:
                        bc()->addBranch(BC_IFICMPL, _else);
                        break;
                    case tLE:
                        bc()->addBranch(BC_IFICMPLE, _else);
                        break;
                    default:;
                        break;
                }
                bc()->addInsn(BC_ILOAD0);
                bc()->addBranch(BC_JA, end);
                bc()->bind(_else);
                bc()->addInsn(BC_ILOAD1);
                bc()->bind(end);
                lastType = VT_INT;
                break;
            }
            case tINCRSET:
            case tDECRSET:
                break;

            case tADD:
            case tSUB:
            case tMUL:
            case tDIV: {
                VarType type = equateTypes(leftType, rightType, node);
                switch (node->kind()) {
                    case tADD:
                        bc()->addInsn(type == VT_DOUBLE ? BC_DADD : BC_IADD);
                        break;
                    case tSUB:
                        bc()->addInsn(BC_SWAP);
                        bc()->addInsn(type == VT_DOUBLE ? BC_DSUB : BC_ISUB);
                        break;
                    case tMUL:
                        bc()->addInsn(type == VT_DOUBLE ? BC_DMUL : BC_IMUL);
                        break;
                    case tDIV:
                        bc()->addInsn(BC_SWAP);
                        bc()->addInsn(type == VT_DOUBLE ? BC_DDIV : BC_IDIV);
                        break;
                    default:
                        assert(false);
                }
                lastType = type;
                break;
            }
            default:
                throw TranslationError(string("Unknown binary operation token: ") + tokenStr(node->kind()), node->position());
        }
    }

    void BytecodeVisitor::visitUnaryOpNode(UnaryOpNode *node) {
        // TODO
        LOG << "visitUnaryOpNode TODO" << endl;
    }

    void BytecodeVisitor::visitNativeCallNode(NativeCallNode *node) {
        LOG << "visitNativeCallNode" << std::endl;
        throw TranslationError("NativeCallNode not implemented", node->position());
    }

    void BytecodeVisitor::visitFunctionNode(FunctionNode *node) {
        LOG << "visitFunctionNode" << endl;
        if (function == NULL) {
            function = context->getFunction(node->name());
            visitBlockNode(node->body());
            context->getCode()->setBytecode(context->getFunction(node->name())->bytecode());
            return;
        }
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
        LOG << "visitReturnNode TODO" << endl;
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
        LOG << "visitCallNode TODO" << endl;
    }
}