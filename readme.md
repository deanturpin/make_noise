[![Build
Status](https://travis-ci.org/deanturpin/make_noise.svg?branch=master)](https://travis-ci.org/deanturpin/make_noise)

[![codecov](https://codecov.io/gh/deanturpin/make_noise/branch/master/graph/badge.svg)](https://codecov.io/gh/deanturpin/make_noise)

Command line tone generator that takes a list of frequencies (integer or
floating point) and emits a WAV. Pipe through ```aplay``` to make noise.

```bash
$ make noise 
g++ -std=c++14 -g -Wall -pedantic -pedantic-errors --coverage -lgcov -o tony.o
tony.cpp
./tony.o 400 500.0 600 | aplay
Lecture WAVE 'stdin' : Signed 16 bit Little Endian, Fréquence 2000 Hz, Mono
```

# Examples
```bash
tcpdump -v | while read line; do [[ $line =~ length\ ([0-9]+) ]] && echo ${BASH_REMATCH[1]}; done
```
