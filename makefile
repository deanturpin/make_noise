#
FLAGS=-std=c++14 -g -Wall -pedantic -pedantic-errors --coverage -lgcov

#
CXX=g++-6

tony.o: tony.cpp
	$(CXX) $(FLAGS) -o $@ $<

clean:
	rm -f tony.o

noise: tony.o
	./$< 400 500.0 600 | aplay
