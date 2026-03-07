.localvar 0 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.y
pushi.e 540
cmp.i.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.image_angle
pushi.e 1
add.i.v
pop.v.v self.image_angle

:[end]