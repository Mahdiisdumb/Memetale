.localvar 0 arguments

:[0]
push.v self.direction
pop.v.v self.image_angle
pushi.e 1
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.size
pushi.e 0
pop.v.i self.rp
pushi.e 136
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 136
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]