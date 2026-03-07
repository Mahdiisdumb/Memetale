.localvar 0 arguments

:[0]
push.v self.beamsfx
call.i caster_free(argc=1)
popz.v
push.v self.beamsfx2
call.i caster_free(argc=1)
popz.v

:[end]