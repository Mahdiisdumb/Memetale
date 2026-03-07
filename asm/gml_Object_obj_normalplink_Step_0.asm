.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.08
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.09
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]