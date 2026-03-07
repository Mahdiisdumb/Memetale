.localvar 0 arguments

:[0]
pushi.e 1000
conv.i.v
call.i sleep_x(argc=1)
popz.v
call.i room_restart(argc=0)
popz.v

:[end]