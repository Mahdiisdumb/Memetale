.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.doomcon
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]