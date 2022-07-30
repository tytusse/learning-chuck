SinOsc vibrato => SinOsc viol => 
//ADSR env => 
Gain g => dac;

2 => viol.sync;
1000 => vibrato.gain;
100.0 => viol.freq;
100 => vibrato.freq;
1 => g.gain;
//env.set(100::ms, 100::ms, 0.5, 100::ms);
2.0 => float step;
500 => int nSteps;
while(true) {
    for(1 => int i; i<= nSteps; i++){
        i*step  => vibrato.freq;
        10::ms => now;        
    }
    for(nSteps => int i; i>= 0; i--){
        i*step  => vibrato.freq;
        10::ms => now;        
    }
}