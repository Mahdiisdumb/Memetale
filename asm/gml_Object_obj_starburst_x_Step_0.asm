.localvar 0 arguments

:[0]
push.v self.size
push.d 0.1
sub.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.size
push.d 1.5
cmp.d.v GT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.image_angle
push.v self.aspeed
add.v.v
pop.v.v self.image_angle
push.v self.aspeed
pushi.e 3
sub.i.v
pop.v.v self.aspeed
push.v self.size
push.d 0.3
cmp.d.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]