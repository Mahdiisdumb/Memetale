.localvar 0 arguments

:[0]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
push.v self.t
pushi.e 7
cmp.i.v GT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.08
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
push.d 0.02
cmp.d.v LTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle

:[end]