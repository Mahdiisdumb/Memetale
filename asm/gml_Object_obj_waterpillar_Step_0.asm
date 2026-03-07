.localvar 0 arguments

:[0]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.v self.image_xscale
push.d 0.4
sub.d.v
pop.v.v self.image_xscale
push.v self.image_alpha
push.d 0.25
add.d.v
pop.v.v self.image_alpha
push.v self.image_yscale
push.d 0.3
add.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.image_alpha

:[3]
push.v self.image_yscale
pushi.e 1
cmp.i.v GTE
bf [5]

:[4]
pushi.e 2
pop.v.i self.on

:[5]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[6]
push.v self.on
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[8]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [end]

:[9]
push.v self.image_xscale
push.d 0.25
add.d.v
pop.v.v self.image_xscale
push.v self.image_alpha
push.d 0.25
sub.d.v
pop.v.v self.image_alpha
push.v self.image_yscale
push.d 0.4
sub.d.v
pop.v.v self.image_yscale
push.v self.image_yscale
push.d 0.1
cmp.d.v LT
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]