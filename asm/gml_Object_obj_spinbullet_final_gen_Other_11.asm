.localvar 0 arguments

:[0]
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.memx
pop.v.v 1587.x
push.v self.memy
pop.v.v 1587.y
pushi.e 6
pop.v.i 1591.fileset
pushi.e 20
pop.v.i 1591.loadtimer
push.v 1591.intent_hit
pushi.e 1
add.i.v
pop.v.v 1591.intent_hit

:[end]