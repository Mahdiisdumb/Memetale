.localvar 0 arguments

:[0]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.soundtype
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]