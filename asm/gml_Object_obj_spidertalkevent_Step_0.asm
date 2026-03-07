.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [27]

:[1]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.s "obj_spidertalkevent_103"@26470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_104"@26472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_spidertalkevent_106"@26474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[4]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 90
pop.v.i self.con

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_spidertalkevent_114"@26476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 90
pop.v.i self.con

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_spidertalkevent_122"@26478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 90
pop.v.i self.con

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [13]

:[10]
push.s "obj_spidertalkevent_130"@26480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_spidertalkevent_132"@26482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 90
pop.v.i self.con

:[13]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_spidertalkevent_140"@26484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 90
pop.v.i self.con

:[15]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [21]

:[16]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 9000
cmp.i.v LT
bf [18]

:[17]
push.s "obj_spidertalkevent_149"@26486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [20]

:[18]
push.s "obj_spidertalkevent_152"@26488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_spidertalkevent_154"@26490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 90
pop.v.i self.con

:[21]
push.v self.con
pushi.e 90
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
bf [27]

:[25]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.active
push.v self.x
pushi.e 90
add.i.v
pop.v.v self.x
pushi.e -5
pushi.e 396
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e -5
pushi.e 396
push.v [array]global.flag
pop.v.v self.con
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1
pop.v.i self.pausewait

:[27]
push.v self.pausewait
pushi.e 1
cmp.i.v EQ
bf [33]

:[28]
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
push.v 1576.image_speed
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.pausewaittime
pushi.e 3
add.i.v
pop.v.v self.pausewaittime
b [31]

:[30]
push.v self.pausewaittime
pushi.e 1
add.i.v
pop.v.v self.pausewaittime

:[31]
push.v self.pausewaittime
pushi.e 150
cmp.i.v GT
bf [33]

:[32]
pushi.e 0
pop.v.i self.pausewait
pushi.e 15
pop.v.i self.con

:[33]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [35]

:[34]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 1900
conv.i.v
pushi.e 84
conv.i.v
pushi.e 582
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.bigweb
push.i 99999
push.v self.bigweb
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1901
conv.i.v
pushi.e 96
conv.i.v
pushi.e 635
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.muffet
push.i 99998
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.bigweb
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.d 15.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[38]
push.v self.con
push.d 15.1
cmp.d.v EQ
bf [40]

:[39]
push.v self.bigweb
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.muffet
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
add.d.v
pop.i.v [stacktop]self.image_alpha

:[40]
push.v self.con
push.d 16.1
cmp.d.v EQ
bf [42]

:[41]
pushi.e 1236
conv.i.v
pushi.e -20
conv.i.v
pushi.e 556
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.hspider
pushi.e 3
pushi.e -1
pushi.e 0
push.v [array]self.hspider
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 38
pushi.e -1
pushi.e 0
push.v [array]self.hspider
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1236
conv.i.v
pushi.e -20
conv.i.v
pushi.e 600
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.hspider
pushi.e 3
pushi.e -1
pushi.e 1
push.v [array]self.hspider
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 35
pushi.e -1
pushi.e 1
push.v [array]self.hspider
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1236
conv.i.v
pushi.e -20
conv.i.v
pushi.e 684
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.hspider
pushi.e 3
pushi.e -1
pushi.e 2
push.v [array]self.hspider
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 35
pushi.e -1
pushi.e 2
push.v [array]self.hspider
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1236
conv.i.v
pushi.e -20
conv.i.v
pushi.e 720
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.hspider
pushi.e 3
pushi.e -1
pushi.e 3
push.v [array]self.hspider
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 38
pushi.e -1
pushi.e 3
push.v [array]self.hspider
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1903
conv.i.v
pushi.e 180
conv.i.v
pushi.e 428
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.ss1
pushi.e 1903
conv.i.v
pushi.e 170
conv.i.v
pushi.e 438
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.ss2
push.d 0.25
push.v self.ss1
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 4
push.v self.ss1
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 3.5
push.v self.ss2
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.25
push.v self.ss2
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1903
conv.i.v
pushi.e 180
conv.i.v
pushi.e 854
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.ss3
pushi.e 1903
conv.i.v
pushi.e 170
conv.i.v
pushi.e 864
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.ss4
pushi.e -4
push.v self.ss3
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.ss3
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d -3.5
push.v self.ss4
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.25
push.v self.ss4
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 16
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[42]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [52]

:[43]
pushi.e 0
push.v self.ss1
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.ss2
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.ss3
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.ss4
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.ss1
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.ss2
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.ss3
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.ss4
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i self.conner
pushi.e 2
pop.v.i global.facing
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 9000
cmp.i.v LT
bf [48]

:[44]
pushi.e -5
pushi.e 11
push.v [array]global.tempvalue
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_spidertalkevent_267"@26492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [47]

:[46]
push.s "obj_spidertalkevent_271"@26494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
push.s "obj_spidertalkevent_273"@26495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_274"@26497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_275"@26499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_276"@26501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_277"@26503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 18
pop.v.i self.con
b [49]

:[48]
push.s "obj_spidertalkevent_283"@26505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_284"@26507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_285"@26509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_286"@26511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_287"@26513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 40
pop.v.i self.con

:[49]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_spidertalkevent_293"@26515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_294"@26517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_295"@26519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 18
pop.v.i self.con

:[51]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dr
pushi.e 0
push.v self.dr
conv.v.i
pop.v.i [stacktop]self.side

:[52]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [54]

:[53]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [61]

:[56]
push.v self.conner
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.conner

:[61]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [63]

:[62]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 19
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[66]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [69]

:[67]
push.v self.muffet
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.muffet
conv.v.i
push.v [stacktop]self.image_index
push.d 5.75
cmp.d.v GTE
bf [69]

:[68]
pushi.e 4
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.image_index

:[69]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [71]

:[70]
pushi.e 1
pop.v.i global.mercy
pushi.e 56
pop.v.i global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 21
pop.v.i self.con
pushi.e 33
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[71]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i global.interact

:[73]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [94]

:[74]
pushi.e 23
pop.v.i self.con
push.v self.ss1
conv.v.i
pushenv [76]

:[75]
call.i instance_destroy(argc=0)
popz.v

:[76]
popenv [75]
push.v self.ss2
conv.v.i
pushenv [78]

:[77]
call.i instance_destroy(argc=0)
popz.v

:[78]
popenv [77]
push.v self.ss3
conv.v.i
pushenv [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
popenv [79]
push.v self.ss4
conv.v.i
pushenv [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
popenv [81]
pushi.e -5
pushi.e 12
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [90]

:[83]
pushi.e 1
pushi.e -5
pushi.e 397
pop.v.i [array]global.flag
push.v self.muffet
conv.v.i
pushenv [85]

:[84]
call.i instance_destroy(argc=0)
popz.v

:[85]
popenv [84]
pushi.e 1236
pushenv [87]

:[86]
call.i instance_destroy(argc=0)
popz.v

:[87]
popenv [86]
push.v self.bigweb
conv.v.i
pushenv [89]

:[88]
call.i instance_destroy(argc=0)
popz.v

:[89]
popenv [88]
b [91]

:[90]
pushi.e 0
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 30
pop.v.i self.con

:[91]
pushi.e 1238
pushenv [93]

:[92]
call.i instance_destroy(argc=0)
popz.v

:[93]
popenv [92]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1
pop.v.i global.interact
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[94]
push.v self.con
pushi.e 23
cmp.i.v EQ
bt [96]

:[95]
push.v self.con
pushi.e 30
cmp.i.v EQ
b [97]

:[96]
push.e 1

:[97]
bf [99]

:[98]
pushi.e 1
pop.v.i global.interact

:[99]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [101]

:[100]
pushi.e 60
pop.v.i self.con

:[101]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [103]

:[102]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
push.s "obj_spidertalkevent_392"@26520
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spidertalkevent_393"@26522
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 32
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side

:[103]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [105]

:[104]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
pushi.e 33
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[108]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [110]

:[109]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [111]

:[110]
push.e 0

:[111]
bf [114]

:[112]
push.v self.muffet
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.muffet
conv.v.i
push.v [stacktop]self.image_index
push.d 5.75
cmp.d.v GTE
bf [114]

:[113]
pushi.e 4
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.image_index

:[114]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [116]

:[115]
pushi.e 35
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [120]

:[117]
push.v self.muffet
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.bigweb
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
sub.d.v
pop.i.v [stacktop]self.image_alpha
pushi.e 1236
pushenv [119]

:[118]
pushi.e -4
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[119]
popenv [118]

:[120]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [122]

:[121]
pushi.e 60
pop.v.i self.con

:[122]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [124]

:[123]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [129]

:[126]
push.d 0.25
push.v self.ss1
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -4
push.v self.ss1
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d -3.5
push.v self.ss2
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.25
push.v self.ss2
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 4
push.v self.ss3
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.ss3
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 3.5
push.v self.ss4
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.25
push.v self.ss4
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1238
pushenv [128]

:[127]
call.i instance_destroy(argc=0)
popz.v

:[128]
popenv [127]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 35
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[129]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [end]

:[130]
pushi.e 165
pop.v.i global.plot
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.border
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [132]

:[131]
pushi.e 185
pop.v.i global.plot

:[132]
call.i instance_destroy(argc=0)
popz.v

:[end]