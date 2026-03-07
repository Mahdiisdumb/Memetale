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
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[9]
pushi.e 776
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[12]
pushi.e 771
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[13]
pushi.e 771
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]

:[16]
pushi.e 772
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[17]
pushi.e 772
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]

:[20]
pushglb.v global.faceemotion
pushi.e 99
cmp.i.v EQ
bf [22]

:[21]
pushi.e 767
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.faceemotion

:[22]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.sprite_index
pushi.e 2089
cmp.i.v NEQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 2089
pop.v.i self.sprite_index

:[27]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.sprite_index
pushi.e 2107
cmp.i.v NEQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 2107
pop.v.i self.sprite_index

:[32]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
push.v self.sprite_index
pushi.e 2093
cmp.i.v NEQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 2093
pop.v.i self.sprite_index

:[37]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
push.v self.sprite_index
pushi.e 2102
cmp.i.v NEQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 2102
pop.v.i self.sprite_index

:[42]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [44]

:[43]
push.v self.sprite_index
pushi.e 2103
cmp.i.v NEQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 2103
pop.v.i self.sprite_index

:[47]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [49]

:[48]
push.v self.sprite_index
pushi.e 2094
cmp.i.v NEQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 2094
pop.v.i self.sprite_index

:[52]
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [54]

:[53]
push.v self.sprite_index
pushi.e 2096
cmp.i.v NEQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 2096
pop.v.i self.sprite_index

:[57]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [59]

:[58]
push.v self.sprite_index
pushi.e 2099
cmp.i.v NEQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 2099
pop.v.i self.sprite_index

:[62]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [64]

:[63]
push.v self.sprite_index
pushi.e 2090
cmp.i.v NEQ
b [65]

:[64]
push.e 0

:[65]
bf [end]

:[66]
pushi.e 2090
pop.v.i self.sprite_index

:[end]