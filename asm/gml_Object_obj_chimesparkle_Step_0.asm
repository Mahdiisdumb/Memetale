.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 30
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v GT
bf [5]

:[3]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.image_alpha
push.v 1200.image_alpha
cmp.v.v GT
bf [end]

:[6]
push.v 1200.image_alpha
pop.v.v self.image_alpha

:[end]