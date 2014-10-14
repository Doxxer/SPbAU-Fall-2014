import scala.io.Source
import scala.util.parsing.combinator.JavaTokenParsers

/**
 * JSON parser
 *
 * Created by Turaev Timur on 14.10.14.
 */

object JSONParser extends JavaTokenParsers {
  def json: Parser[Map[String, Any]] = "{" ~> repsep(property, ",") <~ "}" ^^ (Map() ++ _)

  def property: Parser[(String, Any)] = stringLiteral ~ ":" ~ value ^^ { case name ~ ":" ~ value => (name, value)}

  def value: Parser[Any] = stringLiteral | floatingPointNumber ^^ (_.toDouble) | json | array

  def array: Parser[List[Any]] = "[" ~> repsep(value, ",") <~ "]"

  def parse(text: String) = parseAll(json, text)
}

object task2 extends App {
  val json = Source.fromFile("1.json").mkString
  println(JSONParser.parse(json))
}
