.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v global.turntimer
pushi.e 10
add.i.v
pop.v.v global.turntimer

:[end]