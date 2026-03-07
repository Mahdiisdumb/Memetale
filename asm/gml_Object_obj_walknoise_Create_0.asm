.localvar 0 arguments

:[0]
push.s "music/snowwalk.ogg"@2635
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mynoise
pushglb.v global.plot
pushi.e 35
cmp.i.v LTE
bf [end]

:[1]
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
push.v self.mynoise
call.i caster_loop(argc=3)
popz.v
pushi.e -1
conv.i.v
push.v self.mynoise
call.i caster_set_panning(argc=2)
popz.v

:[end]