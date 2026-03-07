.localvar 0 arguments

:[0]
push.v self.resume
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.volume
push.v self.fadespeed
sub.v.v
pop.v.v self.volume
push.v self.volume
push.d 0.05
cmp.d.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.volume

:[3]
push.v self.volume
push.v self.mysong
call.i caster_set_volume(argc=2)
popz.v
push.v self.volume
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.mysong
call.i caster_pause(argc=1)
popz.v

:[5]
push.v self.resume
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.mysong
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i self.volume
pushi.e 2
pop.v.i self.resume

:[7]
push.v self.resume
pushi.e 2
cmp.i.v EQ
bf [end]

:[8]
push.v self.volume
push.v self.fadespeed
add.v.v
pop.v.v self.volume
push.v self.volume
push.v self.mysong
call.i caster_set_volume(argc=2)
popz.v
push.v self.volume
push.v self.fvolume
cmp.v.v GT
bf [end]

:[9]
push.v self.fvolume
pop.v.v self.volume
call.i instance_destroy(argc=0)
popz.v

:[end]