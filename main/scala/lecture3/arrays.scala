package lecture3

object arrays extends App {
  val numbers=Array(1,2,3,4)
  val threeElements=Array.ofDim[String](3)
  threeElements.foreach(println)

  numbers(2)=0
  println(numbers.mkString(""))

  val numberseq: Seq[Int]=numbers
  println(numberseq)
}
