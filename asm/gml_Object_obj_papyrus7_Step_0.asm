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
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.camera
push.d 1.5
pop.v.d self.conversation

:[2]
push.v self.conversation
push.d 1.5
cmp.d.v EQ
bf [6]

:[3]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.camera
pushi.e 119
add.i.v
cmp.v.v LT
bf [5]

:[4]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
add.i.v
pop.i.v [array]self.view_xview
b [6]

:[5]
pushi.e 2
pop.v.i self.conversation

:[6]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
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

:[11]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 4
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_papyrus7_156"@20562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus7_157"@20564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus7_158"@20566
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
pop.v.v self.mydialoguer
pushi.e 6
pop.v.i self.conversation

:[13]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [22]

:[17]
pushi.e 954
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dtrapa
pushi.e 1284
conv.i.v
pushi.e 240
conv.i.v
push.v self.x
pushi.e 170
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.dcannon
push.d -0.7
push.v self.dcannon
conv.v.i
pop.v.d [stacktop]self.vspeed
push.v self.dcannon
conv.v.i
pushenv [19]

:[18]
pushi.e 4000
pop.v.i self.depth

:[19]
popenv [18]
pushi.e 1282
conv.i.v
pushi.e 310
conv.i.v
push.v self.x
pushi.e 100
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.dspear1
pushi.e -1
push.v self.dspear1
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d -0.9
push.v self.dspear1
conv.v.i
pop.v.d [stacktop]self.vspeed
push.v self.dspear1
conv.v.i
pushenv [21]

:[20]
pushi.e 4000
pop.v.i self.depth

:[21]
popenv [20]
pushi.e 1282
conv.i.v
pushi.e -60
conv.i.v
push.v self.x
pushi.e 100
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.dspear2
push.d 0.9
push.v self.dspear2
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 1285
conv.i.v
pushi.e -100
conv.i.v
push.v self.x
pushi.e 20
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.dspike
push.d 1.2
push.v self.dspike
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 1283
conv.i.v
pushi.e -90
conv.i.v
push.v self.x
pushi.e 170
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.ddog
push.d 1.2
push.v self.ddog
conv.v.i
pop.v.d [stacktop]self.vspeed
push.d 0.1
push.v self.ddog
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 6.1
pop.v.d self.conversation
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[22]
push.v self.conversation
push.d 7.1
cmp.d.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i 1365.vspeed
pushi.e 7
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.conversation
pushi.e 8
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_papyrus7_194"@20568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus7_195"@20570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus7_196"@20572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus7_197"@20574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus7_198"@20576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus7_199"@20577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus7_200"@20579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus7_201"@20581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus7_202"@20583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus7_203"@20585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 9
pop.v.i self.conversation

:[26]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [28]

:[27]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i self.conversation

:[31]
push.v self.conversation
pushi.e 11
cmp.i.v EQ
bf [33]

:[32]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_papyrus7_221"@20586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus7_222"@20588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus7_224"@20590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus7_225"@20592
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
pop.v.v self.mydialoguer
pushi.e 12
pop.v.i self.conversation

:[33]
push.v self.conversation
pushi.e 12
cmp.i.v EQ
bf [35]

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
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
pushi.e 13
pop.v.i self.conversation
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[38]
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [42]

:[39]
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_papyrus7_244"@20593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus7_245"@20595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus7_247"@20597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus7_248"@20599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus7_249"@20601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus7_250"@20603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus7_251"@20605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus7_252"@20607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus7_253"@20609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus7_254"@20611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papyrus7_255"@20613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papyrus7_256"@20615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_papyrus7_260"@20616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus7_261"@20618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus7_262"@20620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus7_264"@20622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus7_266"@20624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus7_267"@20626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papyrus7_268"@20628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papyrus7_269"@20630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus7_271"@20632
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 15
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus7_273"@20634
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_papyrus7_274"@20636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 18
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus7_276"@20638
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 20
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus7_278"@20639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_papyrus7_279"@20641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_papyrus7_280"@20643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_papyrus7_281"@20645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_papyrus7_282"@20647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_papyrus7_283"@20649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_papyrus7_284"@20651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_papyrus7_285"@20653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_papyrus7_286"@20655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg

:[41]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 15
pop.v.i self.conversation

:[42]
push.v self.conversation
pushi.e 15
cmp.i.v EQ
bf [44]

:[43]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 1
push.v self.dtrapa
conv.v.i
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 15.5
pop.v.d self.conversation
pushi.e 2
push.v self.dcannon
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2
push.v self.dspear1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e -2
push.v self.dspear2
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e -2
push.v self.dspike
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e -2
push.v self.ddog
conv.v.i
pop.v.i [stacktop]self.vspeed

:[47]
push.v self.conversation
push.d 16.5
cmp.d.v EQ
bf [59]

:[48]
push.v self.dcannon
conv.v.i
pushenv [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
popenv [49]
push.v self.dspear1
conv.v.i
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
push.v self.dspear2
conv.v.i
pushenv [54]

:[53]
call.i instance_destroy(argc=0)
popz.v

:[54]
popenv [53]
push.v self.dspike
conv.v.i
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
push.v self.ddog
conv.v.i
pushenv [58]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[58]
popenv [57]
pushi.e 3
pop.v.i global.faceemotion
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.s "obj_papyrus7_316"@20657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.d 15.7
pop.v.d self.conversation
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[59]
push.v self.conversation
push.d 15.7
cmp.d.v EQ
bf [61]

:[60]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
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
pushi.e 16
pop.v.i self.conversation
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.conversation
pushi.e 17
cmp.i.v EQ
bf [68]

:[65]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_papyrus7_333"@20659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus7_334"@20661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus7_335"@20663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus7_336"@20665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus7_337"@20666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus7_338"@20668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_papyrus7_341"@20670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus7_342"@20671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[67]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 18
pop.v.i self.conversation

:[68]
push.v self.conversation
pushi.e 18
cmp.i.v EQ
bf [70]

:[69]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e 19
pop.v.i self.conversation
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 4
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[73]
push.v self.conversation
pushi.e 20
cmp.i.v EQ
bf [77]

:[74]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.camera
cmp.v.v GT
bf [76]

:[75]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_xview
b [77]

:[76]
pushi.e 21
pop.v.i self.conversation

:[77]
push.v self.conversation
pushi.e 21
cmp.i.v EQ
bf [end]

:[78]
pushi.e 1341
conv.i.v
pushi.e 120
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.flowey
pushi.e 0
pop.v.i 1576.cutscene
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
pushi.e 67
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
pushenv [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
popenv [79]
push.v self.papyrus
conv.v.i
pushenv [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
popenv [81]
call.i instance_destroy(argc=0)
popz.v

:[end]