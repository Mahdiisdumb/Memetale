.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
push.v global.turntimer
pushi.e 60
add.i.v
pop.v.v global.turntimer

:[end]