.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_xscale
push.d 0.4
pop.v.d self.image_yscale
push.d 0.4
pop.v.d self.gravity
push.v self.image_angle
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.v
pop.v.v self.image_angle
push.v self.gravity_direction
push.v self.image_angle
add.v.v
pop.v.v self.gravity_direction
pushi.e 0
pop.v.i self.anim

:[end]