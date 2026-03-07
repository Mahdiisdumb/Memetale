.localvar 0 arguments

:[0]
push.v self.sound1
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.sound1

:[2]
push.v self.sound2
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.sound2

:[end]