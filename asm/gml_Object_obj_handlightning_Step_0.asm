.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.3
add.d.v
pop.v.v self.image_alpha
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.timer
pushi.e 5
cmp.i.v GT
bf [3]

:[1]
push.v self.image_alpha
push.d 0.5
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 255
conv.i.v
pushi.e 150
conv.i.v
push.v self.siner
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.image_blend
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.image_angle
pushi.e 12
add.i.v
pop.v.v self.image_angle
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale

:[end]