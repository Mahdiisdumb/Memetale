.localvar 0 arguments

:[0]
push.d 0.11
pop.v.d self.gravity
pushi.e -2
pop.v.i self.vspeed
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 2
sub.i.v
pop.v.v self.hspeed
push.d 0.01
pop.v.d self.friction

:[end]