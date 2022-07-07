SinOsc vibrato => SawOsc viol => ADSR env => dac;
2 => viol.sync;
6.0 => vibrato.freq;

env.set(100::ms, 100::ms, 0.5, 100::ms);
62 => int keyNote;
[0, 2, 4, 5, 7, 9, 11, 12] @=> int scale[];

for(0 => int i;i<scale.cap();i++) {
    Std.mtof(scale[i]+keyNote) => viol.freq;
    1 => env.keyOn;
    0.3 :: second => now;
    1 => env.keyOff;
    0.1 :: second => now;
}

1 => env.keyOn;
10.0 => vibrato.gain;
1.0 :: second => now;
0 => env.keyOff;
0.2 :: second => now;