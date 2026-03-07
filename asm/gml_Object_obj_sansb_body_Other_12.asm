.localvar 0 arguments

:[0]
push.v self.damageturn
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 53
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.hp
pushi.e 1
sub.i.v
pop.v.v global.hp
pushi.e 1
pop.v.i self.damageturn

:[end]