.localvar 0 arguments

:[0]
pushi.e 4
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.siner
push.d 0.1
pop.v.d self.size

:[end]