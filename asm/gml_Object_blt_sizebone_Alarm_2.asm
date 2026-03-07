.localvar 0 arguments

:[0]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushglb.v global.batmusic
call.i caster_get_volume(argc=1)
pop.v.v self.vol
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]