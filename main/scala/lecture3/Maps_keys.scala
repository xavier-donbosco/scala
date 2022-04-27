package lecture3

object Maps_keys extends App {
  val aMap: Map[String, Int]=Map()
  val phonebook=Map("Jim"->500,"JIM"->999)
  println(phonebook)
  println(phonebook.map(pair=>pair._1.toLowerCase->pair._2))
}
