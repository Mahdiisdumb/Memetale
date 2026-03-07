.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.con
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.amt
pushi.e 343
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]