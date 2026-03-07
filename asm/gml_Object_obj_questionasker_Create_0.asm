.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e -1
pop.v.i self.phase
pushi.e 0
pop.v.i self.q
push.s "No question."@48396
pop.v.s self.qtext
push.s "Funyuns"@48398
pop.v.s self.a1
push.s "Juggalos"@48400
pop.v.s self.a2
push.s "Happy Beefsteak"@48402
pop.v.s self.a3
push.s "Thunder muffin"@48404
pop.v.s self.a4
pushi.e 0
pop.v.i self.quiztimer
pushi.e -1
pop.v.i self.correct
pushi.e -1
pop.v.i self.answer
pushi.e 4
pop.v.i self.limit
pushi.e 0
pop.v.i self.quizinit
push.d 0.08
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.mettamt
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.shake

:[end]