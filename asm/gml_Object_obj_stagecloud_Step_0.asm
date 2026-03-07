.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.03
add.d.v
pop.v.v self.image_alpha
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [end]

:[1]
push.v self.image_alpha
push.d 0.07
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]