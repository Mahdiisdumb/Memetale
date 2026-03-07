.localvar 0 arguments

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.buffer
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.myinteract

:[5]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [16]

:[6]
pushi.e -5
pushi.e 492
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[7]
pushi.e 0
pop.v.i self.h
pushi.e 56
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.h

:[9]
pushi.e 57
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.h

:[11]
push.v self.h
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
push.s "obj_alabdoor_l_153"@9495
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

:[13]
push.v self.h
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 825
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[15]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.myinteract

:[16]
push.v self.myinteract
pushi.e 2
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
pushi.e 4
pop.v.i self.buffer
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact

:[21]
push.v self.con
pushi.e 2
cmp.i.v EQ
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
bf [34]

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [33]

:[27]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e 56
cmp.i.v EQ
bt [29]

:[28]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e 57
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
pushi.e 0
conv.i.v
push.v self.i
pushi.e 70
conv.i.v
call.i script_execute(argc=3)
popz.v

:[32]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[33]
pushi.e 1
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
push.s "music/sfx_chainsaw.ogg"@2724
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.chainsaw
push.d 2.1
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
push.d 3.1
cmp.d.v EQ
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
pushi.e 47
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
push.s "obj_alabdoor_l_207"@9496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_208"@9498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_209"@9500
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_210"@9501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_211"@9503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_212"@9504
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_213"@9506
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_214"@9508
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
pushi.e 3
pop.v.i self.con

:[39]
push.v self.con
pushi.e 3
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
bf [44]

:[43]
push.d 3.2
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [46]

:[45]
pushi.e 1
pop.v.i global.interact

:[46]
push.v self.con
push.d 4.2
cmp.d.v EQ
bf [48]

:[47]
pushi.e 5
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.chainsaw
call.i caster_play(argc=3)
popz.v

:[48]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [52]

:[49]
pushi.e 1741
conv.i.v
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.alphys
push.v self.depth
pushi.e 10
add.i.v
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1734
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[51]
pushi.e 1
pop.v.i self.open
pushi.e 7
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [54]

:[53]
pushi.e 6
pop.v.i global.facechoice
pushi.e 47
pop.v.i global.typer
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
push.s "obj_alabdoor_l_252"@9510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_253"@9511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_254"@9513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_255"@9515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_256"@9517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_257"@9519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_258"@9521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_259"@9523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_260"@9525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_261"@9527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_262"@9529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_263"@9531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_264"@9533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_265"@9534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_266"@9536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_267"@9538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_alabdoor_l_268"@9540
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 9
pop.v.i self.con

:[54]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [56]

:[55]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [end]

:[58]
pushi.e 144
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 10
pop.v.i self.con

:[end]