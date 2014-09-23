/**
 * Tying the knot: Pascal triangle
 *
 * Created by Turaev Timur on 23.09.14.
 */
object task2 {
  val pascalTriangles: Stream[List[BigDecimal]] = {
    val nextLine: (List[BigDecimal]) => List[BigDecimal] = {
      list => BigDecimal(1) :: list.zip(list.tail ::: List(BigDecimal(0))).map(p => p._1 + p._2)
    }
    Stream.iterate(List(BigDecimal(1)))(nextLine)
  }

  def main(args: Array[String]): Unit = {
    pascalTriangles take 100 foreach println
  }
}
