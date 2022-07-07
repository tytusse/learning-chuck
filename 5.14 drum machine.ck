SndBuf kick => dac;
SndBuf snare => dac;

fun void loadAudio(SndBuf buf, string name) {
    me.dir() + "/audio/" + name => buf.read;
    buf.samples() => buf.pos;
}

loadAudio(kick, "kick_01.wav");
loadAudio(snare, "snare_03.wav");

[1,0,0,0,1,0,0,0] @=> int kickpattern1[];
[0,0,1,0,0,0,1,0] @=> int kickpattern2[];
[1,0,1,0,1,0,1,0] @=> int snarepattern1[];
[1,1,1,1,0,1,1,1] @=> int snarepattern2[];

fun void playSection(int kickA[], int snareA[], float beattime){
    for(0 => int i;i<kickA.cap();i++) {
        if(kickA[i]){
            0 => kick.pos;
        }
        if(snareA[i]){
            0 => snare.pos;
        }
        beattime::second => now;
    }
}

while(true) {
    playSection(kickpattern1, snarepattern2, 0.2);
    playSection(kickpattern2, snarepattern2, 0.2);
    playSection(kickpattern1, snarepattern2, 0.2);
    playSection(kickpattern2, snarepattern1, 0.2);
}