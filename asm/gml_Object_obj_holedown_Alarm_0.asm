.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.facing
push.d 0.5
pop.v.d 1576.image_alpha
pushi.e 5
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i 822.solid
pushi.e 81
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 135
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]