.localvar 0 arguments

:[0]
push.d 0.025
pop.v.d self.friction
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.dirdir
push.v self.hspeed
push.v self.dirdir
push.d 0.13
conv.d.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
push.v self.dirdir
push.d 0.13
conv.d.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.vspeed
push.v self.size
push.d 0.02
add.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.size
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
push.v self.image_alpha
push.d 0.15
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.2
cmp.d.v LT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]