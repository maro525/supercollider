{
	a = SinOsc.ar([440, 442], 0, 0.2);
	b = SinOsc.ar([660, 663], 0, 0.2);
	c = SinOsc.ar([220, 221], 0, 0.2);
	Mix([a, b, c]);
}.play;