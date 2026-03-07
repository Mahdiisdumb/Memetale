.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[1]
pushi.e 0
push.v self.heart
conv.v.i
pop.v.i [stacktop]self.depth
call.i instance_destroy(argc=0)
popz.v

:[end]