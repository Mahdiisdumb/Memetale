.localvar 0 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 777
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 778
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 778
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 771
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[9]
pushi.e 771
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[12]
pushi.e 772
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[13]
pushi.e 772
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]

:[16]
pushi.e 766
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[17]
pushi.e 766
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]

:[20]
pushi.e 768
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[21]
pushi.e 768
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]

:[24]
pushi.e 765
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[25]
pushi.e 765
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]

:[28]
pushi.e 774
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [32]

:[29]
pushi.e 774
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]

:[32]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.sprite_index
pushi.e 2111
cmp.i.v NEQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 2111
pop.v.i self.sprite_index

:[37]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v self.sprite_index
pushi.e 2113
cmp.i.v NEQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 2113
pop.v.i self.sprite_index

:[42]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.v self.sprite_index
pushi.e 2115
cmp.i.v NEQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 2115
pop.v.i self.sprite_index

:[47]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
push.v self.sprite_index
pushi.e 2116
cmp.i.v NEQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 2116
pop.v.i self.sprite_index

:[52]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [54]

:[53]
push.v self.sprite_index
pushi.e 2114
cmp.i.v NEQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 2114
pop.v.i self.sprite_index

:[57]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bf [59]

:[58]
push.v self.sprite_index
pushi.e 2116
cmp.i.v NEQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 2112
pop.v.i self.sprite_index

:[62]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [64]

:[63]
push.v self.sprite_index
pushi.e 2117
cmp.i.v NEQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 2117
pop.v.i self.sprite_index

:[67]
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [69]

:[68]
push.v self.sprite_index
pushi.e 2118
cmp.i.v NEQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 2118
pop.v.i self.sprite_index

:[72]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [74]

:[73]
push.v self.sprite_index
pushi.e 2119
cmp.i.v NEQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 2119
pop.v.i self.sprite_index

:[77]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [79]

:[78]
push.v self.sprite_index
pushi.e 2120
cmp.i.v NEQ
b [80]

:[79]
push.e 0

:[80]
bf [end]

:[81]
pushi.e 2120
pop.v.i self.sprite_index

:[end]