package lecture3

import scala.sys.process.processInternal.File

object Assignment_question_ extends App {
  val devUrl = "abfss:container@devstorage.dfs.core.windows.net/bronze/".split('.')
  for(m1<-devUrl){
      println(m1)
    devUrl1(m1)
  }
  val testUrl = s"abfss:container@teststorage.dfs.core.windows.net/bronze/".split('.')
  for(m2<-devUrl){
    println(m2)
    devUrl1(m2)
  }
  val accUrl = s"abfss:container@accstorage.dfs.core.windows.net/bronze/"
  for(m3<-accUrl){
    println(m3)
    devUrl1(m3)
  }
  val prodUrl = s"abfss:container@prodstorage.dfs.core.windows.net/bronze/"
  for(m4<-prodUrl){
    println(m4)
    devUrl1(m4)
  }
}
def devUrl1(m1: Unit)=m1
def testUrl1(m2: Unit)=m2
def accUrl1(m3: Unit)=m3
def prodUrl1(m4: Unit)=m4
//if (m1==m2) println("There is not common words")
//else println("There are one or more common words")
val dir: File = "C:/Users/Saitama/IdeaProjects/sample_1/src/main/scala/lecture3/new_folder"
  .toFile
  .createIfNotExists(true, true)

val simpleFile = (C:/Users/Saitama/IdeaProjects/sample_1/src/main/scala/lecture3/new_folder")
  .overwrite("")
  .appendLines(devUrl,testUrl,accUrl,prodUrl1)

simpleFile.lines.map(line => println(s"decor $line decor"))

