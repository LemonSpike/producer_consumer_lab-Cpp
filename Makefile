CC=g++ -Wall -Wextra

all: main

main: helper.o main.o
	$(CC) -pthread -o main helper.o main.o

main.o: helper.cc main.cc
	$(CC) -c -g helper.cc main.cc

tidy:
	rm -f *.o core

clean:
	rm -f main producer consumer *.o core
