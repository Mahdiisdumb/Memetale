.localvar 0 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.sprite_index
pushi.e 184
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 184
pop.v.i self.sprite_index

:[5]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.sprite_index
pushi.e 188
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 188
pop.v.i self.sprite_index

:[10]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.sprite_index
pushi.e 189
cmp.i.v NEQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 189
pop.v.i self.sprite_index

:[15]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.v self.sprite_index
pushi.e 190
cmp.i.v NEQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 190
pop.v.i self.sprite_index

:[20]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
push.v self.sprite_index
pushi.e 197
cmp.i.v NEQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 197
pop.v.i self.sprite_index

:[25]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bf [27]

:[26]
push.v self.sprite_index
pushi.e 193
cmp.i.v NEQ
b [28]

:[27]
push.e 0

:[28]
bf [end]

:[29]
pushi.e 193
pop.v.i self.sprite_index

:[end]