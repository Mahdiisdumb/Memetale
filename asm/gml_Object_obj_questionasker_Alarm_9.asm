.localvar 0 arguments

:[0]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]