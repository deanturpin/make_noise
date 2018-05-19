FLAGS=-std=c++14 -g -Wall -pedantic -pedantic-errors --coverage -lgcov
CXX=g++-6

%.o: %.cpp
	$(CXX) $(FLAGS) -o $@ $<

all: tony.o

clean:
	rm -f tony.o

noise: tony
	./tony 400 500.0 600 | aplay
