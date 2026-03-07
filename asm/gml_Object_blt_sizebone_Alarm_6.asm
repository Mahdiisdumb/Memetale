.localvar 0 arguments

:[0]
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 0
pop.v.i global.border
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]