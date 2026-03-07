.localvar 0 arguments

:[0]
push.v self.speed
push.d 0.5
cmp.d.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.03
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.image_xscale
pushi.e 1
conv.i.d
pushi.e 4
push.v self.image_xscale
pushi.e 8
mul.i.v
add.v.i
div.v.d
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
pushi.e 1
conv.i.d
pushi.e 4
push.v self.image_yscale
pushi.e 8
mul.i.v
add.v.i
div.v.d
add.v.v
pop.v.v self.image_yscale
push.v self.image_angle
push.v self.speed
pushi.e 1
add.i.v
add.v.v
pop.v.v self.image_angle

:[end]