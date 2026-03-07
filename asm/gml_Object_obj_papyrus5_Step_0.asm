.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 3
pop.v.i self.myinteract
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
pushi.e 1034
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.p2
push.v self.papyrus
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
push.v self.p2
pop.v.v self.papyrus
pushi.e 3
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.conversation
push.v self.xplot
pushi.e 1
sub.i.v
pop.v.v global.plot

:[7]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1034
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [10]

:[9]
push.e 0

:[10]
bf [13]

:[11]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
push.v self.x
pushi.e 56
sub.i.v
cmp.v.v GTE
bf [13]

:[12]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 3
pop.v.i self.conversation
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i global.msc
push.s "obj_papyrus5_209"@20517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus5_210"@20519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus5_211"@20521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus5_212"@20523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus5_213"@20525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus5_214"@20527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus5_215"@20529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus5_216"@20531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus5_217"@20533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus5_218"@20535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus5_219"@20537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papyrus5_220"@20539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papyrus5_221"@20541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_papyrus5_222"@20543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 5
pop.v.i self.conversation

:[15]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [17]

:[16]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [18]

:[17]
push.e 0

:[18]
bf [21]

:[19]
push.v 784.stringno
pushi.e 9
cmp.i.v GTE
bf [21]

:[20]
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.d 0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1399
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 5.1
pop.v.d self.conversation

:[21]
push.v self.conversation
push.d 5.1
cmp.d.v EQ
bf [23]

:[22]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [24]

:[23]
push.e 0

:[24]
bf [27]

:[25]
push.v 784.stringno
pushi.e 12
cmp.i.v GTE
bf [27]

:[26]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.papyrus
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 6
pop.v.i self.conversation

:[27]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [29]

:[28]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [34]

:[31]
pushi.e 1028
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.p3
push.v self.papyrus
conv.v.i
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
push.v self.p3
pop.v.v self.papyrus
pushi.e 0
pop.v.i global.interact
pushi.e 7
pop.v.i self.conversation

:[34]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [40]

:[35]
push.v 1576.x
pushi.e 400
cmp.i.v GT
bf [37]

:[36]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 300
cmp.i.v LT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
push.v self.papyrus
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x

:[40]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
pop.v.i global.interact
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 10
pop.v.i self.conversation
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[42]
push.v self.conversation
pushi.e 11
cmp.i.v EQ
bf [49]

:[43]
pushi.e 0
pop.v.i global.msc
pushi.e 1341
conv.i.v
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
call.i instance_create(argc=3)
popz.v
push.s "obj_papyrus5_281"@20545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.papyrus
conv.v.i
push.v [stacktop]self.talkedto
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_papyrus5_282"@20547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [46]

:[45]
push.s "obj_papyrus5_283"@20549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[46]
pushi.e 1034
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.p4
push.v self.papyrus
conv.v.i
pushenv [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [47]
push.v self.p4
pop.v.v self.papyrus
push.v self.papyrus
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.s "obj_papyrus5_289"@20551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus5_290"@20553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus5_291"@20555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus5_292"@20557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus5_293"@20559
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
pushi.e 12
pop.v.i self.conversation

:[49]
push.v self.conversation
pushi.e 12
cmp.i.v EQ
bf [51]

:[50]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [56]

:[53]
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
push.v self.papyrus
conv.v.i
pushenv [55]

:[54]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 30
conv.i.v
call.i path_start(argc=4)
popz.v

:[55]
popenv [54]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 13
pop.v.i self.conversation

:[56]
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [end]

:[57]
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pop.v.i global.interact

:[end]