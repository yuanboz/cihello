#
# makefile 
#
# input file for 'make' build tool ( /usr/bin/make )
# to build solution for JUnit sample
#
# @author Dr. Fenwick
# @version Summer 2018
#

JUNIT4_JAR = junit-4.10.jar
JUNIT4_RUNNER = org.junit.runner.JUnitCore 
HAMCREST_JAR = /usr/share/java/hamcrest/core-1.1.jar

default: 
	@echo "usage: make target"
	@echo "7 available targets: clean - removes editor tmpfiles and .class files"
	@echo "____________________ compile4, test4 - builds/runs JUnit4 tests"



compile4: src/Hello.java src/HelloTest.java $(JUNIT4_JAR)
	cd src; javac -cp .:../$(JUNIT4_JAR) HelloTest.java
	cd src; javac Hello.java

clean:
	rm -f *~
	rm -f src/*~
	rm -f src/*.class

test4: src/Hello.class src/HelloTest.class $(JUNIT4_JAR)
	cd src; java -cp .:../$(JUNIT4_JAR) $(JUNIT4_RUNNER) HelloTest


