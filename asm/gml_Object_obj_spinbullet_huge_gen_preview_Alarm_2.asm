.localvar 0 arguments

:[0]
pushi.e 164
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 164
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]