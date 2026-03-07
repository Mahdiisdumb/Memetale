.localvar 0 arguments

:[0]
push.v self.vol
push.d 0.05
sub.d.v
pop.v.v self.vol
push.v self.basevol
push.v self.vol
mul.v.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
push.v self.vol
push.d 0.06
cmp.d.v LT
bf [2]

:[1]
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
b [end]

:[2]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]