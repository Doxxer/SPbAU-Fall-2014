/**
 * 12345678910 task
 *
 * Created by Turaev Timur on 23.09.14.
 */
object task4 {
  def generatePolish(numbers: List[Variable], operations: List[(Expression, Expression) => Expression]): List[Expression] = {
    if (operations.isEmpty)
      return numbers

    var result = List[Expression]()

    (1 to numbers.length - 1).foreach(k => {
      val left: List[Expression] = generatePolish(numbers.take(k), operations.tail.take(k - 1))
      val right: List[Expression] = generatePolish(numbers.drop(k), operations.tail.drop(k - 1))
      val allPairsOfExpressions = left.flatMap(x => right.map(y => (x, y)))
      result = result ::: allPairsOfExpressions.map(p => operations.head(p._1, p._2))
    })

    result
  }

  def permutationWithRepetitions[T](list: List[T], n: Int): List[List[T]] = {
    n match {
      case 1 => for (el <- list) yield List(el)
      case _ => for (el <- list; perm <- permutationWithRepetitions(list, n - 1)) yield el :: perm
    }
  }

  def solve(n: Int) {
    val digits = (1 to 10).toList.map(Variable)

    permutationWithRepetitions(List(Sum, Minus, Mult), digits.length - 1).foreach(operations => {
//      generatePolish(digits, operations).map(x => s"${x.toString()} = ${x.evaluate()}").foreach(println)
      generatePolish(digits, operations).filter(_.evaluate() == n).map(_.toString()).foreach(println)
    })
  }

  def main(args: Array[String]) = solve(20000)
}


abstract class Expression {
  def evaluate(): Int

  override def toString: String
}

case class Variable(x: Int) extends Expression {
  override def evaluate(): Int = x

  override def toString: String = s"$x"
}

abstract class BinaryExpr(left: Expression, right: Expression) extends Expression {
  val operationRepresentation: String
  val operation: (Int, Int) => Int

  override def evaluate(): Int = operation(left.evaluate(), right.evaluate())

  override def toString: String = {
    val braceLeftAtLeft = left match {
      case Variable(_) => ""
      case _ => "("
    }
    val braceRightAtLeft = left match {
      case Variable(_) => ""
      case _ => ")"
    }
    val braceLeftAtRight = right match {
      case Variable(_) => ""
      case _ => "("
    }
    val braceRightAtRight = right match {
      case Variable(_) => ""
      case _ => ")"
    }
    s"$operationRepresentation ${left.toString} ${right.toString}"
    //    s"$operationRepresentation (${left.toString}) (${right.toString})"
    //    s"$braceLeftAtLeft${left.toString()}$braceRightAtLeft $operationRepresentation $braceLeftAtRight${right.toString()}$braceRightAtRight"
  }
}

case class Sum(left: Expression, right: Expression) extends BinaryExpr(left, right) {
  override val operationRepresentation: String = "+"
  override val operation: (Int, Int) => Int = (a, b) => a + b
}

case class Minus(left: Expression, right: Expression) extends BinaryExpr(left, right) {
  override val operationRepresentation: String = "-"
  override val operation: (Int, Int) => Int = (a, b) => a - b
}

case class Mult(left: Expression, right: Expression) extends BinaryExpr(left, right) {
  override val operationRepresentation: String = "*"
  override val operation: (Int, Int) => Int = (a, b) => a * b
}