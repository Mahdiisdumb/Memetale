.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 180
pop.v.i self.op
pushi.e 332
pop.v.i self.magicfactor
pushi.e 608
pop.v.i self.magicfactor2
pushi.e 1062
pop.v.i self.magicfactor3
pushi.e 0
pop.v.i self.flash
push.i 16777215
pop.v.i self.blend2
pushi.e 0
pop.v.i self.frozen
call.i scr_floweybodysave(argc=0)
popz.v

:[end]