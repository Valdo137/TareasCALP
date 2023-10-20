// Secuencias

// Para cambiar el tempo
TempoClock.tempo=120/60

(// puede comentar esta línea depués de declarar las secuencias para declarar individualmente
(
~sec1 = Pdef(\sec, Pbind(\instrument, \pulse,
	\dur, Pseq([0.125, 0.125, 0.125, Pn(0.1, 1), 1], inf),
	\amp, 0.3,
	\freq, Pseq(130, 150, 100, 120, Pn(150, 1), Pseq([150, 160, 100, 150], 1)], inf),
	\rel, 0.1,
	\out, 0
))
);

(
~sec2 = Pdef(\sec2, Pbind(\instrument, \saw,
	\dur, Pseq([0.1, 0.1, 0.5, 0.5, Pn(0.7, 2)], inf),
	\amp, 0.1,
	\freq, Pseq([630, 330, 700, 650, 350, 700, 876, 334], inf),
	\rel, 0.1,
	\out, 0
))
);

(
~sec3 = Pdef(\sec3, Pbind(\instrument, \tri,
	\dur, 0.1,
	\amp, Pseq([0.01, 0.02, 0.15, 0.01, 0.03, 0.02, 0.15, 0.01, Pseq([0.1, 0.1, 0.01, 0.1], 2)], inf),
	\at, 0.1,
	\rel, 0.3,
	\out, 17
))
);

(
~sec4 = Pdef(\sec4, Pbind(\instrument, \sine,
	\dur, 0.7,
	\amp, 0.1,
	\freq, 396,
	\at, 0.7, \rel, 0.3,
	\out, 0
))
);

(
~sec5 = Pdef(\sec5, Pbind(\instrument, \sine,
	\dur, 0.7,
	\amp, 0.1,
	\freq, 101,
	\at, 0.1, \rel, 0.1,
	\out, 0
))
);

(
~sec6 = Pdef(\sec6, Pbind(\instrument, \pulse,
	\dur, Pseq([0.1, 0.1, 0.1, Pn(0.3, 2), 2], inf),
	\amp, 0.1,
	\freq, Pseq([100, 150, 100, 120, Pn(150, 4), Pseq([100, 160, 100, 150], 2)], inf),
	\rel, 0.1,
	\out, 0
))
);

(
~sec7 = Pdef(\sec7, Pbind(\instrument, \sine,
	\dur, 0.77,
	\amp, 0.5,
	\freq, 51.913087197493,
	\at, 0.1, \rel, 0.1,
	\out, 0
))
);

(
~son1 = Pdef(\son1, Pbind(\instrument, \audio,
	\dur, Pseq([0.25, 0.125, 0.125], inf),
	\sus, Pseq([0.04, 0.02], inf),
	\rel, Pseq([0.2, 0.1, 0.01, 0.02], inf),
	\rate, Pseq([1, 1.5, 1, 1, 1.8], inf),
	\sp, Pseq([0.1, 0.5, 0.75, 0.1, Pn(0.2, 4)], inf),
	\amp, 0.6,
	\out, 0
))
);
);


~sec1.play.quant(4);
~sec2.play.quant(4);
~sec3.play.quant(4);
~sec4.play.quant(4);
~sec5.play.quant(4);
~sec6.play.quant(4);
~sec7.play.quant(4);
~son1.play.quant(4);

Pbindef(\sec, \freq, Pseq([300, 400, 800, 790, Pn(350, 3), Pseq([700, 700, 470, 750], 3)].pyramid, inf));
Pbindef(\sec4, \dur, Pseq([0.375, 0.125, 0.5, 0.5, 0.5], inf), \freq, Pseq([100, 175, Pn(300, 3)], inf));



// modificación de efectos
~rev.set(\mix, 0.5, \room, 0.5, \damp, 0.5);
~dly.set(\dt, 0.25, \dct, 2.1, \out, 0);
~lpf.set(\cfl, 100);
~hpf.set(\cfh, 1000);
~bpf.set(\cfb, 1000);

~sec1.stop;
~sec2.stop;
~sec3.stop;
~sec4.stop;
~sec5.stop;
~sec6.stop;
~sec7.stop;
~son1.stop;

s.quit;