.localvar 0 arguments

:[0]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]