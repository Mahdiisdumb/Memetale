.localvar 0 arguments

:[0]
push.v self.image_angle
push.v self.ang
add.v.v
pop.v.v self.image_angle
push.v self.y
push.v self.ystart
push.v self.maxy
add.v.v
cmp.v.v GT
bf [end]

:[1]
pushi.e 1230
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]