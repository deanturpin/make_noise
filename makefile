CXX=g++
FLAGS=-std=c++14 -g -Wall -pedantic -pedantic-errors --coverage -lgcov

tony.o: tony.cpp
	$(CXX) $(FLAGS) -o $@ $<

clean:
	rm -f tony.o

noise: tony
	./tony 400 500.0 600 | aplay
