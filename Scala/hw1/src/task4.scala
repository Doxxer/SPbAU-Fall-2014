/**
 * Scheme
 *
 * Created by Turaev Timur on 20.09.14.
 */

object task4 {
  def main(args: Array[String]): Unit = {
    val s1 = Series(Res(5), Res(4))
    val s2 = Series(Res(10), Res(20))
    val s3 = Parallel(s1, s2)
    val s4 = Parallel(s2, s1)
    val s5 = Parallel(Series(Parallel(s3, s4), Res(2)), Res(9))
    val s6 = Parallel(Parallel(s5, Res(9)), Res(8))
    s6.show()
  }
}
