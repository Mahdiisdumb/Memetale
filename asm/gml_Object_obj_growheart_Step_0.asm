.localvar 0 arguments

:[0]
push.v self.size
push.d 0.3
add.d.v
pop.v.v self.size
push.v self.alpha
push.d 0.07
sub.d.v
pop.v.v self.alpha
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.alpha
pop.v.v self.image_alpha
push.v self.alpha
push.d 0.07
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]