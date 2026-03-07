.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.x
pushi.e 0
pop.v.i self.y
push.d 0.5
pop.v.d self.image_alpha
pushi.e 20
pop.v.i self.image_xscale
pushi.e 20
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.phase
pushbltn.v self.room
pushi.e 112
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1671
pop.v.i self.sprite_index

:[end]