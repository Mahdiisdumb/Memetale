.localvar 0 arguments

:[0]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.image_angle
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]