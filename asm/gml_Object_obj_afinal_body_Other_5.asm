.localvar 0 arguments

:[0]
push.v self.psfx
call.i caster_free(argc=1)
popz.v
push.v self.seg
call.i caster_free(argc=1)
popz.v

:[end]