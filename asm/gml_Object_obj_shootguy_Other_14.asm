.localvar 0 arguments

:[0]
push.v self.snd
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 153
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]