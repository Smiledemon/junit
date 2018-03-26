#!/usr/bin/env bash
rm -r target
#创建classes生成路径
mkdir -p target/classes
mkdir -p target/test
#编译Java源文件
javac -d target/classes src/**/**/*.java
#编译测试文件，需要指定依赖文件及jar包
javac -cp lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar:target/classes:test -d target/test test/*.java
#移动到class文件路径，并运行测试文件
cd target/test
java -cp ../../lib/junit-4.12.jar:../../lib/hamcrest-core-1.3.jar:../classes:. org.junit.runner.JUnitCore TestAllTwo
