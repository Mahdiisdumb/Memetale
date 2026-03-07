.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
pushi.e -1
pop.v.i global.turntimer
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3
pop.v.i global.mnfight

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]