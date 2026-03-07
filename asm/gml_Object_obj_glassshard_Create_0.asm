.localvar 0 arguments

:[0]
pushi.e 70
conv.i.v
call.i random(argc=1)
pushi.e 30
sub.i.v
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
push.d 0.05
pop.v.d self.gravity
push.d 0.15
pop.v.d self.friction
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle

:[end]