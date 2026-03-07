.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 2
pop.v.i global.mnfight
pushglb.v global.hp
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
pushi.e 385
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 6
pop.v.i global.border

:[5]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i global.border

:[7]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [end]

:[8]
pushi.e 6
pop.v.i global.border
pushi.e 11
pop.v.i self.con

:[end]