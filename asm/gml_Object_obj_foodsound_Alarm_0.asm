.localvar 0 arguments

:[0]
push.v self.soundtype
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 108
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
push.v self.soundtype
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]