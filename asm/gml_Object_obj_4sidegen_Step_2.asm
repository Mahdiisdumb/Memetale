.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e 273
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 4
pop.v.i global.mnfight

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]