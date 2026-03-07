.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
push.v self.x
push.v 1576.x
pushi.e 23
sub.i.v
cmp.v.v GTE
bf [9]

:[2]
push.v 1576.x
pushi.e 23
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.conversation
pushi.e 21
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.image_index
pushi.e 89
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e 89
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
push.s "obj_darksans1_345"@11432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksans1_346"@11434
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darksans1_347"@11436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "M1"@48048
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.M1
push.v self.M1
pushi.e 1
add.i.v
push.s "M1"@48048
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
push.v self.M1
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.s "obj_darksans1_354"@11437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksans1_355"@11438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darksans1_356"@11439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[8]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[9]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i global.interact
pushi.e 1131
pop.v.i 1576.sprite_index
pushi.e 0
pop.v.i 1576.facing
pushi.e 0
pop.v.i global.facing
pushi.e 50
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.conversation

:[14]
push.v self.sprite_index
pushi.e 1454
cmp.i.v EQ
bf [17]

:[15]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.fsound
call.i caster_play(argc=3)
popz.v
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
pop.v.i self.conversation

:[20]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [22]

:[21]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 0
pop.v.i 1576.visible
pushi.e 1357
conv.i.v
push.v 1576.y
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.mainact
pushi.e 4
push.v self.mainact
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 4
pop.v.i 1576.hspeed
pushi.e 4
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 7
pop.v.i self.conversation

:[25]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [27]

:[26]
push.v self.x
pushi.e 2440
cmp.i.v GTE
b [28]

:[27]
push.e 0

:[28]
bf [31]

:[29]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i 1357.hspeed
pushi.e 0
pop.v.i 1357.image_speed
pushi.e 0
pop.v.i 1357.image_index
pushi.e 0
pop.v.i 1576.hspeed
push.s "obj_darksans1_399"@11441
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
popz.v
pushi.e 8
pop.v.i self.conversation
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 50
pop.v.i self.conversation

:[31]
push.v self.conversation
pushi.e 8
cmp.i.v EQ
bf [33]

:[32]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e -1
pop.v.i 1357.vspeed
pushi.e -1
pop.v.i 1576.vspeed
pushi.e 9
pop.v.i self.conversation

:[36]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [39]

:[37]
push.v 1576.y
push.v 991.y
cmp.v.v LTE
bf [39]

:[38]
pushi.e 0
pop.v.i 1357.vspeed
pushi.e 0
pop.v.i 1576.vspeed
push.v 991.y
pop.v.v 1576.y
push.v 991.y
pop.v.v 1357.y
pushi.e 1
pop.v.i 1576.hspeed
pushi.e 1
pop.v.i 1357.hspeed
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hh
push.d 0.01
push.v self.hh
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 10
pop.v.i self.conversation

:[39]
push.v self.conversation
pushi.e 10
cmp.i.v EQ
bf [42]

:[40]
push.v 1576.x
push.v 991.x
cmp.v.v GTE
bf [42]

:[41]
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1357.hspeed
pushi.e 0
pop.v.i 1357.image_speed
pushi.e 0
pop.v.i 1357.image_index
push.v 991.x
pop.v.v 1576.x
push.v 991.x
pop.v.v 1357.x
push.v 1576.y
pushi.e 60
add.i.v
pop.v.v 1576.y
pushi.e 1033
conv.i.v
push.v self.y
pushi.e 12
sub.i.v
pushbltn.v self.room_width
call.i instance_create(argc=3)
pop.v.v self.pap
pushi.e 1425
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 180
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 4
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 11
pop.v.i self.conversation

:[42]
push.v self.conversation
pushi.e 11
cmp.i.v EQ
bf [45]

:[43]
push.v 1033.x
push.v 1033.xstart
pushi.e 140
sub.i.v
cmp.v.v LTE
bf [45]

:[44]
pushglb.v global.currentsong2
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i 1033.speed
pushi.e 0
pop.v.i 1033.image_speed
pushi.e 1426
pop.v.i 1033.sprite_index
push.s "obj_darksans1_457"@11443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_darksans1_459"@11445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darksans1_460"@11447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darksans1_461"@11449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darksans1_462"@11451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_darksans1_463"@11453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_darksans1_465"@11455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 12
pop.v.i self.conversation

:[45]
push.v self.conversation
pushi.e 12
cmp.i.v EQ
bf [47]

:[46]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 1
pop.v.i 1033.fun
pushi.e 1397
pop.v.i 1033.sprite_index
push.d 0.2
pop.v.d 1033.image_speed
pushi.e 13
pop.v.i self.conversation
pushi.e 18
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
push.s "obj_darksans1_480"@11457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksans1_481"@11459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darksans1_482"@11461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darksans1_483"@11463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darksans1_484"@11465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[50]
push.v self.conversation
pushi.e 13
cmp.i.v EQ
bf [52]

:[51]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 1
pop.v.i 1033.fun
pushi.e 1399
pop.v.i 1033.sprite_index
push.d 0.25
pop.v.d 1033.image_speed
pushi.e 14
pop.v.i self.conversation
pushi.e 0
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
push.s "obj_darksans1_496"@11467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksans1_497"@11469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darksans1_498"@11471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darksans1_499"@11473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darksans1_500"@11475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darksans1_501"@11477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[55]
push.v self.conversation
pushi.e 14
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
pushi.e 0
pop.v.i 1033.fun
pushi.e 1423
pop.v.i 1033.sprite_index
pushi.e 0
pop.v.i 1033.image_speed
pushi.e 15
pop.v.i self.conversation
pushi.e 0
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facechoice
pushi.e 17
pop.v.i global.typer
push.s "obj_darksans1_514"@11479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksans1_515"@11481
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

:[60]
push.v self.conversation
pushi.e 15
cmp.i.v EQ
bf [62]

:[61]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 1
pop.v.i 1033.fun
pushi.e 1398
pop.v.i 1033.sprite_index
push.d 0.4
pop.v.d 1033.image_speed
pushi.e 16
pop.v.i self.conversation
pushi.e 1
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 18
pop.v.i global.typer
push.s "obj_darksans1_528"@11483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksans1_529"@11485
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darksans1_530"@11487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_darksans1_532"@11489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darksans1_533"@11491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[65]
push.v self.conversation
pushi.e 16
cmp.i.v EQ
bf [67]

:[66]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 18
pop.v.i self.conversation
pushi.e 10
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.rememberxview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pop.v.v self.rememberyview
pushi.e -4
pushi.e -1
pushbltn.v self.view_current
conv.v.i
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i 1576.cutscene

:[70]
push.v self.conversation
pushi.e 17
cmp.i.v EQ
bf [71]

:[71]
push.v self.conversation
pushi.e 18
cmp.i.v EQ
bf [77]

:[72]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v GT
bf [74]

:[73]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_xview
pushi.e 3
add.i.v
pop.i.v [array]self.view_xview

:[74]
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v GT
bf [76]

:[75]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_yview
pushi.e 9
add.i.v
pop.i.v [array]self.view_yview

:[76]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_hview
pushi.e 12
sub.i.v
pop.i.v [array]self.view_hview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_wview
pushi.e 16
sub.i.v
pop.i.v [array]self.view_wview
pushi.e 30
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[77]
push.v self.conversation
pushi.e 20
cmp.i.v EQ
bf [83]

:[78]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
push.v self.rememberxview
cmp.v.v GT
bf [80]

:[79]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_xview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_xview

:[80]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
push.v self.rememberyview
cmp.v.v GT
bf [82]

:[81]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_yview
pushi.e 9
sub.i.v
pop.i.v [array]self.view_yview

:[82]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_hview
pushi.e 12
add.i.v
pop.i.v [array]self.view_hview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_wview
pushi.e 16
add.i.v
pop.i.v [array]self.view_wview

:[83]
push.v self.conversation
pushi.e 21
cmp.i.v EQ
bf [85]

:[84]
pushi.e 0
pop.v.i 1033.fun
pushi.e 1426
pop.v.i 1033.sprite_index
pushi.e 16
pop.v.i self.conversation
pushi.e 1453
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 18
pop.v.i global.typer
push.s "obj_darksans1_582"@11493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_darksans1_584"@11495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_darksans1_586"@11497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darksans1_587"@11499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_darksans1_588"@11501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_darksans1_589"@11503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_darksans1_591"@11505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_darksans1_592"@11507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[85]
push.v self.conversation
pushi.e 23
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1453
pop.v.i self.sprite_index
pushi.e 0
pop.v.i 1033.fun
pushi.e 1426
pop.v.i 1033.sprite_index
pushi.e 1
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 18
pop.v.i global.typer
push.s "obj_darksans1_604"@11509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksans1_605"@11511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darksans1_606"@11513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darksans1_607"@11515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darksans1_608"@11517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darksans1_609"@11519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 24
pop.v.i self.conversation
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[87]
push.v self.conversation
pushi.e 24
cmp.i.v EQ
bf [89]

:[88]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
push.d 0.5
pop.v.d 1033.image_speed
push.v 1033.rsprite
pop.v.v 1033.sprite_index
pushi.e 4
pop.v.i 1033.hspeed
pushi.e 25
pop.v.i self.conversation

:[92]
push.v self.conversation
pushi.e 25
cmp.i.v EQ
bf [95]

:[93]
push.v 1033.x
push.v 1033.xstart
pushi.e 5
add.i.v
cmp.v.v GT
bf [95]

:[94]
pushi.e 1419
pop.v.i 1033.sprite_index
pushi.e -1
pop.v.i 1033.hspeed
pushi.e 0
pop.v.i 1033.image_speed
pushi.e 26
pop.v.i self.conversation

:[95]
push.v self.conversation
pushi.e 26
cmp.i.v EQ
bf [98]

:[96]
push.v 1033.x
push.v 1033.xstart
pushi.e 50
sub.i.v
cmp.v.v LT
bf [98]

:[97]
pushi.e 0
pop.v.i 1033.hspeed
pushi.e 1423
pop.v.i 1033.sprite_index
pushi.e 0
pop.v.i 1033.image_index
pushi.e 2
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 18
pop.v.i global.typer
push.s "obj_darksans1_644"@11521
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
popz.v
pushi.e 27
pop.v.i self.conversation

:[98]
push.v self.conversation
pushi.e 27
cmp.i.v EQ
bf [100]

:[99]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 1
pop.v.i 1033.hspeed
pushi.e 1417
pop.v.i 1033.sprite_index
pushi.e 28
pop.v.i self.conversation
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hh
push.d 0.01
push.v self.hh
conv.v.i
pop.v.d [stacktop]self.fadespeed

:[103]
push.v self.conversation
pushi.e 28
cmp.i.v EQ
bf [106]

:[104]
push.v 1033.x
push.v 1033.xstart
cmp.v.v GT
bf [106]

:[105]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facechoice
pushi.e 17
pop.v.i global.typer
push.s "obj_darksans1_666"@11523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1576
pushi.e -1
pushbltn.v self.view_current
conv.v.i
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 29
pop.v.i self.conversation

:[106]
push.v self.conversation
pushi.e 29
cmp.i.v EQ
bf [108]

:[107]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
push.v 1576.y
pushi.e 60
sub.i.v
pop.v.v 1576.y
push.v 1576.x
pop.v.v self.rememberx
pushi.e -2
pop.v.i 1576.hspeed
pushi.e -2
pop.v.i 1357.hspeed
pushi.e 30
pop.v.i self.conversation

:[111]
push.v self.conversation
pushi.e 30
cmp.i.v EQ
bf [113]

:[112]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [114]

:[113]
push.e 0

:[114]
bf [119]

:[115]
push.v 1576.x
push.v self.rememberx
pushi.e 30
sub.i.v
cmp.v.v LT
bf [119]

:[116]
pushi.e 0
pop.v.i 1576.facing
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 1357
pushenv [118]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[118]
popenv [117]
pushi.e 1
pop.v.i 1576.visible
pushi.e 36
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 1341
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1023
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 993
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2380
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 993
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2680
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 32
pop.v.i self.conversation
push.s "tundra"@50155
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[119]
push.v self.conversation
pushi.e 50
cmp.i.v EQ
bf [121]

:[120]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hh
push.d 0.01
push.v self.hh
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 1
pop.v.i global.interact
pushi.e 51
pop.v.i self.conversation
pushi.e 90
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[124]
push.v self.conversation
pushi.e 52
cmp.i.v EQ
bf [126]

:[125]
pushi.e 1453
pop.v.i self.sprite_index
pushi.e 0
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facechoice
pushi.e 17
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_darksans1_720"@11524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksans1_721"@11526
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
pushi.e 53
pop.v.i self.conversation

:[126]
push.v self.conversation
pushi.e 53
cmp.i.v EQ
bf [128]

:[127]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [129]

:[128]
push.e 0

:[129]
bf [131]

:[130]
pushi.e 1453
pop.v.i self.sprite_index
pushi.e 1033
conv.i.v
push.v self.y
pushi.e 12
sub.i.v
pushbltn.v self.room_width
call.i instance_create(argc=3)
pop.v.v self.pap
pushi.e 1425
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 180
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 4
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 54
pop.v.i self.conversation

:[131]
push.v self.conversation
pushi.e 54
cmp.i.v EQ
bf [134]

:[132]
push.v 1033.x
push.v 1033.xstart
pushi.e 180
sub.i.v
cmp.v.v LTE
bf [134]

:[133]
pushglb.v global.currentsong2
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i 1033.speed
pushi.e 0
pop.v.i 1033.image_speed
pushi.e 1426
pop.v.i 1033.sprite_index
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_darksans1_750"@11528
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_darksans1_752"@11530
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_darksans1_754"@11532
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_darksans1_755"@11534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 55
pop.v.i self.conversation

:[134]
push.v self.conversation
pushi.e 55
cmp.i.v EQ
bf [136]

:[135]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
push.d 0.5
pop.v.d 1033.image_speed
pushi.e 1417
pop.v.i 1033.sprite_index
pushi.e 4
pop.v.i 1033.hspeed
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hh
push.d 0.02
push.v self.hh
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 56
pop.v.i self.conversation

:[139]
push.v self.conversation
pushi.e 56
cmp.i.v EQ
bf [142]

:[140]
push.v 1033.x
push.v 1033.xstart
cmp.v.v GT
bf [142]

:[141]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facechoice
pushi.e 17
pop.v.i global.typer
push.s "obj_darksans1_780"@11536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1576
pushi.e -1
pushbltn.v self.view_current
conv.v.i
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 58
pop.v.i self.conversation

:[142]
push.v self.conversation
pushi.e 58
cmp.i.v EQ
bf [144]

:[143]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [145]

:[144]
push.e 0

:[145]
bf [end]

:[146]
pushi.e 0
pop.v.i 1576.facing
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 1357
pushenv [148]

:[147]
call.i instance_destroy(argc=0)
popz.v

:[148]
popenv [147]
pushi.e 1
pop.v.i 1576.visible
pushi.e 36
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 1341
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1023
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 993
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2380
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 993
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2680
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 59
pop.v.i self.conversation
push.s "tundra"@50155
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]