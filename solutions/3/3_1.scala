import scala.io.StdIn
object HelloWorld {
  def priority(ch: Char): Int = if (ch.isLower) (ch.toInt - 'a'.toInt + 1) else (ch.toInt - 'A'.toInt + 27)
	def main(args: Array[String]): Unit = {
	var line = ""
	var total = 0
  while ({line = StdIn.readLine(); line != null}) {
    var len = line.length
    var left = line.reverse.substring(len/2)
    var right = line.substring(len/2)
    var intersection = left.intersect(right).head
    total += priority(intersection)
  }
  println(total)
	}
}
