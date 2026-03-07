.localvar 0 arguments

:[0]
push.v self.cr
call.i caster_free(argc=1)
popz.v
push.v self.powersfx
call.i caster_free(argc=1)
popz.v

:[end]