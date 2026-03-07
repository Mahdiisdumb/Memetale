.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 113
conv.i.v
call.i audio_is_playing(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 113
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v

:[3]
pushi.e 0
pop.v.i self.myinteract

:[end]