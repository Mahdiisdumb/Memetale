.localvar 0 arguments

:[0]
pushi.e 4
pop.v.i self.col
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.interact

:[end]