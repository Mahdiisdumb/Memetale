.localvar 0 arguments

:[0]
push.v self.size
push.d 0.5
add.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.size
pushi.e 2
cmp.i.v GT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
push.d 0.2
cmp.d.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]