SynthDef.new("test-SinOsc", {
	Out.ar(0, SinOsc.ar(440, 0, 0.2))
}).add;

Synth("test-SinOsc");