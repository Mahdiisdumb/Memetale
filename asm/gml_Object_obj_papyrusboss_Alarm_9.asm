.localvar 0 arguments

:[0]
call.i scr_levelup(argc=0)
popz.v
pushi.e 0
pop.v.i global.border
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]