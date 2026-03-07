.localvar 0 arguments

:[0]
push.v self.intronoise
call.i caster_free(argc=1)
popz.v
call.i room_goto_previous(argc=0)
popz.v

:[end]