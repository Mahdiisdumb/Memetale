.localvar 0 arguments

:[0]
pushi.e -2
pop.v.i self.vspeed
push.d -0.4
pop.v.d self.friction
pushi.e 117
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]