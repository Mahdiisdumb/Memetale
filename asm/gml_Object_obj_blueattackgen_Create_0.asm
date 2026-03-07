.localvar 0 arguments

:[0]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.t
pushglb.v global.batmusic
call.i caster_get_volume(argc=1)
pop.v.v self.basevol
pushi.e 1
pop.v.i self.vol

:[end]