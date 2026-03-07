.localvar 0 arguments

:[0]
push.v self.exist
pushi.e 1
sub.i.v
pop.v.v self.exist
push.v self.exist
pushi.e 10
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.exist
pushi.e 0
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]