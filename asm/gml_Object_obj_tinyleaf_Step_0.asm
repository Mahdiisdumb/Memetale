.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 6
cmp.i.v GT
bf [end]

:[1]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]