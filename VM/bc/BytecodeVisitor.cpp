#include "ast.h"
#include "BytecodeVisitor.hpp"
#include "logger.hpp"
#include "Context.hpp"

namespace mathvm {

    void BytecodeVisitor::visitForNode(ForNode *node) {
        // TODO
        AstVisitor::visitForNode(node);
    }

    void BytecodeVisitor::visitPrintNode(PrintNode *node) {
        // TODO
        AstVisitor::visitPrintNode(node);
    }

    void BytecodeVisitor::visitLoadNode(LoadNode *node) {
        // TODO
        AstVisitor::visitLoadNode(node);
    }

    void BytecodeVisitor::visitIfNode(IfNode *node) {
        // TODO
        AstVisitor::visitIfNode(node);
    }

    void BytecodeVisitor::visitIntLiteralNode(IntLiteralNode *node) {
        // TODO
        AstVisitor::visitIntLiteralNode(node);
    }

    void BytecodeVisitor::visitDoubleLiteralNode(DoubleLiteralNode *node) {
        // TODO
        AstVisitor::visitDoubleLiteralNode(node);
    }

    void BytecodeVisitor::visitStringLiteralNode(StringLiteralNode *node) {
        // TODO
        AstVisitor::visitStringLiteralNode(node);
    }

    void BytecodeVisitor::visitWhileNode(WhileNode *node) {
        // TODO
        AstVisitor::visitWhileNode(node);
    }

    void BytecodeVisitor::visitBlockNode(BlockNode *node) {
        // TODO
        AstVisitor::visitBlockNode(node);
    }

    void BytecodeVisitor::visitBinaryOpNode(BinaryOpNode *node) {
        // TODO
        AstVisitor::visitBinaryOpNode(node);
    }

    void BytecodeVisitor::visitUnaryOpNode(UnaryOpNode *node) {
        // TODO
        AstVisitor::visitUnaryOpNode(node);
    }

    void BytecodeVisitor::visitNativeCallNode(NativeCallNode *node) {
        // TODO
        AstVisitor::visitNativeCallNode(node);
    }

    void BytecodeVisitor::visitFunctionNode(FunctionNode *node) {
        LOG << "visitFunctionNode" << endl;
        AstVisitor::visitFunctionNode(node);
    }

    void BytecodeVisitor::visitReturnNode(ReturnNode *node) {
        // TODO
        AstVisitor::visitReturnNode(node);
    }

    void BytecodeVisitor::visitStoreNode(StoreNode *node) {
        // TODO
        AstVisitor::visitStoreNode(node);
    }

    void BytecodeVisitor::visitCallNode(CallNode *node) {
        // TODO
        AstVisitor::visitCallNode(node);
    }
}