.localvar 0 arguments

:[0]
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 150
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.d 0.6
pop.v.d self.image_speed

:[end]