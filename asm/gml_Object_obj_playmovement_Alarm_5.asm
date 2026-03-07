.localvar 0 arguments

:[0]
push.v global.facing
pushi.e 1
add.i.v
pop.v.v global.facing
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushglb.v global.facing
pushi.e 3
cmp.i.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i global.facing

:[end]