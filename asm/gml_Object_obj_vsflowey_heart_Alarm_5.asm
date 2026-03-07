.localvar 0 arguments

:[0]
pushi.e 154
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
pushi.e 56
pop.v.i self.sprite_index

:[end]