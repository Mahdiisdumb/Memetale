.localvar 0 arguments

:[0]
pushglb.v global.currentsong
pop.v.v self.mysong
push.v self.mysong
call.i caster_get_volume(argc=1)
pop.v.v self.volume
push.d 0.1
pop.v.d self.fadespeed

:[end]