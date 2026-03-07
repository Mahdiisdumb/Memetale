.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.vol
push.v self.shopmus
call.i caster_set_volume(argc=2)
popz.v
push.v self.vol
push.d 0.02
sub.d.v
pop.v.v self.vol
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]