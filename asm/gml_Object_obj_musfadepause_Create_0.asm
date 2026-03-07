.localvar 0 arguments

:[0]
pushglb.v global.currentsong
pop.v.v self.mysong
push.v self.mysong
call.i caster_get_volume(argc=1)
pop.v.v self.volume
push.v self.volume
pop.v.v self.fvolume
push.d 0.1
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.resume

:[end]