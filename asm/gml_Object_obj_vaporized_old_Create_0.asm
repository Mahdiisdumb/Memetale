.localvar 0 arguments

:[0]
pushglb.v global.monstersprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.line
pushi.e 0
pop.v.i self.finished
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v self.ht
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.wd
pushglb.v global.vaporspeed
pop.v.v self.myvapor
push.v self.myvapor
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.ht
pushi.e 70
cmp.i.v GTE
bf [3]

:[2]
push.v self.ht
pushi.e 180
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v

:[6]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i action_set_alarm(argc=2)
popz.v

:[end]