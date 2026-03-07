.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.d 0.2
conv.d.v
push.v self.specialsong
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.fadein

:[end]