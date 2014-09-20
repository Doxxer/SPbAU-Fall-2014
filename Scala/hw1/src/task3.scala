/**
 * Qsort
 *
 * Created by Turaev Timur on 14.09.14.
 */
object task3 {
  def qsort(list: List[Int]): List[Int] =
    if (list.isEmpty) {
      list
    } else {
      val (left, right) = list.tail.partition(_ < list.head)
      qsort(left) ::: list.head :: qsort(right)
    }

  def main(args: Array[String]) = {
    val list = List(1, 5, 6, 3, 2, 6, 8, 2, 4)

    println(qsort(list).mkString(" "))
  }
}
