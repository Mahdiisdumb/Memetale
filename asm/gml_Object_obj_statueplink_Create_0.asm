.localvar 0 arguments

:[0]
pushi.e 60
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.speed
pushi.e 270
pop.v.i self.gravity_direction
push.d 0.2
pop.v.d self.gravity
pushi.e 1
pop.v.i self.image_alpha

:[end]