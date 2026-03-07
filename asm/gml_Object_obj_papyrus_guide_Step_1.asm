.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 776.image_index
pop.v.v self.image_index
b [8]

:[3]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.path_speed
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_index

:[8]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
conv.i.v
call.i scr_npc_watch(argc=1)
popz.v

:[10]
pushi.e 1418
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[11]
push.v self.spot
pushi.e 0
cmp.i.v GT
bf [14]

:[12]
push.v 1418.level
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [20]

:[16]
push.v self.spot
pushi.e 2
cmp.i.v EQ
bf [19]

:[17]
push.v self.myscore
pushi.e 1
add.i.v
pop.v.v self.myscore
push.v self.myscore
pushi.e 3
cmp.i.v GT
bf [19]

:[18]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.hspeed
push.d 1.1
mul.d.v
pop.v.v self.hspeed

:[19]
pushi.e 1
pop.v.i self.spot

:[20]
push.v self.spot
pushi.e 1
cmp.i.v EQ
bf [29]

:[21]
pushi.e 0
pop.v.i self.solid
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 5
pop.v.i self.hspeed

:[23]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[25]
push.d 0.5
pop.v.d self.image_speed
pushi.e 1417
pop.v.i self.sprite_index
push.v self.x
pushi.e 183
cmp.i.v GT
bf [29]

:[26]
push.v self.x
call.i ceil(argc=1)
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.spot
pushi.e 1416
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.solid
push.v self.myscore
pushi.e 10
cmp.i.v GT
bf [28]

:[27]
pushi.e 49
conv.i.v
call.i snd_play(argc=1)
popz.v

:[28]
pushi.e 0
pop.v.i self.myscore

:[29]
pushi.e 1418
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[30]
push.v self.spot
pushi.e 2
cmp.i.v LT
bf [33]

:[31]
push.v 1418.level
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [39]

:[35]
push.v self.spot
pushi.e 1
cmp.i.v EQ
bf [38]

:[36]
push.v self.myscore
pushi.e 1
add.i.v
pop.v.v self.myscore
push.v self.myscore
pushi.e 3
cmp.i.v GT
bf [38]

:[37]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.hspeed
push.d 1.1
mul.d.v
pop.v.v self.hspeed

:[38]
pushi.e 2
pop.v.i self.spot

:[39]
push.v self.spot
pushi.e 2
cmp.i.v EQ
bf [48]

:[40]
pushi.e 0
pop.v.i self.solid
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e -5
pop.v.i self.hspeed

:[42]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [44]

:[43]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[44]
push.d 0.5
pop.v.d self.image_speed
pushi.e 1419
pop.v.i self.sprite_index
push.v self.x
pushi.e 27
cmp.i.v LT
bf [48]

:[45]
push.v self.x
call.i floor(argc=1)
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed
pushi.e 3
pop.v.i self.spot
pushi.e 1424
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.solid
push.v self.myscore
pushi.e 10
cmp.i.v GT
bf [47]

:[46]
pushi.e 49
conv.i.v
call.i snd_play(argc=1)
popz.v

:[47]
pushi.e 0
pop.v.i self.myscore

:[48]
push.v self.spot
pushi.e 5
cmp.i.v EQ
bf [50]

:[49]
push.v self.y
push.v self.ystart
cmp.v.v GTE
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 3
pop.v.i self.spot
pushi.e 1424
pop.v.i self.sprite_index

:[53]
push.v self.myscore
pushi.e 3
cmp.i.v GT
bf [55]

:[54]
push.v self.workout
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 1
pop.v.i self.workout

:[58]
push.v self.myscore
pushi.e 10
cmp.i.v GT
bf [60]

:[59]
push.v self.workout
pushi.e 1
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [end]

:[62]
pushi.e 2
pop.v.i self.workout

:[end]