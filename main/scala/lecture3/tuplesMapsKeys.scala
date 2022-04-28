package lecture3

object tuplesMapsKeys extends App {
  //Tuples
  val aTuple =(2,"hello, scala")

  println(aTuple._1)
  println(aTuple.copy(_2="goobye Java"))
  println(aTuple.swap)

  //Maps Keys Values
  val aMap:Map[String,Int]=Map()
  val phonebook=Map(("Jim",555),"Daniel"->786)
  println(phonebook)

  //Map operations
  println(phonebook.contains("Jim"))

  //adding a pair
  val newPairing = "Mary"-> 678
  val newPhonebook=phonebook+newPairing
  println(newPhonebook)

}
