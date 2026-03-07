.localvar 0 arguments

:[0]
pushi.e 330
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gravity_direction
push.d 0.03
pop.v.d self.gravity
push.d 0.1
push.d 0.8
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.vspeed
push.v self.x
pushi.e 400
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 3
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.angspeed

:[end]