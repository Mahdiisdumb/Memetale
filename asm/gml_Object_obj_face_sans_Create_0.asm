.localvar 0 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 778
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 778
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 776
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
pushi.e 2121
cmp.i.v NEQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 2121
pop.v.i self.sprite_index

:[37]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v self.sprite_index
pushi.e 2125
cmp.i.v NEQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 2125
pop.v.i self.sprite_index

:[42]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.v self.sprite_index
pushi.e 2122
cmp.i.v NEQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 2122
pop.v.i self.sprite_index

:[47]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
push.v self.sprite_index
pushi.e 2123
cmp.i.v NEQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 2123
pop.v.i self.sprite_index

:[52]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [54]

:[53]
push.v self.sprite_index
pushi.e 2124
cmp.i.v NEQ
b [55]

:[54]
push.e 0

:[55]
bf [end]

:[56]
pushi.e 2124
pop.v.i self.sprite_index

:[end]