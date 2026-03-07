.localvar 0 arguments

:[0]
push.v self.volume
push.v self.fadespeed
sub.v.v
pop.v.v self.volume
push.v self.volume
push.d 0.05
cmp.d.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.volume

:[2]
push.v self.volume
push.v self.mysong
call.i caster_set_volume(argc=2)
popz.v
push.v self.volume
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
push.v self.mysong
call.i caster_stop(argc=1)
popz.v
push.v self.mysong
call.i caster_free(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]