JFLAGS = -g
JC = javac
JVM= java
MAIN = ru.spbau.turaevt.CG.IncrementalCH.Main

src = src
builddir = out
package = ru/spbau/turaevt/CG/IncrementalCH

.SUFFIXES: .java .class
CLASSES = $(wildcard $(src)/$(package)/*.java)

default: $(builddir) classes

$(builddir):
	mkdir -p $(builddir)

classes: $(CLASSES:.java=.class)

.java.class:
	$(JC) $(JFLAGS) $*.java -d $(builddir) -cp $(src)

run:
	$(JVM) -cp $(builddir) $(MAIN)

clean:
	rm -rf $(builddir)

.PHONY: clean