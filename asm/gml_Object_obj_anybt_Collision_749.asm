.localvar 0 arguments

:[0]
push.v self.on
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
pushi.e 2
pop.v.i self.on

:[end]