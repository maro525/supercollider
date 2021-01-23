s.plotTree;

(
x = {
	var sig, freq, env;
	env = XLine.kr(1, 0.01, 5, doneAction:2);
	freq = XLine.kr(880, 110, 2, doneAction:2);
	sig = Pulse.ar(freq) * env;
}.play;
)

// plot default
Env.new.plot;

// Env Gen is better than XLine
(
{
	var sig, env;
	env = EnvGen.kr(Env.new, doneAction:2);
	sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

Env.new([0, 1, 0.2, 0], [0.5, 1, 2], [12, \sine, 0]).plot;

(
{
	var sig, env;
	env = EnvGen.kr(Env.new(
		[0, 1, 0.2, 0],
		[0.5, 1, 2],
		[12, \sine, 0]),
		doneAction: 2
	);
	sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

// gate & t_gate, adse gen
(
x = {
	arg t_gate = 0;
	var sig, env;
	env = EnvGen.kr(Env.adsr, t_gate);
	sig = VarSaw.ar(SinOsc.kr(16).range(500, 1000)) * env;
}.play;
)

x.set(\gate, 1);
x.set(\t_gate, 1);

x.free;

(
x = {
	arg t_gate = 0;
	var sig, env, freq;
	freq = EnvGen.kr(Env.adsr(0.005), t_gate, 200, 0.1);
	env = EnvGen.kr(Env.adsr, t_gate);
	sig = VarSaw.ar(SinOsc.kr(freq).range(500, 1000)) * env;
}.play;
)

x.set(\t_gate, 1);

x.free;

Server.freeAll;

// multichannel

s.meter;

x = {SinOsc.ar([300, 500, 700])}.play;

Server.freeAll;