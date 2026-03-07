.localvar 0 arguments

:[0]
push.v self.image_angle
pushi.e 1
add.i.v
pop.v.v self.image_angle
push.v self.size
push.d 0.05
add.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 7
cmp.i.v GT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]