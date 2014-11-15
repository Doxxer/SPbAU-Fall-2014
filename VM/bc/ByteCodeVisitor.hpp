#include "ast.h"
#include "Context.hpp"

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

        Bytecode* bc() const {
            return function->bytecode();
        }
    };
}