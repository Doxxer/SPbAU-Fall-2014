CXX = clang++
CXXFLAGS = -Wall -Wextra -pedantic -ftree-vectorize
APPNAME = main
OBJECTS = $(builddir)/main.o $(builddir)/shader.o
LIBS = -framework GLUT -framework OpenGL -framework Cocoa -lglew -lglut -lanttweakbar
srcdir = .
builddir = obj

all: clean $(builddir) $(APPNAME)

$(builddir):
	mkdir -p $(builddir)

####################

$(builddir)/main.o: $(srcdir)/main.cpp $(srcdir)/shader.h
	$(CXX) $(CXXFLAGS) -c $< -o $@
	
$(builddir)/shader.o: $(srcdir)/shader.cpp $(srcdir)/shader.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

####################

$(APPNAME): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $@ $(LIBS)

clean:
	rm -rf $(builddir)
	rm -rf $(APPNAME)
	
run:
	./$(APPNAME)

.PHONY: clean