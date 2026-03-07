.localvar 0 arguments

:[0]
push.v self.sfx_pb
call.i caster_free(argc=1)
popz.v
push.v self.sfx_cut
call.i caster_free(argc=1)
popz.v
push.v self.sfx_bc
call.i caster_free(argc=1)
popz.v
push.v self.sfx_spk
call.i caster_free(argc=1)
popz.v
push.v self.sfx_ap
call.i caster_free(argc=1)
popz.v

:[end]