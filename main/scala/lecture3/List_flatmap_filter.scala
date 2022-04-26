package lecture3

object List_flatmap_filter extends App {
  val list=List(1,2,3,4)

  println(list.head)
  println(list.tail)

  //Map
  println(list.map(_+1))
  println(list.map(_+5))
  println(list.map(_+" is a number"))

  //filter
  println(list.filter(_%2!=0))
  println(list.filter(_>=1))

  //flat map
  val flatMap1= ((x:Int) => List(x, x+1))
  println(list.flatMap(flatMap1))

  //all the possible combinations

  val number=List(1,2,3,4)
  val charact=List('a','b','c','d')
  
}
