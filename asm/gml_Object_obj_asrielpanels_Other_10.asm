.localvar 0 arguments

:[0]
push.v self.thisvol
push.d 0.2
sub.d.v
pop.v.v self.thisvol
push.v self.thisvol
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
push.v self.thisvol
pushglb.v global.batmusic2
call.i caster_set_volume(argc=2)
popz.v

:[end]