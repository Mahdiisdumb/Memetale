.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 1576.x
pushi.e 3
sub.i.v
pop.v.v 1576.x
pushi.e 1
pop.v.i global.interact
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.d 0.02
push.v self.fade
conv.v.i
pop.v.d [stacktop]self.fadespeed
push.s "music/undynescary.ogg"@2845
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.s "music/undynetheme.ogg"@2846
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.song2
pushi.e 1
pop.v.i 1576.cutscene
push.d 1.5
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.originy

:[2]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [8]

:[3]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 80
cmp.i.v GT
bf [5]

:[4]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 2
sub.i.v
pop.i.v [array]self.view_yview
b [8]

:[5]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [7]

:[6]
pushi.e 2
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 2.6
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [8]

:[7]
pushi.e 90
pop.v.i self.con
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 153
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.t
push.d 0.02
push.v self.t
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 240
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
push.d 3.6
cmp.d.v EQ
bf [10]

:[9]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 3
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i global.msc
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 153
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.t
push.d 0.02
push.v self.t
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_undyne1_154"@28438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne1_155"@28440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne1_156"@28442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyne1_157"@28444
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyne1_158"@28446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyne1_159"@28448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyne1_160"@28450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyne1_161"@28452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undyne1_162"@28454
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undyne1_163"@28456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undyne1_164"@28458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undyne1_165"@28460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undyne1_166"@28462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undyne1_167"@28464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undyne1_168"@28466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undyne1_169"@28468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undyne1_170"@28470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_undyne1_171"@28472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_undyne1_172"@28474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_undyne1_173"@28476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_undyne1_174"@28477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
push.v 784.y
pushi.e 155
add.i.v
pop.v.v 784.y
pushi.e 80
pop.v.i self.con
pushi.e 0
pop.v.i self.minicon
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pop.v.v self.papx

:[12]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [14]

:[13]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [27]

:[16]
push.v self.minicon
pushi.e 0
cmp.i.v EQ
bf [27]

:[17]
push.v 784.stringno
pushi.e 13
cmp.i.v EQ
bt [19]

:[18]
push.v 784.stringno
pushi.e 14
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [27]

:[21]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e 1418
cmp.i.v EQ
bf [23]

:[22]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
push.v self.papx
pushi.e 60
add.i.v
cmp.v.v LT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.papyrus
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
add.i.v
pop.i.v [stacktop]self.x
b [27]

:[26]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed

:[27]
push.v self.con
pushi.e 80
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
bf [32]

:[31]
pushi.e 1553
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d -0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 80.5
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
push.d 81.5
cmp.d.v EQ
bf [34]

:[33]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 81
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 82
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
push.s "obj_undyne1_217"@28478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne1_218"@28480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne1_219"@28482
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
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
push.v 784.y
pushi.e 155
add.i.v
pop.v.v 784.y
pushi.e 5
pop.v.i self.con

:[39]
push.v self.con
pushi.e 5
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
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e -3
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 5.1
pop.v.d self.con
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
push.d 0.02
push.v self.gg
conv.v.i
pop.v.d [stacktop]self.fadespeed
push.v self.song2
pop.v.v global.currentsong

:[44]
push.v self.con
push.d 5.1
cmp.d.v EQ
bf [48]

:[45]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.originy
cmp.v.v LT
bf [47]

:[46]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 2
add.i.v
pop.i.v [array]self.view_yview
b [48]

:[47]
push.d 5.2
pop.v.d self.con

:[48]
push.v self.con
push.d 5.2
cmp.d.v EQ
bf [50]

:[49]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 0
pop.v.i global.interact
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.helltrigger

:[50]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [52]

:[51]
push.v self.helltrigger
pushi.e 5
cmp.i.v GT
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 6.1
pop.v.d self.con

:[55]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 1
pop.v.i global.interact
push.d 7.2
pop.v.d self.con
push.v 1576.xprevious
pop.v.v 1576.x
push.v 1576.yprevious
pop.v.v 1576.y

:[57]
push.v self.con
push.d 7.2
cmp.d.v EQ
bf [61]

:[58]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 80
cmp.i.v GT
bf [60]

:[59]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 10
sub.i.v
pop.i.v [array]self.view_yview
b [61]

:[60]
pushi.e 8
pop.v.i self.con

:[61]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [63]

:[62]
pushi.e 1
pop.v.i global.interact
pushi.e 1339
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1526
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 9
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [65]

:[64]
pushi.e 29
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 11
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [67]

:[66]
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.vspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 14.6
pop.v.d self.con

:[67]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [69]

:[68]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1529
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.3334
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 14.1
pop.v.d self.con

:[69]
push.v self.con
push.d 14.1
cmp.d.v EQ
bf [72]

:[70]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 9
cmp.i.v GTE
bf [72]

:[71]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 9
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 13.2
pop.v.d self.con

:[72]
push.v self.con
push.d 14.2
cmp.d.v EQ
bf [74]

:[73]
pushi.e 10
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.035
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 14.3
pop.v.d self.con

:[74]
push.v self.con
push.d 14.3
cmp.d.v EQ
bf [77]

:[75]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 13
cmp.i.v GTE
bf [77]

:[76]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 13
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 13.4
pop.v.d self.con

:[77]
push.v self.con
push.d 14.4
cmp.d.v EQ
bf [79]

:[78]
pushi.e 9
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d -0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 14.5
pop.v.d self.con

:[79]
push.v self.con
push.d 14.5
cmp.d.v EQ
bf [82]

:[80]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v LTE
bf [82]

:[81]
pushi.e 1526
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 18
pop.v.i self.con

:[82]
push.v self.con
push.d 15.6
cmp.d.v EQ
bf [84]

:[83]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
push.d 15.1
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[84]
push.v self.con
push.d 16.1
cmp.d.v EQ
bf [86]

:[85]
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.vspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 15.2
pop.v.d self.con

:[86]
push.v self.con
push.d 16.2
cmp.d.v EQ
bf [88]

:[87]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 13
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[88]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [90]

:[89]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 19
pop.v.i self.con

:[90]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [92]

:[91]
pushi.e -2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 21
pop.v.i self.con

:[92]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [94]

:[93]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 23
pop.v.i self.con

:[94]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [96]

:[95]
pushi.e 1365
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1535
push.v self.d
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b
push.d 0.01
push.v self.b
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 25
pop.v.i self.con
pushi.e 15
conv.i.v
call.i snd_play(argc=1)
popz.v

:[96]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [100]

:[97]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [99]

:[98]
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
sub.d.v
pop.i.v [stacktop]self.image_alpha
b [100]

:[99]
pushi.e 26
pop.v.i self.con

:[100]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [104]

:[101]
push.v self.d
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [103]

:[102]
push.v self.d
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
sub.d.v
pop.i.v [stacktop]self.image_alpha
b [104]

:[103]
pushi.e 27
pop.v.i self.con

:[104]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [108]

:[105]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.originy
cmp.v.v LT
bf [107]

:[106]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 2
add.i.v
pop.i.v [array]self.view_yview
b [108]

:[107]
pushi.e 28
pop.v.i self.con

:[108]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [112]

:[109]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 0
pop.v.i global.interact
pushi.e 1095
pushenv [111]

:[110]
call.i instance_destroy(argc=0)
popz.v

:[111]
popenv [110]
pushi.e 1132
pop.v.i 1576.usprite
pushi.e 1133
pop.v.i 1576.rsprite
pushi.e 1134
pop.v.i 1576.lsprite
pushi.e 1131
pop.v.i 1576.dsprite
pushi.e 39
pop.v.i self.con

:[112]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [118]

:[113]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 900
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
conv.i.v
pushi.e 60
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bt [115]

:[114]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 900
conv.i.v
pushi.e 440
conv.i.v
pushi.e 100
conv.i.v
pushi.e 430
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
b [116]

:[115]
push.e 1

:[116]
bf [118]

:[117]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/waterfall.ogg"@2643
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
pop.v.i global.interact
pushi.e 40
pop.v.i self.con

:[118]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [129]

:[119]
push.v 1576.y
pushi.e 276
cmp.i.v GT
bf [121]

:[120]
pushi.e 260
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
pop.v.i self.up
b [122]

:[121]
pushi.e 286
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 1
pop.v.i self.up

:[122]
push.v self.mkid
conv.v.i
pushenv [124]

:[123]
push.i 900000
pop.v.i self.depth

:[124]
popenv [123]
push.v 1576.x
pushi.e 200
cmp.i.v LT
bf [126]

:[125]
pushi.e 1
pop.v.i self.left
pushi.e -4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
b [127]

:[126]
pushi.e 0
pop.v.i self.left
pushi.e 4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed

:[127]
push.d 40.5
pop.v.d self.con
pushi.e 28
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.left
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
pushi.e 36
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[129]
push.v self.con
push.d 41.3
cmp.d.v EQ
bf [131]

:[130]
push.d 41.5
pop.v.d self.con

:[131]
push.v self.con
push.d 41.5
cmp.d.v EQ
bf [133]

:[132]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 42
pop.v.i self.con
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[133]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [138]

:[134]
pushi.e 44
pop.v.i self.con
push.v self.left
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
b [137]

:[136]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[137]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[138]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [144]

:[139]
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
push.v self.mkid
conv.v.i
push.v [stacktop]self.usprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[141]
push.v self.up
pushi.e 0
cmp.i.v EQ
bf [143]

:[142]
push.v self.mkid
conv.v.i
push.v [stacktop]self.dsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[143]
pushi.e 46
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[144]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [152]

:[145]
push.v self.left
pushi.e 1
cmp.i.v EQ
bf [147]

:[146]
push.v self.mkid
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
b [148]

:[147]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[148]
pushi.e 3
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.myinteract
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [150]

:[149]
push.s "obj_undyne1_537"@28484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne1_538"@28486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne1_539"@28488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyne1_540"@28490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyne1_541"@28492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyne1_542"@28494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
b [151]

:[150]
push.s "obj_undyne1_546"@28495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne1_547"@28496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne1_548"@28497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyne1_549"@28498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyne1_550"@28500
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyne1_551"@28501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[151]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 48
pop.v.i self.con

:[152]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [154]

:[153]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [155]

:[154]
push.e 0

:[155]
bf [159]

:[156]
pushi.e 6
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.myinteract
push.d 0.3
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 48.1
pop.v.d self.con
push.v self.left
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [159]

:[158]
pushi.e 16
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[159]
push.v self.con
push.d 49.1
cmp.d.v EQ
bf [161]

:[160]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.334
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1479
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 49.2
pop.v.d self.con

:[161]
push.v self.con
push.d 49.2
cmp.d.v EQ
bf [164]

:[162]
push.v self.mkid
conv.v.i
push.v [stacktop]self.image_index
pushi.e 19
cmp.i.v GTE
bf [164]

:[163]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.mkid
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 13
add.i.v
pop.i.v [stacktop]self.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 49.3
pop.v.d self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[164]
push.v self.con
push.d 50.3
cmp.d.v EQ
bf [166]

:[165]
pushi.e 4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 49
pop.v.i self.con

:[166]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [173]

:[167]
pushi.e 0
pop.v.i global.interact
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [169]

:[168]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [170]

:[169]
push.e 0

:[170]
bf [172]

:[171]
push.d 0.15
conv.d.v
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v

:[172]
pushi.e 51
pop.v.i self.con
pushi.e 106
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[173]
push.v self.con
pushi.e 90
cmp.i.v EQ
bf [174]

:[174]
push.v self.con
pushi.e 91
cmp.i.v EQ
bf [end]

:[175]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
push.d 0.02
push.v self.gg
conv.v.i
pop.v.d [stacktop]self.fadespeed
push.v self.song2
pop.v.v global.currentsong
push.d 5.1
pop.v.d self.con

:[end]