package lecture4

object ifForWithoutUsingBraces extends App {
  //if else statement
  val age=22
  val isEligibleToVote=if (age>21) "You are eligible to vote" else "You are not eligible to vole"
  println(isEligibleToVote)

  //for each statement
  val simple=for
    m <- List(1,2,3)
    s <- List("Hello","World")
  yield println(s"$s,$m")

  //pattern matching
  val sureAge=age match
    case 1 => "one"
    case 2 => "Two"
    case 3 => "Three"
    case _ => "You are grown"
  println(sureAge)

  //methods without brackets
  def sampleMethod()=
    println("HI")
    println("I am in the Sample Method")
  end sampleMethod
    println("I am outside Sample Method")



}
