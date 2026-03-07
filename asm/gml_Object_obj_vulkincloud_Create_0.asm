.localvar 0 arguments

:[0]
push.d 0.25
pop.v.d self.size
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.rot
pushi.e 0
pop.v.i self.siner
pushi.e -1
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.gravity
pushi.e 90
pop.v.i self.gravity_direction
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
push.d 0.05
pop.v.d self.friction
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.siner

:[end]