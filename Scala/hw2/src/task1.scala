/**
 * sqrt2(length)
 *
 * Created by Turaev Timur on 23.09.14.
 */
object task1 {
  def sqrt2(length: Int): List[Int] = {

    val fractionRepresentation: Stream[(BigInt, BigInt)] = {
      Stream.iterate((BigInt(1), BigInt(1)))(tuple => (tuple._1 + 2 * tuple._2, tuple._1 + tuple._2)) // a/b => (a+2b)/(a+b)
    }

    def getDigitsFromFractionRepresentation(p: (BigInt, BigInt)): List[Int] = {
      (Stream.iterate(((p._1 - p._2, p._2), 1)) {
        case ((a, b), _) =>
          val newDigit = a * 10 / b
          ((a * 10 - b * newDigit, b), newDigit.intValue())
      } take length).map(p => p._2).toList
    }

    fractionRepresentation.map(getDigitsFromFractionRepresentation).sliding(2).find(a => a(0) == a(1)).get(0)
  }

  def main(args: Array[String]): Unit = {
    // real value, obtained from http://apod.nasa.gov/htmltest/gifcity/sqrt2.1mil
    println("14142135623730950488016887242096980785696718753769480731766797379907324784621070388503875" +
      "343276415727350138462309122970249248360558507372126441214970999358314132226659275055927557999505" +
      "01152782060571470109559971605970274534596862014728517418640889198")
    sqrt2(250).foreach(print)
    println()

    println(sqrt2(20))
  }
}