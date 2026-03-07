.localvar 0 arguments

:[0]
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
add.d.v
pop.v.v self.image_yscale

:[2]
push.v self.y
push.v 762.y
pushi.e 15
sub.i.v
cmp.v.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
push.v 363.purple
pushi.e 4
add.i.v
pop.v.v 363.purple

:[4]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.image_angle

:[end]