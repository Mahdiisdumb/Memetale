.localvar 0 arguments

:[0]
push.d 0.25
pop.v.d self.image_speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
pushi.e 7
pop.v.i self.speed
pushi.e 270
pop.v.i self.gravity_direction
push.d 0.2
pop.v.d self.gravity

:[end]