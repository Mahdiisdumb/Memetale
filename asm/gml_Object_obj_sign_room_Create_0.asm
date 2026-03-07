.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushbltn.v self.room
pushi.e 304
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1683
pop.v.i self.sprite_index

:[2]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1661
pop.v.i self.sprite_index

:[4]
pushi.e 0
pop.v.i self.talkedto
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1586
pop.v.i self.sprite_index

:[end]