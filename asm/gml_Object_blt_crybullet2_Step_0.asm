.localvar 0 arguments

:[0]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.image_angle
push.v self.disappear
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_alpha
push.d 0.08
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]