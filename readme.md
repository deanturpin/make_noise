Command line tone generator that takes a list of floating point frequencies and
emits a WAV. Pipe through ```aplay```.

```bash
$ make noise
g++ -o tony tony.o
./tony 400 500 600 | aplay
Lecture WAVE 'stdin' : Signed 16 bit Little Endian, Fréquence 2000 Hz, Mono
```
