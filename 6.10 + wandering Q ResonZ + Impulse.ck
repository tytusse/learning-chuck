Impulse imp => ResonZ filt => dac;

20.0 => float lowQ;
500.0 => float highQ;
15.0 => float delta;

100.0 => float nowQ;
1.0 => float sign;

while(true) {
    if(nowQ > highQ) {
        -1.0 => sign;
    }
    if(nowQ < lowQ) {
        1.0 => sign;
    }
    
    sign*delta +=> nowQ;
    nowQ => filt.Q;
    Math.random2f(500, 2500) => filt.freq;
    
    100 => imp.next;
    0.1 ::second => now;
}