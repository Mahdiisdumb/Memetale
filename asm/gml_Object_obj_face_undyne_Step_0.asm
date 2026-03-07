.localvar 0 arguments

:[0]
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 390
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2130
pop.v.i self.sprite_index

:[5]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2133
pop.v.i self.sprite_index

:[10]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 390
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 2144
pop.v.i self.sprite_index

:[15]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 390
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 2145
pop.v.i self.sprite_index

:[20]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[21]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
b [24]

:[23]
push.d 0.25
pop.v.d self.image_speed

:[24]
pushglb.v global.facechoice
pushi.e 0
cmp.i.v EQ
bf [end]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]