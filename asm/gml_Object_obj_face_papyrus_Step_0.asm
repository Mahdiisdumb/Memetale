.localvar 0 arguments

:[0]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.sprite_index
pushi.e 2111
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2111
pop.v.i self.sprite_index

:[5]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.sprite_index
pushi.e 2113
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2113
pop.v.i self.sprite_index

:[10]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.sprite_index
pushi.e 2115
cmp.i.v NEQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 2115
pop.v.i self.sprite_index

:[15]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.v self.sprite_index
pushi.e 2116
cmp.i.v NEQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 2116
pop.v.i self.sprite_index

:[20]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
push.v self.sprite_index
pushi.e 2114
cmp.i.v NEQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 2114
pop.v.i self.sprite_index

:[25]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bf [27]

:[26]
push.v self.sprite_index
pushi.e 2112
cmp.i.v NEQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 2112
pop.v.i self.sprite_index

:[30]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [32]

:[31]
push.v self.sprite_index
pushi.e 2117
cmp.i.v NEQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 2117
pop.v.i self.sprite_index

:[35]
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [37]

:[36]
push.v self.sprite_index
pushi.e 2118
cmp.i.v NEQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 2118
pop.v.i self.sprite_index

:[40]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [42]

:[41]
push.v self.sprite_index
pushi.e 2119
cmp.i.v NEQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 2119
pop.v.i self.sprite_index

:[45]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [47]

:[46]
push.v self.sprite_index
pushi.e 2120
cmp.i.v NEQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 2120
pop.v.i self.sprite_index

:[50]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[51]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [53]

:[52]
pushi.e 0
pop.v.i self.image_speed
b [end]

:[53]
push.d 0.25
pop.v.d self.image_speed

:[end]