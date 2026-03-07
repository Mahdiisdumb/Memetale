.localvar 0 arguments

:[0]
push.v self.speed
pushi.e 6
cmp.i.v LT
bf [3]

:[1]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.ang
pushi.e 1
cmp.i.v GT
bf [3]

:[2]
push.v self.ang
push.d 0.5
sub.d.v
pop.v.v self.ang

:[3]
push.v self.image_angle
push.v self.ang
add.v.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]