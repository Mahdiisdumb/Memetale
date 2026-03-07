.localvar 0 arguments

:[0]
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
add.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.con
push.d 2.2
cmp.d.v EQ
bf [6]

:[4]
push.v self.image_xscale
push.d 0.4
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.4
add.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 2
cmp.i.v GTE
bf [6]

:[5]
pushi.e 3
pop.v.i self.con

:[6]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [8]

:[7]
push.d 2.2
pop.v.d self.con

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.d 2.1
pop.v.d self.con

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.d 0.8
pop.v.d self.image_xscale
push.d 0.8
pop.v.d self.image_yscale
push.d 1.5
pop.v.d self.con

:[12]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [end]

:[13]
push.v self.image_xscale
push.d 0.1
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
sub.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
push.d 0.2
cmp.d.v LT
bf [end]

:[14]
pushi.e 2
pop.v.i self.con

:[end]