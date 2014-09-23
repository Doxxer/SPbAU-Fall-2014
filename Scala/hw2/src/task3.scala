/**
 * Logical expression
 *
 * Created by Turaev Timur on 23.09.14.
 */
object task3 {
  def main(args: Array[String]) {
    val x = ~((Var() & True()) || False()) & True()
    // x = ~((X & T) || F) && T. Simplify it: ~((X & T) || F) && T == ~(X & T) & T == ~(X & T) == ~X || F == ~X
    val y = ~Var()
    println(x === y) // it should be true
  }
}

abstract class LogicalExpression {
  def evaluateAt(value: Boolean): Boolean

  def ===(expr: LogicalExpression): Boolean = evaluateAt(value = true) == expr.evaluateAt(value = true) && evaluateAt(value = false) == expr.evaluateAt(value = false)

  def &(expression: LogicalExpression): LogicalExpression = And(this, expression)

  def ||(expression: LogicalExpression): LogicalExpression = Or(this, expression)

  def unary_~(): LogicalExpression = Not(this)
}

case class Var() extends LogicalExpression {
  override def evaluateAt(value: Boolean): Boolean = value
}

case class True() extends LogicalExpression {
  override def evaluateAt(value: Boolean): Boolean = true
}

case class False() extends LogicalExpression {
  override def evaluateAt(value: Boolean): Boolean = false
}

case class And(left: LogicalExpression, right: LogicalExpression) extends LogicalExpression {
  override def evaluateAt(value: Boolean): Boolean = left.evaluateAt(value) && right.evaluateAt(value)
}

case class Or(left: LogicalExpression, right: LogicalExpression) extends LogicalExpression {
  override def evaluateAt(value: Boolean): Boolean = left.evaluateAt(value) || right.evaluateAt(value)
}

case class Not(expr: LogicalExpression) extends LogicalExpression {
  override def evaluateAt(value: Boolean): Boolean = !expr.evaluateAt(value)
}