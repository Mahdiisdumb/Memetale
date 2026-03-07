.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]