.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.cn
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v 1576.x
push.v self.x
pushi.e 20
sub.i.v
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.d 0.2
pop.v.d self.cn
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ou
push.d 0.05
push.v self.ou
conv.v.i
pop.v.d [stacktop]self.fadespeed

:[11]
pushi.e 1049
conv.i.v
pushi.e 80
conv.i.v
pushi.e 340
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 30
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 260
push.v self.ar
conv.v.i
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 60
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 80
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 100
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 130
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 60
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 200
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 80
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 203
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 80
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 206
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 80
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 209
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 80
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 212
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 100
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 215
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 60
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 218
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1049
conv.i.v
pushi.e 60
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 221
push.v self.ar
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm

:[12]
push.v self.cn
push.d 0.2
cmp.d.v EQ
bf [17]

:[13]
pushi.e 1049
conv.i.v
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v EQ
bf [17]

:[14]
push.d 0.3
pop.v.d self.cn
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
conv.i.v
pushi.e 80
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 100
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 120
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.yad
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[15]
pushi.e 1365
conv.i.v
pushi.e 100
push.v self.yad
pushi.e 6
mul.i.v
sub.v.i
pushi.e 50
push.v self.yad
sub.v.i
call.i instance_create(argc=3)
pop.v.v self.ar2
pushi.e 1
push.v self.ar2
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1662
push.v self.ar2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
push.v self.ar2
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.ar2
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.yad
pushi.e 2
add.i.v
pop.v.v self.yad
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [15]

:[16]
popz.i

:[17]
push.v self.cn
push.d 1.3
cmp.d.v EQ
bf [19]

:[18]
pushi.e 2
pop.v.i self.cn

:[19]
push.v self.cn
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ushock
call.i caster_play(argc=3)
popz.v
pushi.e 3
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.cn
pushi.e 3
cmp.i.v EQ
bf [24]

:[22]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v LT
bf [24]

:[23]
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.05
add.d.v
pop.i.v [stacktop]self.image_alpha

:[24]
push.v self.cn
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.usong
call.i caster_loop(argc=3)
popz.v
push.v self.usong
pop.v.v global.currentsong
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 5
pop.v.i self.cn

:[26]
push.v self.cn
pushi.e 5
cmp.i.v EQ
bf [28]

:[27]
pushi.e 4
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 6
pop.v.i self.cn
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.cn
pushi.e 7
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
pushi.e 1048
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.sp
pushi.e 8
pop.v.i self.cn

:[30]
push.v self.cn
pushi.e 8
cmp.i.v GTE
bf [32]

:[31]
push.v self.cn
pushi.e 9
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [112]

:[34]
push.v self.stk
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v LT
bf [36]

:[35]
push.v self.stk
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha

:[36]
push.v self.stopper
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.stopper

:[38]
push.v self.cn
pushi.e 8
cmp.i.v EQ
bf [48]

:[39]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v GT
bf [41]

:[40]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 9
pop.v.i self.cn

:[44]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
sub.i.v
cmp.v.v LT
bf [46]

:[45]
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 9
pop.v.i self.cn

:[46]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v GTE
bf [48]

:[47]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
pushi.e 161
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.yhome
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
push.d 8.1
pop.v.d self.cn

:[48]
push.v self.cn
push.d 8.1
cmp.d.v EQ
bf [64]

:[49]
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 60
add.i.v
cmp.v.v GT
bf [51]

:[50]
push.v self.undyne
conv.v.i
push.v [stacktop]self.yhome
pushi.e 550
cmp.i.v LT
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[54]
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 60
sub.i.v
cmp.v.v LT
bf [56]

:[55]
push.v self.undyne
conv.v.i
push.v [stacktop]self.yhome
pushi.e 160
cmp.i.v GT
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[59]
push.v self.undyne
conv.v.i
push.v [stacktop]self.yhome
pushi.e 160
cmp.i.v LTE
bf [62]

:[60]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 60
sub.i.v
cmp.v.v LT
bf [62]

:[61]
pushi.e 8
pop.v.i self.cn
pushi.e 1109
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.xhome
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[62]
push.v self.undyne
conv.v.i
push.v [stacktop]self.yhome
pushi.e 550
cmp.i.v GTE
bf [64]

:[63]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1109
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.xhome
push.d 8.2
pop.v.d self.cn
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.cn
push.d 8.2
cmp.d.v EQ
bf [79]

:[65]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v GT
bf [67]

:[66]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v LT
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.d 9.2
pop.v.d self.cn

:[70]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 20
sub.i.v
cmp.v.v LT
bf [72]

:[71]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 800
cmp.i.v GT
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.d 9.2
pop.v.d self.cn

:[75]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 800
cmp.i.v LTE
bf [77]

:[76]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
push.d 8.3
pop.v.d self.cn
pushi.e 551
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.yhome

:[77]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v GTE
bf [79]

:[78]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 549
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.yhome
push.d 8.1
pop.v.d self.cn

:[79]
push.v self.cn
push.d 8.3
cmp.d.v EQ
bf [96]

:[80]
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 60
add.i.v
cmp.v.v GT
bf [82]

:[81]
push.v self.undyne
conv.v.i
push.v [stacktop]self.yhome
pushi.e 550
cmp.i.v GT
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[85]
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
cmp.v.v LT
bf [87]

:[86]
push.v self.undyne
conv.v.i
push.v [stacktop]self.yhome
pushi.e 800
cmp.i.v LT
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[90]
push.v self.undyne
conv.v.i
push.v [stacktop]self.yhome
pushi.e 550
cmp.i.v LTE
bf [93]

:[91]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 60
add.i.v
cmp.v.v GT
bf [93]

:[92]
push.d 8.2
pop.v.d self.cn
pushi.e 551
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.yhome
pushi.e 801
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.xhome
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[93]
push.v self.undyne
conv.v.i
push.v [stacktop]self.yhome
pushi.e 800
cmp.i.v GTE
bf [96]

:[94]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v GT
bf [96]

:[95]
pushi.e 801
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.xhome
push.d 8.4
pop.v.d self.cn
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.cn
push.d 8.4
cmp.d.v EQ
bf [112]

:[97]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v GT
bf [99]

:[98]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v LT
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.d 9.4
pop.v.d self.cn

:[102]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 20
sub.i.v
cmp.v.v LT
bf [104]

:[103]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 800
cmp.i.v GT
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.d 9.4
pop.v.d self.cn

:[107]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 800
cmp.i.v LTE
bf [110]

:[108]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
cmp.v.v LT
bf [110]

:[109]
pushi.e 799
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.yhome
push.d 8.3
pop.v.d self.cn

:[110]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v GTE
bf [112]

:[111]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed

:[112]
push.v self.cn
pushi.e 10
cmp.i.v EQ
bf [119]

:[113]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v GT
bt [115]

:[114]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
sub.i.v
cmp.v.v LT
b [116]

:[115]
push.e 1

:[116]
bf [118]

:[117]
pushi.e 8
pop.v.i self.cn
b [119]

:[118]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
pushi.e 8
pop.v.i self.cn

:[119]
push.v self.cn
pushi.e 9
cmp.i.v EQ
bf [124]

:[120]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v GT
bf [122]

:[121]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed

:[122]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 1
cmp.i.v LTE
bf [124]

:[123]
pushi.e 10
pop.v.i self.cn

:[124]
push.v self.cn
push.d 9.1
cmp.d.v EQ
bf [126]

:[125]
pushi.e 12
pop.v.i self.cn

:[126]
push.v self.cn
push.d 9.2
cmp.d.v EQ
bf [134]

:[127]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v GT
bt [129]

:[128]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 800
cmp.i.v LT
b [130]

:[129]
push.e 1

:[130]
bf [132]

:[131]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed

:[132]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 1
cmp.i.v LTE
bf [134]

:[133]
pushi.e 13
pop.v.i self.cn

:[134]
push.v self.cn
push.d 9.3
cmp.d.v EQ
bf [136]

:[135]
pushi.e 14
pop.v.i self.cn

:[136]
push.v self.cn
push.d 9.4
cmp.d.v EQ
bf [144]

:[137]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 1110
cmp.i.v GT
bt [139]

:[138]
push.v self.undyne
conv.v.i
push.v [stacktop]self.xhome
pushi.e 800
cmp.i.v LT
b [140]

:[139]
push.e 1

:[140]
bf [142]

:[141]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed

:[142]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 1
cmp.i.v LTE
bf [144]

:[143]
pushi.e 15
pop.v.i self.cn

:[144]
push.v self.cn
pushi.e 12
cmp.i.v EQ
bf [151]

:[145]
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 60
add.i.v
cmp.v.v GT
bt [147]

:[146]
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 60
sub.i.v
cmp.v.v LT
b [148]

:[147]
push.e 1

:[148]
bf [150]

:[149]
push.d 8.1
pop.v.d self.cn
b [151]

:[150]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
push.d 8.1
pop.v.d self.cn

:[151]
push.v self.cn
pushi.e 13
cmp.i.v EQ
bf [158]

:[152]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v GT
bt [154]

:[153]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 20
sub.i.v
cmp.v.v LT
b [155]

:[154]
push.e 1

:[155]
bf [157]

:[156]
push.d 8.2
pop.v.d self.cn
b [158]

:[157]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
push.d 8.2
pop.v.d self.cn

:[158]
push.v self.cn
pushi.e 14
cmp.i.v EQ
bf [165]

:[159]
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 60
add.i.v
cmp.v.v GT
bt [161]

:[160]
push.v 1576.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 60
sub.i.v
cmp.v.v LT
b [162]

:[161]
push.e 1

:[162]
bf [164]

:[163]
push.d 8.3
pop.v.d self.cn
b [165]

:[164]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vhspeed
push.d 8.3
pop.v.d self.cn

:[165]
push.v self.cn
pushi.e 15
cmp.i.v EQ
bf [end]

:[166]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v GT
bt [168]

:[167]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 20
sub.i.v
cmp.v.v LT
b [169]

:[168]
push.e 1

:[169]
bf [171]

:[170]
push.d 8.4
pop.v.d self.cn
b [end]

:[171]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hhspeed
push.d 8.4
pop.v.d self.cn

:[end]