.localvar 0 arguments

:[0]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[end]