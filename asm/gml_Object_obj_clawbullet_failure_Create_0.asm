.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
push.d 0.2
conv.d.v
call.i random(argc=1)
pop.v.v self.speed
pushi.e 0
pop.v.i self.dmg

:[end]