all: test_program

test_program: test_file.o
	g++ -std=c++17 -Wall -Wextra -o test_program test_file.o

test_file.o: test_file.cpp
	g++ -std=c++17 -Wall -Wextra -c test_file.cpp -o test_file.o

run: test_program
	./test_program

clean:
	rm -f test_file.o test_program