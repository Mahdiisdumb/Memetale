.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v LT
bf [5]

:[1]
push.v self.image_yscale
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_yscale
push.d 0.25
add.d.v
pop.v.v self.image_yscale

:[3]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [5]

:[4]
push.v self.image_alpha
push.d 0.15
add.d.v
pop.v.v self.image_alpha

:[5]
push.v self.timer
pushi.e 6
cmp.i.v GT
bf [7]

:[6]
push.v self.image_yscale
push.d 0.25
sub.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[7]
push.v self.timer
pushi.e 9
cmp.i.v GT
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]