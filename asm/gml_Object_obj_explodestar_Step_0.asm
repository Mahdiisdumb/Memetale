.localvar 0 arguments

:[0]
push.v self.big
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[2]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.aa
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.2
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale

:[4]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 19
cmp.i.v GT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]