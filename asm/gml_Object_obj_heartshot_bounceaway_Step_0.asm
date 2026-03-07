.localvar 0 arguments

:[0]
push.v self.image_angle
push.v self.aspeed
add.v.v
pop.v.v self.image_angle
push.v self.x
pushbltn.v self.room_width
pushi.e 20
add.i.v
cmp.v.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.x
pushi.e -20
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]