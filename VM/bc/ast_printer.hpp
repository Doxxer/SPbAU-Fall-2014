#include "mathvm.h"
#include "parser.h"

namespace mathvm {

    class PrinterVisitor : public AstVisitor {
    public:
        PrinterVisitor(ostream &stream) : out(stream) {
        }

        virtual void visitBinaryOpNode(BinaryOpNode *node) {
            out << "visit visitBinaryOpNode" << endl;
            out << "(";
            node->left()->visit(this);
            out << " " << tokenOp(node->kind()) << " ";
            node->right()->visit(this);
            out << ")";
        }

        virtual void visitUnaryOpNode(UnaryOpNode *node) {
            out << "visit visitUnaryOpNode" << endl;
            out << tokenOp(node->kind());
            node->operand()->visit(this);
        }

        virtual void visitStringLiteralNode(StringLiteralNode *node) {
            out << "visit visitStringLiteralNode" << endl;
            out << "'" << escape(node->literal()) << "'";
        }

        virtual void visitDoubleLiteralNode(DoubleLiteralNode *node) {
            out << "visit QvisitDoubleLiteralNodeQQ" << endl;
            out << showpoint << node->literal();
        }

        virtual void visitIntLiteralNode(IntLiteralNode *node) {
            out << "visit visitIntLiteralNode" << endl;
            out << node->literal();
        }

        virtual void visitLoadNode(LoadNode *node) {
            out << "visit visitLoadNode" << endl;
            out << node->var()->name();
        }

        virtual void visitNativeCallNode(NativeCallNode *node) {
            out << "visit visitNativeCallNode" << endl;
            out << " native '" << node->nativeName() << "';" << endl;
        }

        virtual void visitStoreNode(StoreNode *node) {
            out << "visit visitStoreNode" << endl;
            out << node->var()->name() << " " << tokenOp(node->op()) << " ";
            node->value()->visit(this);
        }

        virtual void visitForNode(ForNode *node) {
            out << "visit visitForNode" << endl;
            out << "for (" << node->var()->name() << " in ";
            node->inExpr()->visit(this);
            out << ") ";
            node->body()->visit(this);
        }

        virtual void visitWhileNode(WhileNode *node) {
            out << "visit visitWhileNode" << endl;
            out << "while (";
            node->whileExpr()->visit(this);
            out << ") ";
            node->loopBlock()->visit(this);
        }

        virtual void visitIfNode(IfNode *node) {
            out << "visit visitIfNode" << endl;
            out << "if (";
            node->ifExpr()->visit(this);
            out << ") ";
            node->thenBlock()->visit(this);
            if (node->elseBlock()) {
                out << "else ";
                node->elseBlock()->visit(this);
            }
        }

        virtual void visitBlockNode(BlockNode *node) {
            out << "visit visitBlockNode" << endl;
            bool topLevel = node->scope()->parent()->parent() == NULL;
            if (!topLevel) {
                out << "{" << endl;
            }

            printVars(node->scope());
            for (uint32_t i = 0; i < node->nodes(); i++) {
                AstNode *currentNode = node->nodeAt(i);
                currentNode->visit(this);
                if (currentNode->isLoadNode() || currentNode->isStoreNode() ||
                        currentNode->isReturnNode() || currentNode->isCallNode() ||
                        currentNode->isNativeCallNode() || currentNode->isPrintNode()) {
                    out << ";" << endl;
                }
            }
            if (!topLevel) {
                out << "}" << endl;
            }
        }

        virtual void visitFunctionNode(FunctionNode *node) {
            out << "visit visitFunctionNode" << endl;
            if (node->name() != AstFunction::top_name) {
                out << "function " << typeToName(node->returnType()) << " " << node->name() << "(";

                for (uint32_t i = 0; i < node->parametersNumber(); i++) {
                    out << typeToName(node->parameterType(i)) << " " << node->parameterName(i);
                    if (i + 1 < node->parametersNumber()) {
                        out << ", ";
                    }
                }
                out << ") ";
            }
            node->body()->visit(this);
        }

        virtual void visitReturnNode(ReturnNode *node) {
            out << "visit visitReturnNode" << endl;
            out << "return ";
            if (node->returnExpr()) {
                node->returnExpr()->visit(this);
            }
        }

        virtual void visitCallNode(CallNode *node) {
            out << "visit visitCallNode" << endl;
            out << node->name() << "(";

            for (uint32_t i = 0; i < node->parametersNumber(); i++) {
                node->parameterAt(i)->visit(this);
                if (i + 1 < node->parametersNumber()) {
                    out << ", ";
                }
            }
            out << ")";
        }

        virtual void visitPrintNode(PrintNode *node) {
            out << "visit visitPrintNode" << endl;
            out << "print(";

            for (uint32_t i = 0; i < node->operands(); i++) {
                node->operandAt(i)->visit(this);
                if (i + 1 < node->operands()) {
                    out << ", ";
                }
            }

            out << ")";
        }

    private:
        ostream &out;

        void printVars(Scope *scope) {
            Scope::VarIterator iter(scope);
            while (iter.hasNext()) {
                AstVar *astVar = iter.next();
                out << typeToName(astVar->type()) << " " << astVar->name() << ";" << endl;
            }
        }

        string escape(string const &s) {
            string result;
            for (size_t i = 0; i < s.length(); ++i) {
                switch (s[i]) {
                    case '\n':
                        result += "\\n";
                        break;
                    case '\r':
                        result += "\\r";
                        break;
                    case '\t':
                        result += "\\t";
                        break;
                    default:
                        result += s[i];
                        break;
                }
            }
            return result;
        }
    };
}