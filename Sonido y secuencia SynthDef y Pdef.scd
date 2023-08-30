// Creación audiovisual con lenguajes de programación sesión 3

// prendemos supercollider
s.boot;

// apagamos supercollider
s.quit;

// medidores
s.meter;
s.scope;
s.freqscope;

// SynthDef
(
SynthDef(\misinte, {|frec=417, amp=0.5|
	var sen, env;
	sen=SinOsc.ar(frec, 0, amp);
	env=EnvGen.kr(Env.new([1,0,1],[0.1,0.1]),doneAction:inf);
	Out.ar(0, sen*env)
}).add
);

// Llamar a un SynthDef
a=Synth(\misinte,[\frec, rrand(639,741)]);

// liberar un Synth
a.free;

// ayuda de SynthDef
SynthDef.help;

// Envolventes
Env.help;
Env.new([0,1,0.5,1,0],[0.1,0.5,0.1,0.5]).plot;

// Pdef o definicón de patrón
Pattern.help;
Pbind.help;
Pdef.help;

(
~sec1=Pdef(\sec,
	Pbind(\instrument, \misinte,
		\dur, Pseq([0.25, 0.50, 0.25], inf),
		\frec, Pseq(285, 528, 639],inf),
		\amp, 3
	)
).play;
)
~sec1.play;
~sec1.stop;
