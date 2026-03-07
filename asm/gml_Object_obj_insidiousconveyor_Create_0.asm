.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.collide
pushglb.v global.plot
pushi.e 167
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.active
pushi.e -1
pop.v.i self.collide

:[2]
pushi.e 0
pop.v.i self.ss

:[end]