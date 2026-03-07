.localvar 0 arguments

:[0]
push.v self.sfx
call.i caster_free(argc=1)
popz.v
push.v self.expl
call.i caster_free(argc=1)
popz.v

:[end]