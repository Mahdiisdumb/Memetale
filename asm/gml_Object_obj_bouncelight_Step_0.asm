.localvar 0 arguments

:[0]
push.v self.image_angle
push.v self.hspeed
pushi.e 5
mul.i.v
push.v self.inithspeed
add.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.image_angle
push.v self.y
pushi.e 400
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]