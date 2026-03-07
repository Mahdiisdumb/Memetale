.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.hspeed
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pop.v.v self.y
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_xscale
push.d 0.04
add.d.v
pop.v.v self.image_xscale

:[2]
push.v self.image_yscale
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.image_yscale
push.d 0.04
add.d.v
pop.v.v self.image_yscale

:[4]
push.v self.siner
pushi.e 60
cmp.i.v GT
bf [end]

:[5]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]