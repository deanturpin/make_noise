#include "riff.h"
#include <cmath>
#include <iostream>
#include <vector>

int main(int argc, char *argv[]) {

  // Populate the WAV header
  wav_header wav;

  wav.riff_id          = 0x4646'4952;
  wav.riff_size        = 0x8000'0024;
  wav.wave_tag         = 0x4556'4157;
  wav.format_id        = 0x2074'6D66;
  wav.format_size      = 16;
  wav.format_tag       = 1;
  wav.channels         = 1;
  wav.sample_rate      = 2000;
  wav.bit_depth        = 16;
  wav.bytes_per_second = wav.sample_rate * wav.bit_depth / 8;
  wav.block_align      = 1;
  wav.data_id          = 0x6174'6164;
  wav.data_size        = 0x8000'0000;

  // Parse command line
  std::vector<double> frequencies;
  for (int i = 1; i < argc; ++i)
    frequencies.push_back(atof(argv[i]));

  // Add a default frequency if none given
  if (frequencies.empty())
    frequencies.push_back(440.0);

  // Write the WAV header
  std::cout.write(reinterpret_cast<char *>(&wav), sizeof(wav));

  // Create a second's worth of samples
  for (unsigned long i = 0; i < wav.sample_rate / 10; ++i) {

    // Add all the frequencies into the mix
    unsigned short sample = 0;
    for (const auto &f : frequencies) {

      // Scale amplitude as more frequencies are added
      const double scale      = frequencies.size() * 2;
      const double phase      = 2.0 * M_PI * i;
      const double full_scale = 0xffff;

      // Samples per complete cycle
      const double interval = 1.0 * wav.sample_rate / f;

      if (f > 0)
        sample += static_cast<unsigned short>(sin(phase / interval) *
                                              full_scale / scale);
    }

    // 2's comp
    sample = ~sample + 1;

    std::cout.write(reinterpret_cast<char *>(&sample), sizeof(sample));
  }

  return 0;
}
