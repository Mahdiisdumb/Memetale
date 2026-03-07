.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.interact
push.v self.touched
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/cymbal.ogg"@2624
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cym
push.d 0.95
conv.d.v
push.d 0.9
conv.d.v
push.v self.cym
call.i caster_play(argc=3)
popz.v
pushi.e 151
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 180
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.touched
pushi.e 30
pop.v.i global.plot

:[end]