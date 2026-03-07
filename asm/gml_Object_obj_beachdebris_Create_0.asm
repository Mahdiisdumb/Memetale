.localvar 0 arguments

:[0]
push.d 0.6
pop.v.d self.gravity
pushi.e 20
pushi.e 140
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
push.d 0.06
pop.v.d self.friction
pushi.e 4
pop.v.i self.speed

:[end]