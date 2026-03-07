.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[3]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[4]
push.d 0.5
pop.v.d self.image_speed
pushi.e 2
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.sz
pushi.e 2
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.sz2
push.v self.image_index
pushi.e 9
cmp.i.v GT
bf [6]

:[5]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[6]
push.v self.image_alpha
push.d 0.3
cmp.d.v LT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.sz
pop.v.v self.image_xscale
push.v self.sz2
pop.v.v self.image_yscale

:[end]