.localvar 0 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.chime
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.active

:[end]