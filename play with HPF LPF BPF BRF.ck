// pass noise through low pass filter
Noise nz => BPF lp => dac;
// set frequency and Q

100 => lp.Q;
0.8 => lp.gain;

for(0 => int i;i<100; i++) {
    10 + i* 20.0 => lp.freq;   
    10:: ms => now;
}