Noise pluck => Delay str => dac;
str => OneZero filter => str;
// 100hz at 44.1k sample rate
441.0 :: samp => str.delay;
0.98 => str.gain;
1.0 => pluck.gain;
441.0 :: samp => now;
0.0 => pluck.gain;
5 :: second => now;