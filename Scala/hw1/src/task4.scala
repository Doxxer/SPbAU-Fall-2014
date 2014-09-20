/**
 * Scheme
 *
 * Created by Turaev Timur on 20.09.14.
 */

object task4 {
  def main(args: Array[String]): Unit = {
    val s1 = new Series(new Res(5), new Res(4))
    val s2 = new Series(new Res(10), new Res(20))
    val s3 = new Parallel(s1, s2)
    val s4 = new Parallel(s2, s1)
    val s5: Parallel = new Parallel(new Series(new Parallel(s3, s4), new Res(2)), new Res(9))
    val s6: Parallel = new Parallel(new Parallel(s5, new Res(9)), new Res(8))
    s6.show()
  }

  
}
