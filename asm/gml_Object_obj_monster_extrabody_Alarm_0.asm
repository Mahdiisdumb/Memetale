.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.active
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 216
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 215
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart2

:[2]
push.v self.type
pushi.e 8
cmp.i.v EQ
bf [4]

:[3]
pushi.e 216
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.mercymod
pushi.e 10
pop.v.i self.depth
pushi.e 222
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.tail
push.v self.id
push.v self.tail
conv.v.i
pop.v.v [stacktop]self.tailobj
pushi.e 223
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.head
push.v self.id
push.v self.head
conv.v.i
pop.v.v [stacktop]self.tailobj

:[4]
push.v self.type
pushi.e 9
cmp.i.v EQ
bf [5]

:[5]
push.v self.type
pushi.e 11
cmp.i.v EQ
bf [7]

:[6]
pushi.e 255
pop.v.i self.part1
pushi.e 256
pop.v.i self.part2
push.v self.part1
push.v self.y
push.v self.x
pushi.e 18
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.part2
push.v self.y
push.v self.x
pushi.e 18
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart2

:[7]
push.v self.type
pushi.e 12
cmp.i.v EQ
bf [24]

:[8]
pushi.e 237
pop.v.i self.part1
pushi.e 238
pop.v.i self.part2
pushi.e 234
pop.v.i self.part3
push.v self.part1
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.part2
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart2
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.gift
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.gift
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.gift
pushi.e -1
pushi.e 1
push.v [array]self.gift
pushi.e -1
pushi.e 0
push.v [array]self.gift
cmp.v.v EQ
bf [10]

:[9]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.gift
pushi.e 1
add.i.v
pop.i.v [array]self.gift

:[10]
pushi.e -1
pushi.e 2
push.v [array]self.gift
pushi.e -1
pushi.e 0
push.v [array]self.gift
cmp.v.v EQ
bf [12]

:[11]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.gift
pushi.e 1
add.i.v
pop.i.v [array]self.gift

:[12]
pushi.e -1
pushi.e 2
push.v [array]self.gift
pushi.e -1
pushi.e 1
push.v [array]self.gift
cmp.v.v EQ
bf [14]

:[13]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.gift

:[14]
pushi.e -1
pushi.e 2
push.v [array]self.gift
pushi.e -1
pushi.e 0
push.v [array]self.gift
cmp.v.v EQ
bf [16]

:[15]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.gift
pushi.e 1
add.i.v
pop.i.v [array]self.gift

:[16]
push.v self.part3
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart3
pushi.e -1
pushi.e 0
push.v [array]self.gift
push.v self.mypart3
conv.v.i
pop.v.v [stacktop]self.gift
push.v self.part3
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart4
pushi.e -1
pushi.e 1
push.v [array]self.gift
push.v self.mypart4
conv.v.i
pop.v.v [stacktop]self.gift
push.v self.part3
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart8
pushi.e -1
pushi.e 2
push.v [array]self.gift
push.v self.mypart8
conv.v.i
pop.v.v [stacktop]self.gift
pushi.e -5
pushi.e 138
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [24]

:[17]
push.v self.mypart3
conv.v.i
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.visible

:[19]
popenv [18]
push.v self.mypart4
conv.v.i
pushenv [21]

:[20]
pushi.e 0
pop.v.i self.visible

:[21]
popenv [20]
push.v self.mypart8
conv.v.i
pushenv [23]

:[22]
pushi.e 0
pop.v.i self.visible

:[23]
popenv [22]

:[24]
push.v self.type
pushi.e 13
cmp.i.v EQ
bf [26]

:[25]
pushi.e 252
pop.v.i self.part2
pushi.e 251
pop.v.i self.part3
pushi.e 250
pop.v.i self.part4
pushi.e 237
conv.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 6
sub.i.v
call.i scr_marker(argc=3)
pop.v.v self.part1
pushi.e 2
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.part1
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.part2
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 6
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart2
push.v self.part3
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 6
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart3
push.v self.part4
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 6
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart4

:[26]
push.v self.type
pushi.e 14
cmp.i.v EQ
bf [28]

:[27]
pushi.e 242
pop.v.i self.part1
pushi.e 244
pop.v.i self.part2
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.part2
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart2
pushi.e 243
pop.v.i self.part1
pushi.e 245
pop.v.i self.part2
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.part2
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart2

:[28]
push.v self.type
pushi.e 15
cmp.i.v EQ
bf [30]

:[29]
pushi.e 259
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[30]
push.v self.type
pushi.e 16
cmp.i.v EQ
bf [33]

:[31]
pushi.e 291
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ab
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 267
push.v self.ab
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[33]
push.v self.type
pushi.e 17
cmp.i.v EQ
bf [37]

:[34]
pushi.e 0
pop.v.i self.emotion
pushi.e -5
pushi.e 81
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.emotion

:[36]
pushi.e 261
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.id
push.v self.part1
conv.v.i
pop.v.v [stacktop]self.creator
pushi.e 262
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.agent

:[37]
push.v self.type
pushi.e 18
cmp.i.v EQ
bf [39]

:[38]
pushi.e 295
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[39]
push.v self.type
pushi.e 19
cmp.i.v EQ
bf [41]

:[40]
pushi.e 296
conv.i.v
push.v self.y
pushi.e 120
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.msx
push.i 99999
pushi.e -5
pushi.e 2
pop.v.i [array]global.idealborder

:[41]
push.v self.type
pushi.e 20
cmp.i.v EQ
bf [43]

:[42]
pushi.e 289
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dummy

:[43]
push.v self.type
pushi.e 21
cmp.i.v EQ
bf [45]

:[44]
pushi.e 319
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bara1
pushi.e 385
push.v self.bara1
conv.v.i
pop.v.i [stacktop]self.headpic
pushi.e 319
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 210
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bara2
pushi.e 386
push.v self.bara2
conv.v.i
pop.v.i [stacktop]self.headpic
pushi.e 0
pop.v.i self.bd

:[45]
push.v self.type
pushi.e 22
cmp.i.v EQ
bf [47]

:[46]
pushi.e 337
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.vulkin

:[47]
push.v self.type
pushi.e 23
cmp.i.v EQ
bf [49]

:[48]
pushi.e 0
pop.v.i self.graze
pushi.e 330
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.plane
push.v self.id
push.v self.plane
conv.v.i
pop.v.v [stacktop]self.parent

:[49]
push.v self.type
pushi.e 24
cmp.i.v EQ
bf [51]

:[50]
pushi.e 343
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.pyrope
push.v self.id
push.v self.pyrope
conv.v.i
pop.v.v [stacktop]self.parent

:[51]
push.v self.type
pushi.e 25
cmp.i.v EQ
bf [53]

:[52]
pushi.e 363
conv.i.v
push.v self.y
push.v self.x
pushi.e 55
add.i.v
call.i instance_create(argc=3)
pop.v.v self.spider
push.v self.id
push.v self.spider
conv.v.i
pop.v.v [stacktop]self.parent

:[53]
push.v self.type
pushi.e 26
cmp.i.v EQ
bf [55]

:[54]
pushi.e 0
pop.v.i self.stare1
pushi.e 0
pop.v.i self.stare2
pushi.e 369
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.madjick
push.v self.id
push.v self.madjick
conv.v.i
pop.v.v [stacktop]self.parent

:[55]
push.v self.type
pushi.e 27
cmp.i.v EQ
bf [57]

:[56]
pushi.e 380
conv.i.v
push.v self.y
push.v self.x
pushi.e 50
add.i.v
call.i instance_create(argc=3)
pop.v.v self.knight
push.v self.id
push.v self.knight
conv.v.i
pop.v.v [stacktop]self.parent

:[57]
push.v self.type
pushi.e 28
cmp.i.v EQ
bf [59]

:[58]
pushi.e 387
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.frog
push.v self.id
push.v self.frog
conv.v.i
pop.v.v [stacktop]self.parent

:[59]
push.v self.type
pushi.e 29
cmp.i.v EQ
bf [61]

:[60]
pushi.e 397
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.knight
push.v self.id
push.v self.knight
conv.v.i
pop.v.v [stacktop]self.parent

:[61]
push.v self.type
pushi.e 30
cmp.i.v EQ
bf [63]

:[62]
pushi.e 389
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.eye
push.v self.id
push.v self.eye
conv.v.i
pop.v.v [stacktop]self.parent

:[63]
push.v self.type
pushi.e 31
cmp.i.v EQ
bf [65]

:[64]
pushi.e 554
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.aa

:[65]
push.v self.type
pushi.e 32
cmp.i.v EQ
bf [67]

:[66]
pushi.e 550
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.aa

:[67]
push.v self.type
pushi.e 33
cmp.i.v EQ
bf [69]

:[68]
pushi.e 557
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.aa
pushi.e 1
push.v self.aa
conv.v.i
pop.v.i [stacktop]self.spared

:[69]
push.v self.type
pushi.e 34
cmp.i.v EQ
bf [end]

:[70]
pushi.e 530
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.aa

:[end]