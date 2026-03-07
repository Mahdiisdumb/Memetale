.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.drawblack
pushi.e 0
pop.v.i self.powered
pushi.e 1
pop.v.i 1283.active
pushi.e 0
pop.v.i 1283.hspeed
pushi.e 0
pop.v.i 1283.rememberhspeed
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 26
pushenv [2]

:[1]
push.d 0.125
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.powered

:[2]
popenv [1]

:[end]