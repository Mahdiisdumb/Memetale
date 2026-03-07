.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v 800.y
pop.v.v 1576.y
pushi.e 2
pop.v.i global.facing
pushi.e 2
pop.v.i 1576.facing
pushi.e 1
pop.v.i global.interact

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i global.msc
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.v self.dtsprite
pop.v.v self.sprite_index
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 1
pop.v.i 1576.phasing
push.s "obj_grillbynpc_sansdate_121"@14079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.d 3.5
pop.v.d self.con

:[6]
push.v self.con
push.d 3.5
cmp.d.v EQ
bf [8]

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.usprite
pop.v.v self.sprite_index
push.s "obj_grillbynpc_sansdate_129"@14081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[11]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.usprite
pop.v.v self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.vspeed
pushi.e 12
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.con
pushi.e -2
pop.v.i 1576.vspeed
push.d 0.2
pop.v.d 1576.image_speed

:[16]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [19]

:[17]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 3
pop.v.i 1576.facing
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
push.v self.ltsprite
pop.v.v self.sprite_index
push.d 7.1
pop.v.d self.con
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [19]

:[18]
push.d 0.25
pop.v.d 1474.image_speed
push.d 0.25
pop.v.d 1475.image_speed
push.s "obj_grillbynpc_sansdate_164"@14083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto
push.d 7.2
pop.v.d self.con

:[19]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [21]

:[20]
push.d 6.2
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[21]
push.v self.con
push.d 7.2
cmp.d.v EQ
bf [23]

:[22]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [32]

:[25]
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [31]

:[26]
pushi.e 1474
pushenv [28]

:[27]
pushi.e 0
pop.v.i self.image_speed

:[28]
popenv [27]
pushi.e 1475
pushenv [30]

:[29]
pushi.e 0
pop.v.i self.image_speed

:[30]
popenv [29]

:[31]
push.v self.rsprite
pop.v.v self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.hspeed
pushi.e 11
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 8
pop.v.i self.con
pushi.e 1
pop.v.i 1576.hspeed
push.d 0.2
pop.v.d 1576.image_speed

:[32]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 1
pop.v.i 1576.facing
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i self.image_speed
push.v self.rtsprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d 1473.image_speed
push.d 0.25
pop.v.d 1466.image_speed
push.s "obj_grillbynpc_sansdate_208"@14085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto
pushi.e 10
pop.v.i self.con

:[34]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [36]

:[35]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 0
pop.v.i 1473.image_speed
pushi.e 0
pop.v.i 1466.image_speed
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 2
pop.v.i 1576.facing
pushi.e 2
pop.v.i global.facing
push.d 0.2
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.vspeed
pushi.e 26
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 11
pop.v.i self.con
pushi.e -3
pop.v.i 1576.vspeed
push.d 0.2
pop.v.d 1576.image_speed

:[39]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [41]

:[40]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 3
pop.v.i 1576.facing
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i self.image_speed
push.v self.ltsprite
pop.v.v self.sprite_index
push.d 0.2
pop.v.d 1469.image_speed
push.s "obj_grillbynpc_sansdate_245"@14087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_grillbynpc_sansdate_247"@14089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_248"@14091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto
pushi.e 13
pop.v.i self.con

:[41]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [43]

:[42]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [52]

:[45]
push.d 0.5
pop.v.d 1469.image_speed
push.d 0.5
pop.v.d 1467.image_speed
push.d 0.5
pop.v.d 1473.image_speed
pushi.e 1474
pushenv [47]

:[46]
push.d 0.5
pop.v.d self.image_speed

:[47]
popenv [46]
pushi.e 1475
pushenv [49]

:[48]
push.d 0.5
pop.v.d self.image_speed

:[49]
popenv [48]
pushi.e 1476
pushenv [51]

:[50]
push.d 0.5
pop.v.d self.image_speed

:[51]
popenv [50]
push.d 0.5
pop.v.d 1466.image_speed
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.rimshot
call.i caster_play(argc=3)
popz.v
pushi.e 1448
pop.v.i self.sprite_index
pushi.e 44
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 14
pop.v.i self.con

:[52]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [62]

:[53]
pushi.e 16
pop.v.i self.con
pushi.e 0
pop.v.i 1469.image_speed
pushi.e 0
pop.v.i 1467.image_speed
pushi.e 0
pop.v.i 1473.image_speed
pushi.e 1474
pushenv [55]

:[54]
pushi.e 0
pop.v.i self.image_speed

:[55]
popenv [54]
pushi.e 1475
pushenv [57]

:[56]
pushi.e 0
pop.v.i self.image_speed

:[57]
popenv [56]
pushi.e 1476
pushenv [59]

:[58]
pushi.e 0
pop.v.i self.image_speed

:[59]
popenv [58]
pushi.e 0
pop.v.i 1466.image_speed
pushi.e 1371
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.image_index

:[61]
popenv [60]
push.v self.ltsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i 1576.facing
pushi.e 1
pop.v.i global.facing
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_grillbynpc_sansdate_286"@14093
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 17
pop.v.i self.con

:[62]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [64]

:[63]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [68]

:[66]
push.d 17.1
pop.v.d self.con
pushi.e 1
pop.v.i global.phasing
pushi.e 2
pop.v.i global.facing
push.d 0.25
pop.v.d 1576.image_speed
push.d 0.25
pop.v.d self.image_speed
push.v self.usprite
pop.v.v self.sprite_index
pushi.e -1
pop.v.i self.vspeed
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x
pushi.e -1
pop.v.i 1576.vspeed
push.v 1576.x
pushi.e 177
cmp.i.v NEQ
bf [68]

:[67]
pushi.e 177
pop.v.i 1576.x

:[68]
push.v self.con
push.d 17.1
cmp.d.v EQ
bf [73]

:[69]
push.v self.y
pushi.e 75
cmp.i.v LTE
bf [71]

:[70]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 1439
pop.v.i self.sprite_index
pushi.e 74
pop.v.i self.y

:[71]
push.v 1576.y
pushi.e 73
cmp.i.v LTE
bf [73]

:[72]
pushi.e 73
pop.v.i 1576.y
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 20
pop.v.i self.con

:[73]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [75]

:[74]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.whoopee
call.i caster_play(argc=3)
popz.v
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 21
pop.v.i self.con

:[78]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [80]

:[79]
push.v self.whoopee
call.i caster_stop(argc=1)
popz.v
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 1
pop.v.i global.faceemotion
pushi.e 570
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 23
pop.v.i self.con

:[80]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [82]

:[81]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
pushi.e 1438
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 1468
pop.v.i self.grillby
pushi.e 1311
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.grillby
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 200000
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -3
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 24
pop.v.i self.con
pushi.e 37
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[85]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [87]

:[86]
pushi.e 0
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1312
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -2
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 26
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[87]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [89]

:[88]
pushi.e 0
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 28
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[89]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [91]

:[90]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 1440
pop.v.i self.sprite_index
pushi.e 572
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pop.v.i self.con

:[91]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [93]

:[92]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 1
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 2
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1313
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 32
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[96]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [98]

:[97]
pushi.e 1310
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 34
pop.v.i self.con
pushi.e 47
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 0
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 3
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.hspeed

:[98]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [104]

:[99]
pushi.e 0
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1313
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1439
pop.v.i self.sprite_index
pushi.e -5
pushi.e 391
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
pushi.e 1435
pop.v.i self.foodimg

:[101]
pushi.e -5
pushi.e 391
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [103]

:[102]
pushi.e 1436
pop.v.i self.foodimg

:[103]
push.v self.foodimg
pushi.e 72
conv.i.v
pushi.e 192
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.food1
push.v self.foodimg
pushi.e 72
conv.i.v
pushi.e 208
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.food2
push.i 190000
push.v self.food1
conv.v.i
pop.v.i [stacktop]self.depth
push.i 190000
push.v self.food2
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 36
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 0
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.hspeed

:[104]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [106]

:[105]
push.d 0.25
push.v self.grillby
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1311
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -3
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 12
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 38
pop.v.i self.con

:[106]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [110]

:[107]
pushi.e 1304
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.grillby
conv.v.i
pushenv [109]

:[108]
call.i scr_depth(argc=0)
pop.v.v self.depth

:[109]
popenv [108]
pushi.e 0
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.grillby
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 574
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 40
pop.v.i self.con

:[110]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [112]

:[111]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [113]

:[112]
push.e 0

:[113]
bf [116]

:[114]
push.v 784.stringno
pushi.e 0
cmp.i.v GT
bf [116]

:[115]
pushi.e 1441
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[116]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [118]

:[117]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [122]

:[120]
push.d 41.5
pop.v.d self.con
push.v self.burg
pushi.e 2
cmp.i.v EQ
bf [122]

:[121]
pushi.e 0
pop.v.i self.drink
push.d 40.1
pop.v.d self.con

:[122]
push.v self.con
push.d 40.1
cmp.d.v EQ
bf [133]

:[123]
push.v self.image_index
pushi.e 8
cmp.i.v LT
bf [132]

:[124]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
push.v self.drink
pushi.e 1
add.i.v
pop.v.v self.drink
push.v self.drink
pushi.e 1
cmp.i.v EQ
bt [128]

:[125]
push.v self.drink
pushi.e 3
cmp.i.v EQ
bt [128]

:[126]
push.v self.drink
pushi.e 5
cmp.i.v EQ
bt [128]

:[127]
push.v self.drink
pushi.e 7
cmp.i.v EQ
b [129]

:[128]
push.e 1

:[129]
bf [131]

:[130]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v

:[131]
push.d 39.2
pop.v.d self.con
pushi.e 5
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
b [133]

:[132]
pushi.e 9
pop.v.i self.image_index
push.d 40.3
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[133]
push.v self.con
push.d 40.2
cmp.d.v EQ
bf [135]

:[134]
push.d 40.1
pop.v.d self.con

:[135]
push.v self.con
push.d 41.3
cmp.d.v EQ
bf [137]

:[136]
pushi.e 43
pop.v.i self.con
push.v self.usprite
pop.v.v self.sprite_index

:[137]
push.v self.con
push.d 41.5
cmp.d.v EQ
bf [139]

:[138]
pushi.e 1440
pop.v.i self.sprite_index
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
push.s "obj_grillbynpc_sansdate_521"@14095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_522"@14097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 41.6
pop.v.d self.con

:[139]
push.v self.con
push.d 41.6
cmp.d.v EQ
bf [141]

:[140]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [142]

:[141]
push.e 0

:[142]
bf [145]

:[143]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
pushi.e 1
push.v self.food1
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 42
pop.v.i self.con

:[145]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [147]

:[146]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [152]

:[149]
push.v self.burg
pushi.e 2
cmp.i.v LT
bf [151]

:[150]
pushi.e 3
pop.v.i global.facechoice
pushi.e 17
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_grillbynpc_sansdate_545"@14098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_546"@14100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_547"@14102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[151]
pushi.e 43
pop.v.i self.con

:[152]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [154]

:[153]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [155]

:[154]
push.e 0

:[155]
bf [161]

:[156]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [161]

:[157]
push.v self.food1
conv.v.i
push.v [stacktop]self.x
push.v self.food1
conv.v.i
push.v [stacktop]self.xstart
pushi.e 16
sub.i.v
cmp.v.v GT
bf [159]

:[158]
push.v self.food1
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x

:[159]
push.v self.food2
conv.v.i
push.v [stacktop]self.x
push.v self.food2
conv.v.i
push.v [stacktop]self.xstart
pushi.e 16
sub.i.v
cmp.v.v GT
bf [161]

:[160]
push.v self.food2
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x

:[161]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [163]

:[162]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
pushi.e 1437
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 90
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 44
pop.v.i self.con

:[166]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [168]

:[167]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1440
pop.v.i self.sprite_index
pushi.e 0
pop.v.i global.msc
push.s "obj_grillbynpc_sansdate_577"@14104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_578"@14106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_579"@14108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_580"@14110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_581"@14112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_582"@14114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_583"@14116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_584"@14118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 46
pop.v.i self.con

:[168]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [170]

:[169]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [171]

:[170]
push.e 0

:[171]
bf [173]

:[172]
pushi.e 1439
pop.v.i self.sprite_index
pushi.e 108
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 47
pop.v.i self.con
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.curvol
push.v self.curvol
pop.v.v self.origvol

:[173]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [176]

:[174]
push.v self.curvol
push.d 0.01
sub.d.v
pop.v.v self.curvol
push.v self.curvol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.curvol
push.d 0.02
cmp.d.v LT
bf [176]

:[175]
pushi.e 0
pop.v.i self.curvol
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[176]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [178]

:[177]
push.s "obj_grillbynpc_sansdate_609"@14120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 49
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[178]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [180]

:[179]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [181]

:[180]
push.e 0

:[181]
bf [183]

:[182]
pushi.e 50
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[183]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [185]

:[184]
push.i 200000
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.grillby
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1365
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dark
pushi.e 1
push.v self.dark
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 20
push.v self.dark
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1314
push.v self.dark
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.8
push.v self.dark
conv.v.i
pop.v.d [stacktop]self.image_alpha
pushi.e 52
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[185]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [187]

:[186]
push.d 0.4
pop.v.d self.mystvol
push.d 0.4
conv.d.v
pushi.e 1
conv.i.v
push.v self.mystery
call.i caster_loop(argc=3)
popz.v
pushi.e 576
pop.v.i global.msc
pushi.e 0
pop.v.i global.faceemotion
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 54
pop.v.i self.con

:[187]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [189]

:[188]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [190]

:[189]
push.e 0

:[190]
bf [192]

:[191]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
push.d 0.25
push.v self.grillby
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 55
pop.v.i self.con

:[192]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [202]

:[193]
push.v self.dark
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.dark
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.03
cmp.d.v LT
bf [195]

:[194]
pushi.e 0
push.v self.dark
conv.v.i
pop.v.i [stacktop]self.image_alpha

:[195]
push.v self.curvol
push.d 0.01
add.d.v
pop.v.v self.curvol
push.v self.mystvol
push.d 0.02
sub.d.v
pop.v.v self.mystvol
push.v self.mystvol
push.d 0.02
cmp.d.v LT
bf [197]

:[196]
pushi.e 0
pop.v.i self.mystvol

:[197]
push.v self.mystvol
push.v self.mystery
call.i caster_set_volume(argc=2)
popz.v
push.v self.curvol
push.v self.origvol
cmp.v.v GT
bf [201]

:[198]
push.v self.origvol
pop.v.v self.curvol
pushi.e 56
pop.v.i self.con
push.v self.mystery
call.i caster_stop(argc=1)
popz.v
push.v self.dark
conv.v.i
pushenv [200]

:[199]
call.i instance_destroy(argc=0)
popz.v

:[200]
popenv [199]

:[201]
push.v self.curvol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[202]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [204]

:[203]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 57
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[204]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [206]

:[205]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.facing
pushi.e 59
pop.v.i self.con

:[206]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [208]

:[207]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [209]

:[208]
push.e 0

:[209]
bf [211]

:[210]
pushi.e 0
pop.v.i global.msc
push.s "obj_grillbynpc_sansdate_683"@14122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_684"@14124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 60
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[211]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [213]

:[212]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [214]

:[213]
push.e 0

:[214]
bf [216]

:[215]
pushi.e 61
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[216]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [218]

:[217]
push.v self.utsprite
pop.v.v self.sprite_index
pushi.e 578
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 63
pop.v.i self.con

:[218]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [220]

:[219]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [221]

:[220]
push.e 0

:[221]
bf [223]

:[222]
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.msc
push.s "obj_grillbynpc_sansdate_708"@14126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_709"@14128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 64
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[223]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [225]

:[224]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [226]

:[225]
push.e 0

:[226]
bf [228]

:[227]
push.v self.whoopee
call.i caster_free(argc=1)
popz.v
push.v self.mystery
call.i caster_free(argc=1)
popz.v
push.v self.rimshot
call.i caster_free(argc=1)
popz.v
pushi.e 2
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 66
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[228]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [230]

:[229]
pushi.e 0
pop.v.i self.vspeed
push.v self.lsprite
pop.v.v self.sprite_index
pushi.e -2
pop.v.i self.hspeed
pushi.e 68
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[230]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [232]

:[231]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.hspeed
push.d 69.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[232]
push.v self.con
push.d 70.1
cmp.d.v EQ
bf [234]

:[233]
push.v self.usprite
pop.v.v self.sprite_index
push.s "obj_grillbynpc_sansdate_751"@14130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_sansdate_752"@14132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gege
pushi.e 0
push.v self.gege
conv.v.i
pop.v.i [stacktop]self.side
push.d 70.2
pop.v.d self.con

:[234]
push.v self.con
push.d 70.2
cmp.d.v EQ
bf [236]

:[235]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [237]

:[236]
push.e 0

:[237]
bf [239]

:[238]
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.vspeed
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 70
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[239]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [241]

:[240]
pushi.e 1
pop.v.i global.phasing
pushi.e 2
pushi.e -5
pushi.e 89
pop.v.i [array]global.flag
pushi.e 1
pop.v.i 1576.vspeed
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 72
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[241]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [end]

:[242]
pushi.e 1371
pushenv [244]

:[243]
pushi.e 1
pop.v.i self.sansmode

:[244]
popenv [243]
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]