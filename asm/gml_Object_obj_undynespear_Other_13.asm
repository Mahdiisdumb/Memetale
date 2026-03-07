.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.solid
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]