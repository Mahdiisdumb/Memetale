.localvar 0 arguments

:[0]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [18]

:[3]
pushi.e 778
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.v 778.image_index
pop.v.v self.image_index
b [18]

:[5]
pushi.e 0
pop.v.i self.myinteract
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.path_speed
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[10]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.d 0.2
pop.v.d self.image_speed

:[12]
push.v self.path_speed
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.d 0.2
pop.v.d self.image_speed

:[14]
push.v self.path_position
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[16]
push.v self.npcdir
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v

:[18]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[19]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1499
pop.v.i self.sprite_index

:[21]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1500
pop.v.i self.sprite_index

:[23]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1498
pop.v.i self.sprite_index

:[25]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [end]

:[26]
pushi.e 1498
pop.v.i self.sprite_index

:[end]