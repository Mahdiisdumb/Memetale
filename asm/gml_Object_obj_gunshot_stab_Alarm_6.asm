.localvar 0 arguments

:[0]
push.v self.gunsfx
call.i caster_free(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]