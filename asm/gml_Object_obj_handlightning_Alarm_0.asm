.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2472
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_xscale
push.d 0.1
pop.v.d self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2484
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.v self.direction
pop.v.v self.image_angle

:[4]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.image_alpha

:[end]