.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]