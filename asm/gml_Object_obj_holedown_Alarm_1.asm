.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v global.facing
pushi.e 1
add.i.v
pop.v.v global.facing
pushglb.v global.facing
pushi.e 3
cmp.i.v GT
bf [3]

:[2]
pushi.e 0
pop.v.i global.facing

:[3]
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]