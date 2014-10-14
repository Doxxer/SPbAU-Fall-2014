import scala.util.parsing.combinator.JavaTokenParsers

/**
 * Reverse Polish Parser
 *
 * Created by Turaev Timur on 14.10.14.
 */

abstract class Expression

case class Plus(left: Expression, right: Expression) extends Expression

case class Minus(left: Expression, right: Expression) extends Expression

case class Mult(left: Expression, right: Expression) extends Expression

case class Div(left: Expression, right: Expression) extends Expression

case class Num(value: Double) extends Expression

object RPNParser extends JavaTokenParsers {

  def expression: Parser[Expression] = (factor ~ terms | number) ^^ {
    case number: Num => number
    case (expression: Expression) ~ (list: List[(Expression, (Expression, Expression) => Expression)]) =>
      list.foldLeft(expression)({ case (left, (right, operation)) => operation(left, right)})
  }

  def factor: Parser[Expression] = number ~ expression ~ operation ^^ { case num ~ expr ~ op => op(num, expr)}

  def terms: Parser[List[(Expression, (Expression, Expression) => Expression)]] = rep(expression ~ operation) ^^ {
    case terms => terms.map({ case expr ~ operation => (expr, operation)})
  }

  def number: Parser[Num] = floatingPointNumber ^^ (n => Num(n.toDouble))

  def operation: Parser[(Expression, Expression) => Expression] = ("+" | "-" | "*" | "/") ^^ {
    case "+" => Plus
    case "-" => Minus
    case "*" => Mult
    case "/" => Div
  }

  def parse(text: String) = parseAll(expression, text)
}

object Evaluator {
  def run(e: Expression): Double = e match {
    case Num(v) => v
    case Plus(l, r) => run(l) + run(r)
    case Minus(l, r) => run(l) - run(r)
    case Mult(l, r) => run(l) * run(r)
    case Div(l, r) => run(l) / run(r)
  }
}

object task1 extends App {
  val expression = RPNParser.parse("1 2 3 + * /")
  println(expression)
  println(Evaluator.run(expression.get))
}