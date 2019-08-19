FLAGS=-std=c++2a -Wall -pedantic -pedantic-errors -O1
CXX=g++-9

tony.o: tony.cpp
	$(CXX) $(FLAGS) -o $@ $<

clean:
	rm -f tony.o

noise: tony.o
	./$< 400 500.0 600 | aplay

install: tony.o
	cp $< /usr/bin/tony

scale:
	./tony.o 440.00 | aplay
	./tony.o 466.16 | aplay
	./tony.o 493.88 | aplay
	./tony.o 523.25 | aplay
	./tony.o 554.37 | aplay
	./tony.o 587.33 | aplay
	./tony.o 622.25 | aplay
	./tony.o 659.25 | aplay
	./tony.o 698.46 | aplay
	./tony.o 739.99 | aplay
	./tony.o 783.99 | aplay
	./tony.o 830.61 | aplay
	./tony.o 880.00 | aplay
