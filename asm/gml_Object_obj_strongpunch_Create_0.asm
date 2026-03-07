.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
pushi.e 46
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushglb.v global.weapon
pushi.e 25
cmp.i.v EQ
bf [2]

:[1]
pushi.e 787
pop.v.i self.sprite_index

:[2]
pushi.e 0
pop.v.i self.crit

:[end]