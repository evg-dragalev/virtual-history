name := "VirtualHistoryScala"

version := "1.0"


libraryDependencies ++= Seq(
  "org.apache.thrift" % "libthrift" % "0.9.2",
  "com.twitter" %% "scrooge-core" % "4.6.0" exclude("com.twitter", "libthrift"),
  "com.twitter" %% "finagle-thrift" % "6.34.0" exclude("com.twitter", "libthrift")
)
//libraryDependencies += "com.twitter" %% "scrooge-core" % "4.3.0"
