import scala.io.StdIn
object HelloWorld {
  def priority(ch: Char): Int = if (ch.isLower) (ch.toInt - 'a'.toInt + 1) else (ch.toInt - 'A'.toInt + 27)
	def main(args: Array[String]): Unit = {
	var lines = new Array[String](3)
	var total = 0
  while ({lines = Array(StdIn.readLine(), StdIn.readLine(), StdIn.readLine()); lines(0) != null}) {
    var intersection = lines.reduce((x,y) => x intersect y).head
    total += priority(intersection)
  }
  println(total)
	}
}
