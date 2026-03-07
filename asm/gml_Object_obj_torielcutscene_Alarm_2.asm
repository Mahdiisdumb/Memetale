.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.border
pushi.e 1
pop.v.i global.plot
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.specialbattle
pushi.e 5
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]