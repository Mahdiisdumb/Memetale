.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.got
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.object_index
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e 320
push.v self.coolwidth
add.v.i
pushi.e 80
conv.i.v
pushi.e 320
push.v self.coolwidth
sub.v.i
call.i collision_rectangle(argc=7)
conv.v.b
bf [4]

:[1]
push.i 65535
pop.v.i self.blenda
push.v self.defuse
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.i 65280
pop.v.i self.blenda

:[3]
push.i 65280
pop.v.i self.blendb
pushi.e 1
pop.v.i self.got

:[4]
pushi.e 0
pop.v.i self.dd
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [20]

:[5]
push.v self.flasher
pushi.e 1
add.i.v
pop.v.v self.flasher
push.v self.flasher
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
push.v self.defuse
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 31
conv.i.v
call.i snd_play(argc=1)
popz.v

:[8]
push.v self.defuse
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[10]
push.v self.flasher
pushi.e 1
cmp.i.v EQ
bt [15]

:[11]
push.v self.flasher
pushi.e 2
cmp.i.v EQ
bt [15]

:[12]
push.v self.flasher
pushi.e 3
cmp.i.v EQ
bt [15]

:[13]
push.v self.flasher
pushi.e 4
cmp.i.v EQ
bt [15]

:[14]
push.v self.flasher
pushi.e 5
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i self.dd

:[18]
push.v self.flasher
pushi.e 16
cmp.i.v GT
bf [20]

:[19]
pushi.e 0
pop.v.i self.flasher
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.dd

:[20]
push.v self.blendb
call.i draw_set_color(argc=1)
popz.v
push.v self.dd
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e 320
push.v self.coolwidth
add.v.i
pushi.e 80
conv.i.v
pushi.e 320
push.v self.coolwidth
sub.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[22]
push.v self.dd
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e 320
push.v self.coolwidth
add.v.i
pushi.e 80
conv.i.v
pushi.e 320
push.v self.coolwidth
sub.v.i
call.i draw_rectangle(argc=5)
popz.v

:[24]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 12
sub.i.v
pushi.e 320
push.v self.coolwidth
add.v.i
pushi.e 2
add.i.v
pushi.e 82
conv.i.v
pushi.e 320
push.v self.coolwidth
sub.v.i
pushi.e 2
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 14
sub.i.v
pushi.e 320
push.v self.coolwidth
add.v.i
pushi.e 4
add.i.v
pushi.e 84
conv.i.v
pushi.e 320
push.v self.coolwidth
sub.v.i
pushi.e 4
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.v self.blenda
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.blendb
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 512
conv.i.v
call.i scr_getsprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
push.i 16777215
pop.v.i self.blenda
push.i 32768
pop.v.i self.blendb
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [31]

:[25]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.myspeed
pop.v.v self.hspeed

:[27]
push.v self.x
pushi.e 560
cmp.i.v GT
bf [29]

:[28]
push.v self.x
pushi.e 15
sub.i.v
pop.v.v self.x
push.v self.myspeed
neg.v
pop.v.v self.hspeed

:[29]
push.v self.x
pushi.e 20
cmp.i.v LT
bf [31]

:[30]
push.v self.x
pushi.e 15
add.i.v
pop.v.v self.x
push.v self.myspeed
pop.v.v self.hspeed

:[31]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [38]

:[32]
pushi.e 4
pop.v.i self.myspeed
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.y
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.myspeed
pop.v.v self.hspeed

:[34]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [36]

:[35]
push.v self.x
pushi.e 6
sub.i.v
pop.v.v self.x
push.v self.myspeed
neg.v
pop.v.v self.hspeed

:[36]
push.v self.x
pushi.e 180
cmp.i.v LT
bf [38]

:[37]
push.v self.x
pushi.e 6
add.i.v
pop.v.v self.x
push.v self.myspeed
pop.v.v self.hspeed

:[38]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [44]

:[39]
pushi.e 15
pop.v.i self.myspeed
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.v self.myspeed
pop.v.v self.hspeed

:[41]
push.v self.x
pushi.e 660
cmp.i.v GT
bf [44]

:[42]
pushi.e 0
pop.v.i self.x
push.v self.myspeed
pushi.e 5
cmp.i.v GT
bf [44]

:[43]
push.v self.myspeed
push.d 0.5
sub.d.v
pop.v.v self.myspeed

:[44]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [82]

:[45]
push.v self.cc
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i self.cc
pushi.e 40
pop.v.i self.x
push.v self.x
pop.v.v self.startx

:[47]
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 80
cmp.i.v LT
bf [50]

:[48]
pushi.e 10
pop.v.i self.myspeed
push.v self.myspeed
pop.v.v self.hspeed
push.v self.x
pushi.e 320
push.v self.coolwidth
sub.v.i
pushi.e 110
sub.i.v
cmp.v.v GTE
bf [50]

:[49]
pushi.e 0
pop.v.i self.hspeed
push.v self.movetimer
pushi.e 10
add.i.v
pop.v.v self.movetimer

:[50]
push.v self.movetimer
pushi.e 80
cmp.i.v GT
bf [52]

:[51]
push.v self.movetimer
pushi.e 160
cmp.i.v LTE
b [53]

:[52]
push.e 0

:[53]
bf [56]

:[54]
pushi.e 5
pop.v.i self.myspeed
push.v self.myspeed
neg.v
pop.v.v self.hspeed
push.v self.x
pushi.e 80
cmp.i.v LT
bf [56]

:[55]
push.v self.movetimer
pushi.e 10
add.i.v
pop.v.v self.movetimer

:[56]
push.v self.movetimer
pushi.e 160
cmp.i.v GT
bf [58]

:[57]
push.v self.movetimer
pushi.e 240
cmp.i.v LT
b [59]

:[58]
push.e 0

:[59]
bf [62]

:[60]
pushi.e 13
pop.v.i self.myspeed
push.v self.myspeed
pop.v.v self.hspeed
push.v self.x
pushi.e 500
cmp.i.v GT
bf [62]

:[61]
push.v self.movetimer
pushi.e 20
add.i.v
pop.v.v self.movetimer

:[62]
push.v self.movetimer
pushi.e 240
cmp.i.v GT
bf [64]

:[63]
push.v self.movetimer
pushi.e 320
cmp.i.v LT
b [65]

:[64]
push.e 0

:[65]
bf [68]

:[66]
pushi.e -10
pop.v.i self.myspeed
push.v self.myspeed
pop.v.v self.hspeed
push.v self.x
pushi.e 320
push.v self.coolwidth
add.v.i
pushi.e 10
add.i.v
cmp.v.v LTE
bf [68]

:[67]
pushi.e 0
pop.v.i self.hspeed
push.v self.movetimer
pushi.e 20
add.i.v
pop.v.v self.movetimer

:[68]
push.v self.movetimer
pushi.e 320
cmp.i.v GT
bf [70]

:[69]
push.v self.movetimer
pushi.e 400
cmp.i.v LT
b [71]

:[70]
push.e 0

:[71]
bf [74]

:[72]
pushi.e 5
pop.v.i self.myspeed
push.v self.myspeed
pop.v.v self.hspeed
push.v self.x
pushi.e 440
cmp.i.v GT
bf [74]

:[73]
push.v self.movetimer
pushi.e 20
add.i.v
pop.v.v self.movetimer

:[74]
push.v self.movetimer
pushi.e 400
cmp.i.v GT
bf [76]

:[75]
push.v self.movetimer
pushi.e 480
cmp.i.v LT
b [77]

:[76]
push.e 0

:[77]
bf [80]

:[78]
pushi.e -13
pop.v.i self.myspeed
push.v self.myspeed
pop.v.v self.hspeed
push.v self.x
push.v self.startx
pushi.e 10
add.i.v
cmp.v.v LTE
bf [80]

:[79]
pushi.e 500
pop.v.i self.movetimer

:[80]
push.v self.movetimer
pushi.e 480
cmp.i.v GT
bf [82]

:[81]
push.v self.startx
pop.v.v self.x
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.myspeed

:[82]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [84]

:[83]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 260
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 180
mul.i.v
add.v.i
pop.v.v self.x
push.v self.ystart
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 60
mul.i.v
add.v.v
pop.v.v self.y

:[84]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [87]

:[85]
pushi.e -25
pop.v.i self.vspeed
push.v self.y
pushi.e -120
cmp.i.v LT
bf [87]

:[86]
pushi.e 930
pop.v.i self.y

:[87]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [92]

:[88]
push.v self.cc
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
push.v self.x
pushi.e 90
sub.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.cc

:[90]
pushi.e -20
pop.v.i self.vspeed
push.v self.y
pushi.e -120
cmp.i.v LT
bf [92]

:[91]
pushi.e 860
pop.v.i self.y

:[92]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [112]

:[93]
push.v self.cc
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
pushi.e 1
pop.v.i self.cc
pushi.e 320
push.v self.coolwidth
sub.v.i
push.v self.sprite_width
sub.v.v
pushi.e 10
sub.i.v
pop.v.v self.x
push.v self.x
pop.v.v self.startx

:[95]
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 25
cmp.i.v GT
bf [97]

:[96]
push.v self.movetimer
pushi.e 60
cmp.i.v LT
b [98]

:[97]
push.e 0

:[98]
bf [101]

:[99]
pushi.e 16
pop.v.i self.hspeed
push.v self.x
pushi.e 320
push.v self.coolwidth
add.v.i
pushi.e 10
add.i.v
cmp.v.v GT
bf [101]

:[100]
pushi.e 100
pop.v.i self.movetimer

:[101]
push.v self.movetimer
pushi.e 100
cmp.i.v GTE
bf [103]

:[102]
push.v self.movetimer
pushi.e 125
cmp.i.v LT
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 0
pop.v.i self.hspeed

:[106]
push.v self.movetimer
pushi.e 125
cmp.i.v GT
bf [108]

:[107]
push.v self.movetimer
pushi.e 180
cmp.i.v LT
b [109]

:[108]
push.e 0

:[109]
bf [112]

:[110]
pushi.e -16
pop.v.i self.hspeed
push.v self.x
push.v self.startx
cmp.v.v LTE
bf [112]

:[111]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.movetimer

:[112]
push.v self.defuse
pushi.e 1
cmp.i.v EQ
bf [end]

:[113]
push.v self.sprite_index
pushi.e 514
cmp.i.v EQ
bf [115]

:[114]
pushi.e 515
pop.v.i self.sprite_index

:[115]
push.v self.sprite_index
pushi.e 1610
cmp.i.v EQ
bf [end]

:[116]
pushi.e 1611
pop.v.i self.sprite_index

:[end]