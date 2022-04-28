package lecture3

object options extends App {
  val myFirstOption: Option[Int]=Some(4)
  val noOption:Option[Int]=None
  println(myFirstOption)

  //works with unsafe APIs
  def unSafeMethod():String=null
  val result=Option(unSafeMethod())
  println(result)
  def backupMethod(): String="A valid result"
//  val chainedResult=Option(unSafeMethod().orElse(Option(backupMethod())))

  //Unsafe design
  def betterUnsafeMethod(): Option[String]=None
  def betterBackupMethod(): Option[String]=Some("A valid result")
  val betterChainedResult=betterUnsafeMethod() orElse(betterBackupMethod())
}
