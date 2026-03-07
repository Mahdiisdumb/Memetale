.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.alphadown
sub.v.v
pop.v.v self.image_alpha
push.v self.size
push.v self.growth
add.v.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]