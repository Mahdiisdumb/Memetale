.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[2]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
conv.i.v
pushi.e 766
conv.i.v
call.i instance_change(argc=2)
popz.v

:[4]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.sprite_index
pushi.e 2108
cmp.i.v NEQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 2108
pop.v.i self.sprite_index

:[9]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.sprite_index
pushi.e 2110
cmp.i.v NEQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 2110
pop.v.i self.sprite_index

:[14]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.v self.sprite_index
pushi.e 2109
cmp.i.v NEQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 2109
pop.v.i self.sprite_index

:[19]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
push.v self.sprite_index
pushi.e 2102
cmp.i.v NEQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 2102
pop.v.i self.sprite_index

:[24]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
push.v self.sprite_index
pushi.e 2103
cmp.i.v NEQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 2103
pop.v.i self.sprite_index

:[29]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bf [31]

:[30]
push.v self.sprite_index
pushi.e 2100
cmp.i.v NEQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 2100
pop.v.i self.sprite_index

:[34]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [36]

:[35]
push.v self.sprite_index
pushi.e 2094
cmp.i.v NEQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 2095
pop.v.i self.sprite_index

:[39]
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [41]

:[40]
push.v self.sprite_index
pushi.e 2096
cmp.i.v NEQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 2098
pop.v.i self.sprite_index

:[44]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [46]

:[45]
push.v self.sprite_index
pushi.e 2099
cmp.i.v NEQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 2099
pop.v.i self.sprite_index

:[49]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [51]

:[50]
push.v self.sprite_index
pushi.e 2090
cmp.i.v NEQ
b [52]

:[51]
push.e 0

:[52]
bf [end]

:[53]
pushi.e 2090
pop.v.i self.sprite_index

:[end]