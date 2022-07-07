Rhodey instr => dac;

while (true) {
    Math.random2f(100.0, 300.0) => instr.freq;
    1 => instr.noteOn;
    Math.random2f(0.2, 0.5) :: second => now;
    1 => instr.noteOff;
    Math.random2f(0.05,0.1) :: second => now;
}