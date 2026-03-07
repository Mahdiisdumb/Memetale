.localvar 0 arguments

:[0]
push.v self.soundbuffer
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -3
pop.v.i self.soundbuffer

:[end]