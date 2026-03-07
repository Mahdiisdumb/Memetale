.localvar 0 arguments

:[0]
pushi.e 6
pop.v.i self.speed
push.d -0.3
pop.v.d self.friction
pushi.e 260
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
pushi.e 1
pop.v.i self.visible
pushi.e 8
pop.v.i self.dmg

:[end]