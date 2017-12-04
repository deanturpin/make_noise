Command line tone generator that takes a list of frequencies (integer or
floating point) and emits a WAV. Pipe through ```aplay``` to make noise.

```bash
$ make noise
g++ -o tony tony.o
./tony 400 500 600 | aplay
Lecture WAVE 'stdin' : Signed 16 bit Little Endian, Fréquence 2000 Hz, Mono
```
