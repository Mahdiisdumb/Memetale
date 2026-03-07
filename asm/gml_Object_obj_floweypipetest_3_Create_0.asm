.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 150
pop.v.i self.op
pushi.e 0
pop.v.i self.flash
push.i 16777215
pop.v.i self.blend2
pushi.e 0
pop.v.i self.frozen
call.i scr_floweybodysave(argc=0)
popz.v

:[end]