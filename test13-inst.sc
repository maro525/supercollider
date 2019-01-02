{SinOsc.ar}.play;

// Synth("temp_146" : 1000)

SynthDef("sine", {Out.ar(0, SinOsc.ar)}).play;
SynthDef("sine", {Out.ar(1, SinOsc.ar)}).play;