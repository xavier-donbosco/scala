package lecture4
import scala.util.Random

object patternmattching extends App {
  val random=new Random()
  val x=random.nextInt(10)
  val description=x match{
    case 1 => "One"
    case 2 => "Two"
    case 3 => "Three"
    case _ => "Something"
  }
  println(x)
  println(description)

  case class People(name: String, age: Int)
  val people = new People("Xavier",20)
  val details = people match {
    case People(n,a) if(a<21) => s"Hi, $n you are not eligible to drink"
    case People(n,a) => s"I am $n and my age is $a"
    case _ => "Your are Missing"
  }
  println(details)
  class Animals
  case class Lion(eat: String) extends Animals
  case class Cheeta(run: String) extends Animals
  val ani: Animals=new Lion("non-veg")
  ani match {
    case Lion(eatingSomething) => println(s"Hello, all I am eating $eatingSomething")
  }

  println(x%2==0)
}

