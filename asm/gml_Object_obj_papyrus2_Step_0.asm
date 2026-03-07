.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [4]

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
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_papyrus2_201"@20344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus2_202"@20346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus2_204"@20348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus2_205"@20350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus2_207"@20352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "M1"@48048
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.M1
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.M1
pushi.e 1
cmp.i.v GT
bf [3]

:[2]
push.s "obj_papyrus2_213"@20354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus2_214"@20356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus2_216"@20358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus2_217"@20360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus2_219"@20362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus2_220"@20364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus2_221"@20366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus2_222"@20368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus2_223"@20370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[3]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 2
pop.v.i self.conversation

:[4]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [10]

:[8]
pushi.e 3
pop.v.i self.conversation
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
pushi.e 45
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 45
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 400
pop.v.i self.x
pushi.e 49
pop.v.i self.conversation

:[10]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [14]

:[11]
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_papyrus2_256"@20372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.M1
pushi.e 1
cmp.i.v GT
bf [13]

:[12]
push.s "obj_papyrus2_259"@20374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.s "obj_papyrus2_261"@20376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus2_262"@20378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus2_263"@20380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus2_264"@20382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus2_265"@20384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus2_266"@20386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus2_267"@20388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus2_268"@20390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus2_269"@20392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus2_270"@20394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papyrus2_271"@20396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papyrus2_272"@20398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_papyrus2_273"@20400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
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

:[14]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [17]

:[16]
push.e 0

:[17]
bf [20]

:[18]
push.v 784.stringno
pushi.e 7
cmp.i.v GT
bf [20]

:[19]
pushi.e 1406
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index

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
pushi.e 1009
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
popz.v
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
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 7
pop.v.i self.conversation
push.v self.x
pushi.e 20
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.solid

:[25]
push.v self.conversation
pushi.e 8
cmp.i.v EQ
bf [27]

:[26]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 1
pop.v.i global.interact
pushi.e 9
pop.v.i self.conversation
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 24
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1428
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[30]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [32]

:[31]
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 2
sub.i.v
call.i floor(argc=1)
pop.v.v self.ggg
push.v self.papyrus
conv.v.i
push.v [stacktop]self.xstart
push.v self.ggg
add.v.v
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 2
sub.i.v
call.i floor(argc=1)
pop.v.v self.ggg
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ystart
push.v self.ggg
add.v.v
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.y

:[32]
push.v self.conversation
pushi.e 10
cmp.i.v EQ
bf [34]

:[33]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.xstart
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.x
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ystart
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 1408
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 60
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 11
pop.v.i self.conversation

:[34]
push.v self.conversation
pushi.e 12
cmp.i.v EQ
bf [36]

:[35]
push.v self.sans
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1397
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.33334
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
pop.v.i global.faceemotion
pushi.e 19
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_papyrus2_334"@20402
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
pushi.e 13
pop.v.i self.conversation

:[36]
push.v self.conversation
pushi.e 13
cmp.i.v EQ
bf [38]

:[37]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.papyrus
conv.v.i
push.v [stacktop]self.utsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facechoice
pushi.e 17
pop.v.i global.typer
push.s "obj_papyrus2_347"@20404
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
pushi.e 14
pop.v.i self.conversation

:[41]
push.v self.conversation
pushi.e 14
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
bf [46]

:[45]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 19
pop.v.i global.typer
push.s "obj_papyrus2_359"@20406
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
pushi.e 15
pop.v.i self.conversation

:[46]
push.v self.conversation
pushi.e 15
cmp.i.v EQ
bf [48]

:[47]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [53]

:[50]
push.v self.sans
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i self.crunchybunchy
push.v self.papyrus
conv.v.i
pushenv [52]

:[51]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 31
conv.i.v
call.i path_start(argc=4)
popz.v

:[52]
popenv [51]
pushi.e 16
pop.v.i self.conversation

:[53]
push.v self.conversation
pushi.e 16
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1034
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [56]

:[55]
push.e 0

:[56]
bf [66]

:[57]
pushi.e 0
pop.v.i self.stepmake
push.v self.crunchybunchy
push.d 0.5
add.d.v
pop.v.v self.crunchybunchy
push.v self.crunchybunchy
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.stepmake

:[59]
push.v self.crunchybunchy
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
pushi.e 1
pop.v.i self.stepmake

:[61]
push.v self.crunchybunchy
pushi.e 4
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
pop.v.i self.crunchybunchy

:[63]
push.v self.stepmake
pushi.e 1
cmp.i.v EQ
bf [66]

:[64]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
push.v self.papyrus
conv.v.i
push.v [stacktop]self.xstart
pushi.e 10
sub.i.v
cmp.v.v LT
bf [66]

:[65]
pushi.e 1008
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
popz.v

:[66]
push.v self.conversation
pushi.e 16
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1034
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [69]

:[68]
push.e 0

:[69]
bf [72]

:[70]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.path_position
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 1406
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.s "obj_papyrus2_396"@20408
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
push.d 16.5
pop.v.d self.conversation

:[72]
push.v self.conversation
push.d 16.5
cmp.d.v EQ
bf [74]

:[73]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1407
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 997
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 1
add.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 1
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 17
pop.v.i self.conversation

:[77]
push.v self.conversation
pushi.e 18
cmp.i.v EQ
bf [81]

:[78]
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
push.d 0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.papyrus
conv.v.i
pushenv [80]

:[79]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 32
conv.i.v
call.i path_start(argc=4)
popz.v

:[80]
popenv [79]
pushi.e 19
pop.v.i self.conversation

:[81]
push.v self.conversation
pushi.e 19
cmp.i.v EQ
bf [83]

:[82]
pushi.e 1034
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [84]

:[83]
push.e 0

:[84]
bf [87]

:[85]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.path_position
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 20
pop.v.i self.conversation
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 19
pop.v.i global.typer
push.s "obj_papyrus2_430"@20410
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
pushi.e 20
pop.v.i self.conversation

:[87]
push.v self.conversation
pushi.e 20
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
pushi.e 248
pop.v.i self.x
pushi.e 0
pop.v.i global.interact
pushi.e 21
pop.v.i self.conversation

:[92]
push.v self.conversation
pushi.e 22
cmp.i.v EQ
bf [94]

:[93]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.msc
push.v self.papyrus
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 19
pop.v.i global.typer
push.s "obj_papyrus2_452"@20412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus2_453"@20414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus2_454"@20416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus2_455"@20418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus2_456"@20420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus2_457"@20422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus2_458"@20424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus2_459"@20426
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
pop.v.v self.mydialoguer
pushi.e 23
pop.v.i self.conversation

:[94]
push.v self.conversation
pushi.e 23
cmp.i.v EQ
bf [96]

:[95]
pushi.e 1
pop.v.i global.interact

:[96]
push.v self.conversation
pushi.e 23
cmp.i.v EQ
bf [98]

:[97]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [107]

:[100]
pushi.e 997
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [104]

:[101]
pushi.e 997
pushenv [103]

:[102]
call.i instance_destroy(argc=0)
popz.v

:[103]
popenv [102]

:[104]
pushi.e 996
pushenv [106]

:[105]
call.i instance_destroy(argc=0)
popz.v

:[106]
popenv [105]
pushi.e 5
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.2
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

:[107]
push.v self.conversation
pushi.e 25
cmp.i.v EQ
bf [119]

:[108]
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
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v

:[110]
pushi.e 43
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 1009
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [114]

:[111]
pushi.e 1009
pushenv [113]

:[112]
call.i instance_destroy(argc=0)
popz.v

:[113]
popenv [112]

:[114]
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
pushenv [116]

:[115]
call.i instance_destroy(argc=0)
popz.v

:[116]
popenv [115]
push.v self.papyrus
conv.v.i
pushenv [118]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[118]
popenv [117]
call.i instance_destroy(argc=0)
popz.v

:[119]
push.v self.conversation
pushi.e 50
cmp.i.v EQ
bf [125]

:[120]
pushi.e 1133
conv.i.v
push.v 1576.y
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
pushi.e 1576
pushenv [122]

:[121]
pushi.e 0
pop.v.i self.visible

:[122]
popenv [121]
push.v self.mc
conv.v.i
pushenv [124]

:[123]
call.i scr_depth(argc=0)
popz.v

:[124]
popenv [123]
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_papyrus2_506"@20427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus2_507"@20428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus2_508"@20429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus2_509"@20430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus2_510"@20431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus2_511"@20433
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
pop.v.v self.mydialoguer
pushi.e 51
pop.v.i self.conversation

:[125]
push.v self.conversation
pushi.e 51
cmp.i.v EQ
bf [127]

:[126]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [133]

:[129]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [131]

:[130]
pushi.e 3
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.mc
conv.v.i
pop.v.d [stacktop]self.image_speed

:[131]
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pushi.e 158
cmp.i.v GTE
bf [133]

:[132]
pushi.e 160
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_speed

:[133]
push.v self.conversation
pushi.e 51
cmp.i.v EQ
bf [135]

:[134]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [139]

:[137]
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pushi.e 158
cmp.i.v GTE
bf [139]

:[138]
pushi.e 160
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 52
pop.v.i self.conversation
pushi.e 50
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[139]
push.v self.conversation
pushi.e 53
cmp.i.v EQ
bf [141]

:[140]
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_papyrus2_552"@20435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus2_553"@20437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus2_554"@20439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus2_555"@20441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus2_556"@20443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus2_557"@20444
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
pushi.e 54
pop.v.i self.conversation

:[141]
push.v self.conversation
pushi.e 54
cmp.i.v EQ
bf [143]

:[142]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [144]

:[143]
push.e 0

:[144]
bf [149]

:[145]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [147]

:[146]
pushi.e 3
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.mc
conv.v.i
pop.v.d [stacktop]self.image_speed

:[147]
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pushi.e 218
cmp.i.v GTE
bf [149]

:[148]
pushi.e 220
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_speed

:[149]
push.v self.conversation
pushi.e 54
cmp.i.v EQ
bf [151]

:[150]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [155]

:[153]
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pushi.e 218
cmp.i.v GTE
bf [155]

:[154]
pushi.e 220
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 55
pop.v.i self.conversation
pushi.e 50
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[155]
push.v self.conversation
pushi.e 56
cmp.i.v EQ
bf [157]

:[156]
pushi.e 1
pushi.e -5
pushi.e 291
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.msc
push.v self.papyrus
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 19
pop.v.i global.typer
push.s "obj_papyrus2_601"@20445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus2_602"@20447
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
pop.v.v self.mydialoguer
pushi.e 57
pop.v.i self.conversation

:[157]
push.v self.conversation
pushi.e 57
cmp.i.v EQ
bf [159]

:[158]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [168]

:[161]
pushi.e 997
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [165]

:[162]
pushi.e 997
pushenv [164]

:[163]
call.i instance_destroy(argc=0)
popz.v

:[164]
popenv [163]

:[165]
pushi.e 996
pushenv [167]

:[166]
call.i instance_destroy(argc=0)
popz.v

:[167]
popenv [166]
pushi.e 5
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.2
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
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 58
pop.v.i self.conversation

:[168]
push.v self.conversation
pushi.e 59
cmp.i.v EQ
bf [end]

:[169]
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pop.v.v 1576.x
push.v self.mc
conv.v.i
push.v [stacktop]self.y
pop.v.v 1576.y
pushi.e 0
pop.v.i global.facing
push.v self.mc
conv.v.i
pushenv [171]

:[170]
call.i instance_destroy(argc=0)
popz.v

:[171]
popenv [170]
pushi.e 1
pop.v.i 1576.visible
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
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v

:[173]
pushi.e 43
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 1009
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [177]

:[174]
pushi.e 1009
pushenv [176]

:[175]
call.i instance_destroy(argc=0)
popz.v

:[176]
popenv [175]

:[177]
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
pushenv [179]

:[178]
call.i instance_destroy(argc=0)
popz.v

:[179]
popenv [178]
push.v self.papyrus
conv.v.i
pushenv [181]

:[180]
call.i instance_destroy(argc=0)
popz.v

:[181]
popenv [180]
call.i instance_destroy(argc=0)
popz.v

:[end]