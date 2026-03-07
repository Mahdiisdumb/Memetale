.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pushi.e -5
pushi.e 7
pop.v.i [array]global.flag
call.i room_restart(argc=0)
popz.v

:[end]