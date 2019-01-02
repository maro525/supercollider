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