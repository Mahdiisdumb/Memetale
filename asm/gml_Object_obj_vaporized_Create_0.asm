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
bf [2]

:[1]
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
pushi.e 0
pop.v.i self.finishedreading
call.i scr_getvapordata(argc=0)
pop.v.v self.mydata
pushi.e 0
pop.v.i self.mychar
pushi.e 0
pop.v.i self.myread
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i action_set_alarm(argc=2)
popz.v

:[end]