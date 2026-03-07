.localvar 0 arguments

:[0]
push.v self.intromusic
call.i caster_stop(argc=1)
popz.v
push.v self.intromusic
call.i caster_free(argc=1)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[end]