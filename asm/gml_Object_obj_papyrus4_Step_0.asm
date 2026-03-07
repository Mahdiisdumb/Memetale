.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.d 0.5
push.v self.fade
conv.v.i
pop.v.d [stacktop]self.fadespeed
push.s "music/papyrus.ogg"@2632
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.conversation

:[2]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 3
pop.v.i self.conversation
pushi.e 1339
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 12
sub.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
pop.v.v self.xxblcon
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [11]

:[8]
pushi.e 243
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
pushi.e 6
pop.v.i self.conversation
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i 1576.visible
pushi.e 1133
conv.i.v
push.v 1576.y
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
pushi.e 120
pop.v.i self.conversation
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.msc
push.s "obj_papyrus4_209"@20474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus4_210"@20475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus4_211"@20476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus4_212"@20478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[10]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[11]
push.v self.conversation
pushi.e 6
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
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.d 0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 7
pop.v.i self.conversation
pushi.e 220
pop.v.i self.x
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.solid

:[16]
push.v self.conversation
pushi.e 50
cmp.i.v EQ
bf [18]

:[17]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 2
pushi.e 995
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 51
pop.v.i self.conversation
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.d 0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 0.3
conv.d.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.d 0.1
conv.d.v
push.d 0.6
conv.d.v
push.v self.computersound
call.i caster_loop(argc=3)
popz.v

:[21]
push.v self.conversation
pushi.e 52
cmp.i.v EQ
bf [27]

:[22]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v 995.randofactor
pushi.e -1
cmp.i.v EQ
bf [27]

:[23]
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [26]

:[25]
pushi.e 8
conv.i.v
pushi.e 80
conv.i.v
pushi.e 80
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e 8
conv.i.v
pushi.e 100
conv.i.v
pushi.e 80
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e 8
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e 8
conv.i.v
pushi.e 180
conv.i.v
pushi.e 80
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[26]
pushglb.v global.currentsong
call.i caster_free(argc=1)
popz.v
push.v self.computersound
call.i caster_free(argc=1)
popz.v
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 53
pop.v.i self.conversation

:[27]
push.v self.conversation
pushi.e 54
cmp.i.v EQ
bf [29]

:[28]
push.v self.sans
conv.v.i
push.v [stacktop]self.usprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1410
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 55
pop.v.i self.conversation

:[29]
push.v self.conversation
pushi.e 56
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.fun
push.d 0.25
push.v self.sans
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 57
pop.v.i self.conversation
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[31]
push.v self.conversation
pushi.e 58
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 59
pop.v.i self.conversation

:[33]
push.v self.conversation
pushi.e 60
cmp.i.v EQ
bf [37]

:[34]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.papyrus
conv.v.i
push.v [stacktop]self.dsprite
cmp.v.v EQ
bf [36]

:[35]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dddd
push.d 0.05
push.v self.dddd
conv.v.i
pop.v.d [stacktop]self.fadespeed

:[36]
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 61
pop.v.i self.conversation

:[37]
push.v self.conversation
pushi.e 62
cmp.i.v EQ
bf [39]

:[38]
pushi.e 63
pop.v.i self.conversation

:[39]
push.v self.conversation
pushi.e 80
cmp.i.v EQ
bf [41]

:[40]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [46]

:[43]
pushi.e 948
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 948
pushenv [45]

:[44]
call.i scr_depth(argc=0)
popz.v

:[45]
popenv [44]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.utsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 81
pop.v.i self.conversation

:[46]
push.v self.conversation
pushi.e 82
cmp.i.v EQ
bf [48]

:[47]
push.v self.sans
conv.v.i
push.v [stacktop]self.usprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.papyrus
conv.v.i
push.v [stacktop]self.dsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 55
pop.v.i self.conversation

:[48]
push.v self.conversation
pushi.e 99
cmp.i.v EQ
bf [50]

:[49]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 22
pop.v.i self.conversation

:[53]
push.v self.conversation
pushi.e 22
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.i global.interact
pushi.e 228
pop.v.i global.msc
pushi.e 1
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 19
pop.v.i global.typer
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 23
pop.v.i self.conversation

:[55]
push.v self.conversation
pushi.e 23
cmp.i.v EQ
bf [57]

:[56]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 5
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hhh
push.d 0.05
push.v self.hhh
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 24
pop.v.i self.conversation

:[60]
push.v self.conversation
pushi.e 63
cmp.i.v EQ
bf [66]

:[61]
push.s "music/snowy.ogg"@2633
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 58
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 1024
conv.i.v
push.v self.sans
conv.v.i
push.v [stacktop]self.y
push.v self.sans
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
popz.v
push.v self.sans
conv.v.i
pushenv [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
popenv [62]
push.v self.papyrus
conv.v.i
pushenv [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
popenv [64]
call.i instance_destroy(argc=0)
popz.v

:[66]
push.v self.conversation
pushi.e 120
cmp.i.v EQ
bf [68]

:[67]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [74]

:[70]
pushi.e 1
pop.v.i global.facing
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [72]

:[71]
pushi.e 0
pop.v.i 1576.visible
pushi.e 3
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.mc
conv.v.i
pop.v.d [stacktop]self.image_speed

:[72]
push.v self.mc
conv.v.i
push.v [stacktop]self.x
push.v self.mc
conv.v.i
push.v [stacktop]self.xstart
pushi.e 90
add.i.v
cmp.v.v GT
bf [74]

:[73]
push.v self.mc
conv.v.i
push.v [stacktop]self.xstart
pushi.e 93
add.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_speed

:[74]
push.v self.conversation
pushi.e 120
cmp.i.v EQ
bf [76]

:[75]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [end]

:[78]
pushi.e 1
pop.v.i global.facing
push.v self.mc
conv.v.i
push.v [stacktop]self.x
push.v self.mc
conv.v.i
push.v [stacktop]self.xstart
pushi.e 90
add.i.v
cmp.v.v GT
bf [end]

:[79]
push.v self.mc
conv.v.i
push.v [stacktop]self.xstart
pushi.e 93
add.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pop.v.v 1576.x
pushi.e 1
pop.v.i 1576.visible
push.v self.mc
conv.v.i
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
pushi.e 0
pop.v.i global.msc
push.s "obj_papyrus4_405"@20480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus4_406"@20482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus4_407"@20484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus4_408"@20486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus4_409"@20488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus4_411"@20490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus4_413"@20492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus4_415"@20494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus4_417"@20496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus4_419"@20498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 15
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus4_421"@20500
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_papyrus4_422"@20502
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_papyrus4_423"@20503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_papyrus4_424"@20504
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_papyrus4_425"@20506
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_papyrus4_426"@20508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_papyrus4_427"@20510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_papyrus4_428"@20512
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_papyrus4_429"@20513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_papyrus4_430"@20515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 80
pop.v.i self.conversation

:[end]