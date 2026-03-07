.localvar 0 arguments

:[0]
push.v self.volume
push.v self.fadespeed
add.v.v
pop.v.v self.volume
push.v self.volume
push.d 0.95
cmp.d.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.volume

:[2]
push.v self.volume
push.v self.mysong
call.i caster_set_volume(argc=2)
popz.v
push.v self.volume
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]