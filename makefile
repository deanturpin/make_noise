FLAGS=-std=c++2a -Wall -pedantic -pedantic-errors -O1
CXX=g++-8

tony.o: tony.cpp
	$(CXX) $(FLAGS) -o $@ $<

clean:
	rm -f tony.o

noise: tony.o
	./$< 400 500.0 600 | aplay

install: tony.o
	cp $< /usr/bin/tony
