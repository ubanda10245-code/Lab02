# This is a comment line
CC=g++
# CFLAGS will be the options passed to the compiler.
CFLAGS= -c -Wall

all: prog

prog: main.o isEven.o
	$(CC) main.o isEven.o -o prog

main.o: main.c
	$(CC) $(CFLAGS) main.c

isEven.o: isEven.c
	$(CC) $(CFLAGS) isEven.c

clean:
	rm -rf *.o prog