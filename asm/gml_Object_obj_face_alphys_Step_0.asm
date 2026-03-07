.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 430
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index

:[2]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
b [6]

:[5]
push.d 0.25
pop.v.d self.image_speed

:[6]
pushi.e -5
pushi.e 430
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e -1
pushglb.v global.faceemotion
pushi.e 10
add.i.v
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index

:[8]
pushi.e -5
pushi.e 430
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pushglb.v global.faceemotion
pushi.e 15
add.i.v
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index

:[10]
pushi.e -5
pushi.e 430
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [15]

:[11]
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [13]

:[12]
pushi.e -1
pushi.e 24
push.v [array]self.u
pop.v.v self.sprite_index

:[13]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e -1
pushi.e 25
push.v [array]self.u
pop.v.v self.sprite_index

:[15]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [24]

:[16]
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 2150
pop.v.i self.sprite_index

:[18]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 2151
pop.v.i self.sprite_index

:[20]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [22]

:[21]
pushi.e 2153
pop.v.i self.sprite_index

:[22]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [24]

:[23]
pushi.e -1
pushi.e 24
push.v [array]self.u
pop.v.v self.sprite_index

:[24]
pushi.e -5
pushi.e 430
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [end]

:[25]
pushglb.v global.faceemotion
pop.v.v self.image_index
pushi.e 2148
pop.v.i self.sprite_index

:[end]