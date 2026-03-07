.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v global.battlephase
pushi.e 1
add.i.v
pop.v.v global.battlephase
push.v global.soul_rescue
pushi.e 1
add.i.v
pop.v.v global.soul_rescue

:[end]