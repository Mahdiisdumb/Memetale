.localvar 0 arguments

:[0]
push.v self.size
push.d 0.04
add.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.y
pushi.e 400
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.direction
pop.v.v self.image_angle

:[end]