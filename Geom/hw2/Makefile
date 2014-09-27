JFLAGS = -g
JC = javac
JVM= java
MAIN = Main

src = src
builddir = out

.SUFFIXES: .java .class
CLASSES = $(wildcard $(src)/*.java)

default: $(builddir) classes

$(builddir):
	mkdir -p $(builddir)

classes: $(CLASSES:.java=.class)

.java.class:
	$(JC) $(JFLAGS) $*.java -d $(builddir) -cp $(src)

run:
	$(JVM) -cp $(builddir) $(MAIN) input.txt

clean:
	rm -rf $(builddir)

.PHONY: clean