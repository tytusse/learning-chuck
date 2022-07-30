adc => Gain input => dac;
1 => input.gain;

input => Delay d1 => dac;
input => Delay d2 => dac;
input => Delay d3 => dac;

d1 => OneZero lp1 => d1;
d2 => OneZero lp2 => d2;
d3 => OneZero lp3 => d3;
/*
2000 => lp1.freq;
1200 => lp2.freq;
1200 => lp3.freq;

10 => lp1.Q;
10 => lp2.Q;
10 => lp3.Q;*/

0.6 => d1.gain => d2.gain => d3.gain;

0.061 :: second => d1.max => d1.delay;
0.083 :: second => d2.max => d2.delay;
0.097 :: second => d3.max => d3.delay;

while(1) {
    1.0 :: second => now;
}