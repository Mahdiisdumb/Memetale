.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 6
cmp.i.v GTE
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[6]
pushi.e 1975
pop.v.i self.sprite_index
push.v self.image_blend
push.i 16777215
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1976
pop.v.i self.sprite_index

:[8]
push.d 0.1
pop.v.d self.image_speed
push.v self.h
pushi.e 1
add.i.v
pop.v.v self.h
push.v self.h
push.v self.sprite_height
cmp.v.v GTE
bf [end]

:[9]
pushi.e 4
pop.v.i self.con
push.v self.image_blend
push.i 16777215
cmp.i.v EQ
bf [end]

:[10]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]