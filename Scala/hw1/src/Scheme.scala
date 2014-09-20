/**
 * Scheme
 *
 * Created by Turaev Timur on 20.09.14.
 */
abstract class Scheme {
  def data: List[String]

  def show() = println(this.data.mkString(System.lineSeparator()))
}

case class Res(resistivity: Int) extends Scheme {
  override def data: List[String] = List(s"-R$resistivity-")
}

case class Series(s1: Scheme, s2: Scheme) extends Scheme {
  override def data: List[String] = {
    val reverse = s1.data.length > s2.data.length

    var pair = (s1.data, s2.data)
    if (reverse) pair = pair.swap

    val inset = List.fill((pair._2.length - pair._1.length) / 2)(" " * pair._1.head.length)

    pair = (inset ::: pair._1 ::: inset, pair._2)
    pair.zipped.map((a, b) => if (reverse) b + a else a + b)
  }
}

case class Parallel(s1: Scheme, s2: Scheme) extends Scheme {

  private def align(list: List[String], n: Int): List[String] = {
    val leftInset = (n - list.head.length) / 2
    val rightInset = n - list.head.length - leftInset

    list.zipWithIndex.map {
      case (element, index) =>
        val char = if (index != list.length / 2) " " else "-"
        s"${char * leftInset}${element}${char * rightInset}"
    }
  }

  private def extend(list: List[String], shouldPrintVerticalLine: (Int) => Boolean, centerChar: String): List[String] = {
    list.zipWithIndex.map {
      case (element, index) =>
        val char = if (index == list.length / 2) centerChar
        else {
          if (shouldPrintVerticalLine(index)) "|" else " "
        }
        s"$char${element}$char"
    }
  }

  override def data: List[String] = {
    var x = s1.data
    var y = s2.data

    if (x.head.length < y.head.length)
      x = align(x, y.head.length)
    else
      y = align(y, x.head.length)

    x = extend(x, _ > x.length / 2, "+")
    y = extend(y, _ < y.length / 2, "+")

    val gap = s"|${" " * (x.head.length - 2)}|"

    extend(x ::: gap :: y, _ => false, "-")
  }
}
