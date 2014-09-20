/**
 * Fibonacci numbers
 *
 * Created by Turaev Timur on 09.09.14.
 */
object task2 {
  val fib: Stream[BigDecimal] = {
    def tail(h: BigDecimal, n: BigDecimal): Stream[BigDecimal] = h #:: tail(n, h + n)

    tail(0, 1)
  }

  def main(args: Array[String]): Unit = {
    (fib take 1000).print("\n")
  }
}
