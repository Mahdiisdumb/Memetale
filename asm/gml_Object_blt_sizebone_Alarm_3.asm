.localvar 0 arguments

:[0]
push.v self.vol
push.d 0.01
cmp.d.v GT
bf [2]

:[1]
push.v self.vol
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
push.v self.vol
push.d 0.01
sub.d.v
pop.v.v self.vol
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
b [end]

:[2]
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v

:[end]