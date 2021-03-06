import scala.annotation.tailrec

/**
 * GCD calculus
 *
 * Created by Turaev Timur on 09.09.14.
 */
object task1 {

  @tailrec
  def gcd(x: Long, y: Long): Long = {
    if (y == 0) math.abs(x) else gcd(y, x % y)
  }

  def main(args: Array[String]) {
    println(gcd(10, 5))
    println(gcd(10, 3))
    println(gcd(10, 0))
    println(gcd(0, 10))
    println(gcd(-12, 9))
    println(gcd(9, -12))
    println(gcd(-9, -12))
  }
}
