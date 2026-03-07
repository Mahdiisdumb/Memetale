.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.image_alpha
push.d 0.02
add.d.v
pop.v.v self.image_alpha
push.v self.sparklefactor
pushi.e 1
add.i.v
pop.v.v self.sparklefactor
pushi.e 1199
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.sprite_width
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.j
push.v self.image_alpha
push.v self.j
conv.v.i
pop.v.v [stacktop]self.maxalpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.image_alpha

:[3]
push.v self.sparklefactor
pushi.e 110
cmp.i.v GT
bf [5]

:[4]
pushi.e 2
pop.v.i self.active

:[5]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.04
cmp.d.v LT
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]