// (
// var num = 8;
// { Mix.arFill(num, {
// 	var freqR, freqL;
// 	freqL = 220 * [1.0, 3.0/2.0, 4.0/3.0].choose * [1.0, 3.0/2.0, 4.0/3.0].choose;
// 	freqR = 220 * [1.0, 3.0/2.0, 4.0/3.0].choose * [1.0, 3.0/2.0, 4.0/3.0].choose;
// 	SinOsc.ar([freqL, freqR], pi.rand, 1.0/num);
// })}.play;
// )

(
	var num = 8;
	{ Mix.arFill(num, {
		var freqR, freqL;
		freqL = 220 * [1.0, 3.0/2.0, 4.0/3.0].choose * [1.0, 3.0/2.0, 4.0/3.0].choose + 10.0.rand;
		freqR = 220 * [1.0, 3.0/2.0, 4.0/3.0].choose * [1.0, 3.0/2.0, 4.0/3.0].choose + 10.0.rand;
		SinOsc.ar([freqL, freqR], pi.rand, 1.0/num);
	})}.play;
)