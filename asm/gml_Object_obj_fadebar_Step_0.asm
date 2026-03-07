.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.fadespeed
sub.v.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
push.v self.fadespeed
add.v.i
cmp.v.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[end]