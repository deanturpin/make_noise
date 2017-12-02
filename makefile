CC=g++
FLAGS=-std=c++17 -O3 -Wall --pedantic

%.o:%.cpp
	$(CC) $(FLAGS) -o $@ -c $<

tony: tony.o
	$(CC) -o $@ $^

clean:
	rm -f tony

run: tony
	./tony 400 500 600 | aplay
