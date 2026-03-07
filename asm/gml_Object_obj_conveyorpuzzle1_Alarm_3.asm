.localvar 0 arguments

:[0]
push.v global.facing
pushi.e 1
add.i.v
pop.v.v global.facing
pushglb.v global.facing
pushi.e 3
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i global.facing

:[2]
pushi.e 4
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]