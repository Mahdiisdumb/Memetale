.localvar 0 arguments

:[0]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pop.v.i self.on
pushi.e 1
pop.v.i self.image_index
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]