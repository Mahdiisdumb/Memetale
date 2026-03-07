.localvar 0 arguments

:[0]
push.v global.attacktype
pushi.e 1
add.i.v
pop.v.v global.attacktype
call.i room_restart(argc=0)
popz.v

:[end]