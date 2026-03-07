.localvar 0 arguments

:[0]
push.v self.never
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sfx_grab
call.i caster_play(argc=3)
popz.v

:[2]
pushi.e 1
pop.v.i self.never

:[end]