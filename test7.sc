{
	SinOsc.ar([440, 442], 0, 0.2)
	+ SinOsc.ar([660, 663], 0, 0.2)
}.play;

{
	a = SinOsc.ar([440, 442], 0, 0.2);
	b = SinOsc.ar([660, 663], 0, 0.2);
	a + b;
}.play;