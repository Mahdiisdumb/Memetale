.localvar 0 arguments

:[0]
push.v self.sprite_index
pushi.e 1212
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i 1576.visible
pushi.e 0
pop.v.i self.image_speed
pushi.e 1191
pop.v.i self.sprite_index
pushi.e 1191
pop.v.i self.dsprite

:[end]