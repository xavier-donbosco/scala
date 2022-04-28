package lecture3

import java.util
import scala.util.Random

object vectorList extends App {
  val maxRuns=1000
  val maxCapacity=1000000

  def getWriteTime(collection: Seq[Int]): Double={
    val r=new Random
    val times=for{
      it<-1 to maxRuns
    }yield {
      val currentTime=System.nanoTime()
      collection.updated(r.nextInt(maxCapacity),r.nextInt())
      System.nanoTime()-currentTime
    }
    times.sum * 1.0/maxRuns
  }
  val numberList=(1 to maxCapacity).toList
  val numberVector=(1 to maxCapacity).toVector

  println(getWriteTime(numberList))
  println(getWriteTime(numberVector))
}
