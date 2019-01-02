(
var num = 32;
{ Mix.arFill(num, {
	var freqR, freqL;
	freqL = 440 * (1.5 ** rrand(1,6)) * (0.5 ** rrand(1, 8));
	freqR = 442 * (1.5 ** rrand(1,6)) * (0.5 ** rrand(1, 8));
	SinOsc.ar([freqL, freqR], pi.rand, 1.0/num);
})}.play;
)