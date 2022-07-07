Noise noise => ADSR pluck => DelayA str => dac;

str => OneZero lowPass => str;

pluck.set(0.002 :: second, 0.002 :: second, 0.0, 0.01::second);

while(true) {
    Math.random2f(110, 440) :: samp => str.delay;
    1 => pluck.keyOn;
    0.1 :: second => now;
}

