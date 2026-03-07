.localvar 0 arguments

:[0]
push.v self.size
push.d 0.1
add.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_angle
pushi.e 6
add.i.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]