package lecture3

object patternMatchingExercise extends App {
  val aList=List(1,2,3,4)
  val aListOfNumbers=aList match {
    case listOfStrings: List[String] => "A list of Strings"
    case listOfIntegers: List[Int] => "A list of Integers"
    case _ => "Nothing here"
  }
  println(aListOfNumbers)
}
