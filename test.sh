#!/usr/bin/env bash
sudo rm -r target
sudo mkdir target
javac -d target src/**/**/*.java
javac -cp lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar:target -d target/ test/*.java
cd target/
java -cp ../lib/junit-4.12.jar:../lib/hamcrest-core-1.3.jar:../src/*.java:. org.junit.runner.JUnitCore Suite
