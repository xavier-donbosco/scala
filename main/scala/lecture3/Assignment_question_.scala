package lecture3

object Assignment_question_ extends App {
  val devUrl = "abfss:container@devstorage.dfs.core.windows.net/bronze/".split('.')
  for(m1<-devUrl){
    println(m1)
  }
  val testUrl = s"abfss:container@teststorage.dfs.core.windows.net/bronze/"
  val accUrl = s"abfss:container@accstorage.dfs.core.windows.net/bronze/"
  val prodUrl = s"abfss:container@prodstorage.dfs.core.windows.net/bronze/"

}
def devUrl1(devUrl: String): Unit={
  val dev=devUrl.split(".d")
  println(dev)
}