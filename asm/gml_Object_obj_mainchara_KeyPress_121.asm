.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i global.interact
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i global.phasing
b [end]

:[3]
pushi.e 0
pop.v.i global.phasing

:[end]