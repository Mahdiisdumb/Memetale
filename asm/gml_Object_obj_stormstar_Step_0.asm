.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.counter
pushi.e 20
cmp.i.v LT
bf [2]

:[1]
pushi.e 244
conv.i.v
pushi.e 100
conv.i.v
push.v self.siner
pushi.e 12
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.image_blend

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[3]
push.v self.counter
pushi.e 20
cmp.i.v GT
bf [5]

:[4]
push.d 0.5
pop.v.d self.image_speed
push.i 16777215
pop.v.i self.image_blend

:[5]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 30
cmp.i.v GTE
bf [7]

:[6]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[8]
push.v self.big
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
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

:[10]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
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

:[12]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]