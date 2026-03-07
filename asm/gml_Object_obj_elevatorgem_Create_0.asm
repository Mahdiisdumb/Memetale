.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushbltn.v self.room
pushi.e 214
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1009
pop.v.i self.sprite_index

:[2]
pushbltn.v self.room
pushi.e 168
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1009
pop.v.i self.sprite_index

:[4]
pushbltn.v self.room
pushi.e 169
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1009
pop.v.i self.sprite_index

:[end]