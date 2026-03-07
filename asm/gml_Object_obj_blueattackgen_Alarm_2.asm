.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i 744.movement
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 52
pop.v.i 744.sprite_index
pushi.e -2
pop.v.i 744.vspeed
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]