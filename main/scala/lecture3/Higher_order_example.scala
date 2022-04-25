package lecture3

object Higher_order_example extends App {
//  def additionOfThreeNumbers(x: Double,y: Double, z: Double, cal:(Double,Double)=>Double): Double=cal(cal(x,y),z)
//  println(additionOfThreeNumbers(20,30,20,_+_))//(x,y)=>x+y)=_+_
//
//  def cal(a: Int, b: Int => Int): Int=b(a)
//  def mul(a: Int): Int=a*2
//  println(cal(5,mul))

println(apply(format,32))
}
def apply(x: Double => String, y: Double)=x(y)
def format[R](z:R)=z.toString()//R is the type of z
//def format(z: Double)=z.toString()
