Impulse imp => Delay str => dac;
str => str;
// 100hz at 44.1k sample rate
441.0 :: samp => str.delay;
0.98 => str.gain;
1.0 => imp.next;
5 :: second => now;