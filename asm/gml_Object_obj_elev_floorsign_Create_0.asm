.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushbltn.v self.room
pushi.e 214
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1013
pop.v.i self.sprite_index

:[2]
pushbltn.v self.room
pushi.e 168
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1014
pop.v.i self.sprite_index

:[4]
pushbltn.v self.room
pushi.e 169
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1015
pop.v.i self.sprite_index

:[6]
pushbltn.v self.room
pushi.e 156
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1016
pop.v.i self.sprite_index

:[8]
pushbltn.v self.room
pushi.e 157
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1017
pop.v.i self.sprite_index

:[10]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bf [end]

:[11]
pushi.e 1018
pop.v.i self.sprite_index

:[end]