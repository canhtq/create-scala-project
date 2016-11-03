#!/bin/sh

mkdir -p src/main/java
mkdir -p src/main/scala
mkdir -p src/test/java
mkdir -p src/test/scala
mkdir lib project target

# create an initial build.sbt file
project="spark2-stats"
scalaVersion="2.11.7"
echo 'name := "'$project'"
version := "1.0"
scalaVersion := "'$scalaVersion'"' > build.sbt

#create .project file
echo '<projectDescription>
  <name>'$project'</name>
  <buildSpec>
    <buildCommand>
      <name>org.scala-ide.sdt.core.scalabuilder</name>
    </buildCommand>
  </buildSpec>
  <natures>
    <nature>org.scala-ide.sdt.core.scalanature</nature>
    <nature>org.eclipse.jdt.core.javanature</nature>
  </natures>
  <linkedResources> </linkedResources>
</projectDescription>' > .project

#create .classpath file
echo '<?xml version="1.0" encoding="UTF-8"?>
<classpath>
        <classpathentry kind="src" output="target/'$scalaVersion'/classes" path="src/main/scala"/>
        <classpathentry kind="src" output="target/'$scalaVersion'/classes" path="src/main/java"/>
        <classpathentry kind="src" output="target/'$scalaVersion'/test-classes" path="src/test/scala"/>
        <classpathentry kind="src" output="target/'$scalaVersion'/test-classes" path="src/test/java"/>
        <classpathentry kind="con" path="org.scala-ide.sdt.launching.SCALA_CONTAINER"/>
        <classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER"/>
        <classpathentry kind="output" path="bin"/>
</classpath>' > .classpath

