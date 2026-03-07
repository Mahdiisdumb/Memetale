.localvar 0 arguments

:[0]
push.v self.knock
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.knock
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 17
conv.i.v
call.i snd_play(argc=1)
popz.v

:[3]
pushi.e 0
pop.v.i self.knock

:[end]