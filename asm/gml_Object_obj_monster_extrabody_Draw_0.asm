.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.y
push.v self.y
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 198
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[3]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.i
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pushi.e 20
add.i.v
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 200
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [11]

:[6]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 203
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
add.i.v
cmp.v.v LT
bf [8]

:[7]
pushi.e -5
pushi.e 36
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.siner2
pushi.e 1
add.i.v
pop.v.v self.siner2
push.v self.siner2
pushi.e 100
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
sub.i.v
push.v self.x
pushi.e 34
add.i.v
pushi.e 5
conv.i.v
pushi.e 201
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [33]

:[12]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 204
pop.v.i self.gosp
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
add.i.v
cmp.v.v LT
bf [14]

:[13]
pushi.e 206
pop.v.i self.gosp

:[14]
push.v self.siner
pushi.e 15
cmp.i.v LT
bf [16]

:[15]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.gosp
call.i draw_sprite(argc=4)
popz.v

:[16]
push.v self.siner
pushi.e 15
cmp.i.v GTE
bf [18]

:[17]
push.v self.siner
pushi.e 18
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.gosp
call.i draw_sprite(argc=4)
popz.v

:[21]
push.v self.siner
pushi.e 19
cmp.i.v GTE
bf [23]

:[22]
push.v self.siner
pushi.e 21
cmp.i.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.gosp
call.i draw_sprite(argc=4)
popz.v

:[26]
push.v self.siner
pushi.e 22
cmp.i.v GTE
bf [28]

:[27]
push.v self.siner
pushi.e 25
cmp.i.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.gosp
call.i draw_sprite(argc=4)
popz.v

:[31]
push.v self.siner
pushi.e 25
cmp.i.v GTE
bf [33]

:[32]
pushi.e 0
pop.v.i self.siner

:[33]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [38]

:[34]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 30
cmp.i.v GT
bf [37]

:[35]
push.v self.siner2
pushi.e 1
add.i.v
pop.v.v self.siner2
push.v self.siner2
pushi.e 9
cmp.i.v GT
bf [37]

:[36]
pushi.e 0
pop.v.i self.siner2
pushi.e 0
pop.v.i self.siner

:[37]
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
push.v self.siner2
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 207
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[38]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [40]

:[39]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 209
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[40]
push.v self.type
pushi.e 8
cmp.i.v EQ
bf [44]

:[41]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 216
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
add.i.v
cmp.v.v LT
bf [44]

:[42]
pushi.e -5
pushi.e 55
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.v self.mercymod
pushi.e 2
add.i.v
pop.v.v self.mercymod

:[44]
push.v self.type
pushi.e 9
cmp.i.v EQ
bf [46]

:[45]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 242
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[46]
push.v self.type
pushi.e 10
cmp.i.v EQ
bf [48]

:[47]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
pushi.e 16
add.i.v
push.v self.x
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 220
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[48]
push.v self.type
pushi.e 13
cmp.i.v EQ
bf [51]

:[49]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
add.i.v
cmp.v.v LT
bf [51]

:[50]
pushi.e 238
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.part1
conv.v.i
pop.v.d [stacktop]self.image_speed

:[51]
push.v self.type
pushi.e 17
cmp.i.v EQ
bf [55]

:[52]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
add.i.v
cmp.v.v LT
bf [55]

:[53]
push.v self.emotion
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e 2
pop.v.i self.emotion

:[55]
push.v self.type
pushi.e 19
cmp.i.v EQ
bf [59]

:[56]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 260
add.i.v
cmp.v.v LT
bf [59]

:[57]
push.v self.msx
conv.v.i
push.v [stacktop]self.stage
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
push.v self.msx
conv.v.i
pop.v.i [stacktop]self.stage

:[59]
push.v self.type
pushi.e 20
cmp.i.v EQ
bf [62]

:[60]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
add.i.v
cmp.v.v LT
bf [62]

:[61]
pushi.e 3
pop.v.i global.faceemotion
push.v self.dummy
conv.v.i
dup.i 0
push.v [stacktop]self.rotmod
push.d 0.04
add.d.v
pop.i.v [stacktop]self.rotmod
push.v self.dummy
conv.v.i
dup.i 0
push.v [stacktop]self.speedmod
push.d 0.03
add.d.v
pop.i.v [stacktop]self.speedmod

:[62]
push.v self.type
pushi.e 21
cmp.i.v EQ
bf [70]

:[63]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
add.i.v
cmp.v.v LT
bf [65]

:[64]
push.v self.bd
pushi.e 0
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [70]

:[67]
pushi.e 1
pop.v.i self.bd
push.v self.bara1
conv.v.i
pushenv [69]

:[68]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[69]
popenv [68]

:[70]
push.v self.type
pushi.e 22
cmp.i.v EQ
bf [73]

:[71]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
add.i.v
cmp.v.v LT
bf [73]

:[72]
pushi.e 411
pop.v.i 337.face

:[73]
push.v self.type
pushi.e 27
cmp.i.v EQ
bf [79]

:[74]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 300
add.i.v
cmp.v.v LT
bf [79]

:[75]
push.v self.siner2
pushi.e 1
add.i.v
pop.v.v self.siner2
push.v self.siner2
pushi.e 25
cmp.i.v GT
bf [77]

:[76]
pushi.e 1
push.v self.knight
conv.v.i
pop.v.i [stacktop]self.asleep

:[77]
push.v self.siner2
pushi.e 50
cmp.i.v GT
bf [79]

:[78]
pushi.e 2
push.v self.knight
conv.v.i
pop.v.i [stacktop]self.asleep

:[79]
push.v self.type
pushi.e 30
cmp.i.v EQ
bf [85]

:[80]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 260
add.i.v
cmp.v.v LT
bf [84]

:[81]
push.v self.eye
conv.v.i
push.v [stacktop]self.anim
pushi.e 230
cmp.i.v LT
bf [83]

:[82]
pushi.e 235
push.v self.eye
conv.v.i
pop.v.i [stacktop]self.anim

:[83]
b [85]

:[84]
pushi.e 20
push.v self.eye
conv.v.i
pop.v.i [stacktop]self.anim

:[85]
push.v self.type
pushi.e 31
cmp.i.v EQ
bf [89]

:[86]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 200
add.i.v
cmp.v.v LT
bf [89]

:[87]
push.v self.aa
conv.v.i
push.v [stacktop]self.mega
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1
push.v self.aa
conv.v.i
pop.v.i [stacktop]self.mega
pushi.e -1
push.v self.aa
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
push.v self.aa
conv.v.i
pushi.e 1
pop.v.i [array]self.alarm
pushi.e -1
push.v self.aa
conv.v.i
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
push.v self.aa
conv.v.i
pop.v.i [stacktop]self.on

:[89]
push.v self.type
pushi.e 32
cmp.i.v EQ
bf [92]

:[90]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 200
add.i.v
cmp.v.v LT
bf [92]

:[91]
pushi.e 2
push.v self.aa
conv.v.i
pop.v.i [stacktop]self.stretchup

:[92]
push.v self.type
pushi.e 33
cmp.i.v EQ
bf [95]

:[93]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 200
add.i.v
cmp.v.v LT
bf [95]

:[94]
pushi.e 3
pop.v.i self.graze
pushi.e 1
push.v self.aa
conv.v.i
pop.v.i [stacktop]self.fader

:[95]
push.v self.type
pushi.e 34
cmp.i.v EQ
bf [end]

:[96]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 200
add.i.v
cmp.v.v LT
bf [end]

:[97]
push.v self.aa
conv.v.i
push.v [stacktop]self.melting
pushi.e 0
cmp.i.v EQ
bf [end]

:[98]
pushi.e 1
push.v self.aa
conv.v.i
pop.v.i [stacktop]self.melting

:[end]