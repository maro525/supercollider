// ar, kr
({
	var ampOsc;
	ampOsc = SinOsc.kr(0.5, 1.5pi, 0.5, 0.5);
	SinOsc.ar(440, 0, ampOsc);
}.play;)

// multiple
{SinOsc.ar([440, 442], 0, 0.2)}.play;

// random
(
{ var freq;
	freq = [[660, 880], [440, 660], 1320, 880].choose;
	SinOsc.ar(freq, 0, 0.2);
}.play;
)

// pan
(
{
	Pan2.ar(SinOsc.ar(440, 0, 0.2), SinOsc.kr(0.5));
}.play;
)

(
{
	a = Pan2.ar(SinOsc.ar(220, 0, 0.2), SinOsc.kr(0.5));
	b = Pan2.ar(SinOsc.ar(330, 0, 0.2), SinOsc.kr(-0.6));
	a + b;
}.play;
)

// mix
{
	a = SinOsc.ar([440, 442], 0, 0.2);
	b = SinOsc.ar([660, 663], 0, 0.2);
	c = SinOsc.ar([220, 221], 0, 0.2);
	Mix([a, b, c]);
}.play;

// ランダムな周波数を重ねる
(
var num = 8;
{Mix.arFill(num, {
	SinOsc.ar([50+1000.rand, 50+1000.rand], pi.rand, 1.0/num)
})}.play;
)

// number.rand から ExpRand(low, hi)へ
(
var num = 8;
{Mix.arFill(num, {
	SinOsc.ar([ExpRand(50, 800), ExpRand(50, 800)], pi.rand, 1.0/num)
})}.play;
)

(
var num = 8;
{Mix.arFill(num, {
	var freqR, freqL;
	freqL = 220 * [1.0, 3.0/2.0, 4.0/3.0].choose;
	freqR = 220 * [1.0, 3.0/2.0, 4.0/3.0].choose;
	SinOsc.ar([freqL, freqR], pi.rand, 1.0/num);
})}.play;
)

(
	var num = 8;
	{ Mix.arFill(num, {
		var freqR, freqL;
		freqL = 220 * [1.0, 3.0/2.0, 4.0/3.0].choose * [1.0, 3.0/2.0, 4.0/3.0].choose + 10.0.rand;
		freqR = 220 * [1.0, 3.0/2.0, 4.0/3.0].choose * [1.0, 3.0/2.0, 4.0/3.0].choose + 10.0.rand;
		SinOsc.ar([freqL, freqR], pi.rand, 1.0/num);
	})}.play;
)

(
var num = 32;
{ Mix.arFill(num, {
	var freqR, freqL;
	freqL = 440 * (1.5 ** rrand(1,6)) * (0.5 ** rrand(1, 8));
	freqR = 442 * (1.5 ** rrand(1,6)) * (0.5 ** rrand(1, 8));
	SinOsc.ar([freqL, freqR], pi.rand, 1.0/num);
})}.play;
)

// synth def
{SinOsc.ar}.play;

SynthDef("sine", {Out.ar(0, SinOsc.ar)}).play;
SynthDef("sine", {Out.ar(1, SinOsc.ar)}).play;

SynthDef.new("test-SinOsc", {
	Out.ar(0, SinOsc.ar(440, 0, 0.2))
}).add;

Synth("test-SinOsc");

// melody
Pbind(
	\midinote, Pseq([72, 72, 79, 79, 81, 81, 79], 1),
	\dur, Pseq([0.5], 6) ++ Pseq([1.0], 1)
).play;

