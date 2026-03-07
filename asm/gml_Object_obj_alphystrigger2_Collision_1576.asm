.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 125
cmp.i.v GT
bf [3]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[end]