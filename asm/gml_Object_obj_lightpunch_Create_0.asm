.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
pushi.e 45
conv.i.v
call.i snd_play(argc=1)
popz.v
pushglb.v global.weapon
pushi.e 25
cmp.i.v EQ
bf [end]

:[1]
pushi.e 786
pop.v.i self.sprite_index

:[end]