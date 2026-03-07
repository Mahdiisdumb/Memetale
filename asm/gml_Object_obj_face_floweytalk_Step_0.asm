.localvar 0 arguments

:[0]
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
bf [30]

:[29]
pushi.e 193
pop.v.i self.sprite_index

:[30]
pushbltn.v self.room
pushi.e 43
cmp.i.v EQ
bf [46]

:[31]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [33]

:[32]
push.v self.sprite_index
pushi.e 193
cmp.i.v NEQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 194
pop.v.i self.sprite_index

:[36]
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [38]

:[37]
push.v self.sprite_index
pushi.e 193
cmp.i.v NEQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 195
pop.v.i self.sprite_index

:[41]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [43]

:[42]
push.v self.sprite_index
pushi.e 193
cmp.i.v NEQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 185
pop.v.i self.sprite_index

:[46]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[47]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [49]

:[48]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
b [end]

:[49]
push.d 0.2
pop.v.d self.image_speed

:[end]