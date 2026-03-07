.localvar 0 arguments

:[0]
push.v self.image_xscale
push.d 0.25
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.25
add.d.v
pop.v.v self.image_yscale
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]