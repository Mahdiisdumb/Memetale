.localvar 0 arguments

:[0]
push.v self.fadeout
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_alpha
push.d 0.1
cmp.d.v GT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
b [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]