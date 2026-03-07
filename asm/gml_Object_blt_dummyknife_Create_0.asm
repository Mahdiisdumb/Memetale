.localvar 0 arguments

:[0]
pushi.e 9
pop.v.i self.dmg
pushi.e 0
pop.v.i self.image_alpha
pushi.e 180
pop.v.i self.direction
pushi.e 180
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.fade
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 16
pop.v.i self.increase

:[end]