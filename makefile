# following the tutorial for creating a simple make file:
# http://mrbook.org/tutorials/make/
#
# to create a variable that holds the compiler name:
CC=g++

# creating var to pass options to compiler:
CFLAGS=-c -Wall

all: hello

hello: main.o factorial.o hello.o	
	$(CC) main.o hello.o factorial.o -o hello

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

factorial.o: factorial.cpp
	$(CC) $(CFLAGS) factorial.cpp

hello.o: hello.cpp
	$(CC) $(CFLAGS) hello.cpp

clean:
	rm -rf *o hello


# here is a more complicated make file example:
# CC=g++
# CFLAGS=-c -Wall
# LDFLAGS=
# SOURCES=main.cpp hello.cpp factorial.cpp
# OBJECTS=$(SOURCES:.cpp=.o)
# EXECUTABLE=hello

# all: $(SOURCES) $(EXECUTABLE)
	
# $(EXECUTABLE): $(OBJECTS) 
# 	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

# .cpp.o:
# 	$(CC) $(CFLAGS) $< -o $@