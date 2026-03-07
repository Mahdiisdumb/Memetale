.localvar 0 arguments

:[0]
pushglb.v global.plot
push.v self.yarl
cmp.v.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_index

:[2]
pushbltn.v self.room
pushi.e 15
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 35
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.image_index

:[7]
pushbltn.v self.room
pushi.e 17
cmp.i.v EQ
bf [end]

:[8]
pushi.e -5
pushi.e 33
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 1
pop.v.i self.image_index

:[end]