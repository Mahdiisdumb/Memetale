.localvar 0 arguments

:[0]
push.v self.image_angle
push.v self.ang
add.v.v
pop.v.v self.image_angle
push.v self.form
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.size
push.d 0.3
add.d.v
pop.v.v self.size

:[2]
push.v self.size
push.d 2.8
cmp.d.v GT
bf [6]

:[3]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[5]
pushi.e 1
pop.v.i self.form

:[6]
push.v self.form
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.size
push.d 0.6
sub.d.v
pop.v.v self.size
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[8]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]