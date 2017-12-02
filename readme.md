Command line tone generator that takes a list of frequencies and emits a WAV.
Pipe through ```aplay```.

```bash
$ make run
g++ -o tony tony.o
./tony 400 500 600 | aplay
Lecture WAVE 'stdin' : Signed 16 bit Little Endian, Fréquence 2000 Hz, Mono
```
