.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.phasing
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 140
pop.v.i 1576.x
pushi.e -20
pop.v.i 1576.y
pushi.e 3
pop.v.i 1576.vspeed
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.turntimer

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[3]
push.v self.turntimer
pushi.e 1
add.i.v
pop.v.v self.turntimer
push.v self.turntimer
pushi.e 15
cmp.i.v GT
bf [6]

:[4]
pushi.e 0
pop.v.i self.turntimer
push.v global.facing
pushi.e 1
add.i.v
pop.v.v global.facing
pushglb.v global.facing
pushi.e 3
cmp.i.v GT
bf [6]

:[5]
pushi.e 0
pop.v.i global.facing

:[6]
push.v 1576.y
pushi.e 100
cmp.i.v GT
bf [8]

:[7]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 23
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1208
conv.i.v
pushi.e -20
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
pushi.e 3
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 5
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i global.msc
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_multitileevent_121"@18596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_122"@18598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_multitileevent_123"@18600
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
pop.v.v self.dia
pushi.e 1
push.v self.dia
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 7
pop.v.i self.con

:[12]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [14]

:[13]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [18]

:[16]
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 5
add.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 96
cmp.i.v GTE
bf [18]

:[17]
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 8
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_multitileevent_144"@18602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_145"@18604
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_multitileevent_146"@18606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_multitileevent_147"@18608
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_multitileevent_148"@18610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_multitileevent_149"@18612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_multitileevent_150"@18614
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
pushi.e 10
pop.v.i self.con

:[20]
push.v self.con
pushi.e 10
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
pushi.e 11
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_multitileevent_163"@18616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_164"@18618
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
pushi.e 13
pop.v.i self.con

:[27]
push.v self.con
pushi.e 13
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
bf [33]

:[31]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 5
sub.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 4
cmp.i.v LTE
bf [33]

:[32]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 14
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[33]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [35]

:[34]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1202
conv.i.v
pushi.e 20
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.flame1
pushi.e 1202
conv.i.v
pushi.e 20
conv.i.v
pushi.e 1160
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.flame2
pushi.e 16
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[35]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_multitileevent_192"@18620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_193"@18622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_multitileevent_194"@18624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_multitileevent_195"@18626
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
popz.v
pushi.e 18
pop.v.i self.con

:[37]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [39]

:[38]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [44]

:[41]
push.s "music/operatile.ogg"@2713
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.racesong
pushi.e 1208
pushenv [43]

:[42]
pushi.e 1
pop.v.i self.middle
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[43]
popenv [42]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.racesong
call.i caster_play(argc=3)
popz.v
pushi.e 900
pop.v.i self.cooltimer
pushi.e 1211
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.flavor
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i global.interact
pushi.e 20
pop.v.i self.con

:[44]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [52]

:[45]
pushi.e 1214
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
push.v 1576.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 1
pop.v.i global.interact
pushi.e 75
pop.v.i self.con

:[50]
push.v self.cooltimer
pushi.e 1
sub.i.v
pop.v.v self.cooltimer
push.v self.cooltimer
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushi.e 30
pop.v.i self.con

:[52]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [66]

:[53]
pushi.e 1213
pushenv [55]

:[54]
pushi.e 0
pop.v.i self.collide
pushi.e -1
pop.v.i self.active

:[55]
popenv [54]
pushi.e 1
pop.v.i 1215.grey
pushi.e 1208
pushenv [57]

:[56]
pushi.e 2
pop.v.i self.middle

:[57]
popenv [56]
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i 1576.visible
pushi.e 1
pop.v.i global.interact
pushi.e 1214
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [61]

:[58]
pushi.e 1214
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]

:[61]
push.v self.flame1
conv.v.i
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 20
sub.i.v
cmp.v.v LT
bf [63]

:[62]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 20
sub.i.v
push.v self.flame1
conv.v.i
pop.v.v [stacktop]self.x

:[63]
push.v self.flame2
conv.v.i
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
add.v.v
cmp.v.v GT
bf [65]

:[64]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
add.v.v
push.v self.flame2
conv.v.i
pop.v.v [stacktop]self.x

:[65]
pushi.e 31
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[66]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing

:[68]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [72]

:[69]
pushi.e 1211
pushenv [71]

:[70]
pushi.e 1
pop.v.i self.finished

:[71]
popenv [70]
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
push.s "obj_multitileevent_279"@18628
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
pushi.e 33
pop.v.i self.con

:[72]
push.v self.con
pushi.e 33
cmp.i.v EQ
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
pushi.e 34
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[77]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [82]

:[78]
push.v self.flame1
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
sub.i.v
cmp.v.v LT
bf [80]

:[79]
push.v self.flame1
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
add.i.v
pop.i.v [stacktop]self.x

:[80]
push.v self.flame2
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
add.i.v
cmp.v.v GT
bf [82]

:[81]
push.v self.flame2
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x

:[82]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_multitileevent_304"@18630
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
pushi.e 36
pop.v.i self.con

:[84]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [86]

:[85]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 37
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[89]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [91]

:[90]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [97]

:[93]
push.v self.flame1
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
sub.i.v
cmp.v.v LT
bf [95]

:[94]
push.v self.flame1
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
add.i.v
pop.i.v [stacktop]self.x

:[95]
push.v self.flame2
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
add.i.v
cmp.v.v GT
bf [97]

:[96]
push.v self.flame2
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x

:[97]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_multitileevent_330"@18632
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
pushi.e 39
pop.v.i self.con

:[99]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [101]

:[100]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushi.e 40
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[104]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [106]

:[105]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [112]

:[108]
push.v self.flame1
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
sub.i.v
cmp.v.v LT
bf [110]

:[109]
push.v self.flame1
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.d 0.5
add.d.v
pop.i.v [stacktop]self.x

:[110]
push.v self.flame2
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
add.i.v
cmp.v.v GT
bf [112]

:[111]
push.v self.flame2
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.x

:[112]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [114]

:[113]
push.s "obj_multitileevent_356"@18634
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
pushi.e 42
pop.v.i self.con

:[114]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [116]

:[115]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 43
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[119]
push.v self.con
pushi.e 43
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
bf [127]

:[123]
push.v self.flame1
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
sub.i.v
cmp.v.v LT
bf [125]

:[124]
push.v self.flame1
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.d 0.5
add.d.v
pop.i.v [stacktop]self.x

:[125]
push.v self.flame2
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
add.i.v
cmp.v.v GT
bf [127]

:[126]
push.v self.flame2
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.x

:[127]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [129]

:[128]
push.s "obj_multitileevent_382"@18636
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
pushi.e 45
pop.v.i self.con

:[129]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [131]

:[130]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
pushi.e 46
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[134]
push.v self.con
pushi.e 46
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
bf [142]

:[138]
push.v self.flame1
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
sub.i.v
cmp.v.v LT
bf [140]

:[139]
push.v self.flame1
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.d 0.5
add.d.v
pop.i.v [stacktop]self.x

:[140]
push.v self.flame2
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 20
add.i.v
cmp.v.v GT
bf [142]

:[141]
push.v self.flame2
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.x

:[142]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [144]

:[143]
push.s "obj_multitileevent_409"@18638
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
pushi.e 48
pop.v.i self.con

:[144]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [146]

:[145]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [147]

:[146]
push.e 0

:[147]
bf [149]

:[148]
pushi.e 49
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[149]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [151]

:[150]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 6
pop.v.i global.faceemotion
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_multitileevent_426"@18639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_427"@18641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_multitileevent_428"@18643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_multitileevent_429"@18645
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
popz.v
pushi.e 51
pop.v.i self.con

:[151]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [153]

:[152]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [160]

:[155]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.flame1
conv.v.i
pushenv [157]

:[156]
call.i instance_destroy(argc=0)
popz.v

:[157]
popenv [156]
push.v self.flame2
conv.v.i
pushenv [159]

:[158]
call.i instance_destroy(argc=0)
popz.v

:[159]
popenv [158]
pushi.e 52
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[160]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [162]

:[161]
pushi.e 0
pop.v.i global.facechoice
pushi.e 27
pop.v.i global.typer
push.s "obj_multitileevent_447"@18647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_448"@18649
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
pushi.e 54
pop.v.i self.con

:[162]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [164]

:[163]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
pushi.e 55
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[167]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [171]

:[168]
pushi.e 5
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
pushi.e 27
pop.v.i global.typer
push.s "obj_multitileevent_464"@18651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_465"@18653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_multitileevent_466"@18655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_multitileevent_467"@18657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_multitileevent_468"@18659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_multitileevent_469"@18661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_multitileevent_470"@18663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_multitileevent_471"@18665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_multitileevent_472"@18667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_multitileevent_473"@18669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_multitileevent_474"@18671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_multitileevent_475"@18673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_multitileevent_476"@18675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_multitileevent_477"@18677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e -5
pushi.e 289
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [170]

:[169]
push.s "obj_multitileevent_480"@18679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_multitileevent_481"@18681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_multitileevent_482"@18683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_multitileevent_483"@18685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_multitileevent_484"@18687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_multitileevent_485"@18688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_multitileevent_486"@18690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg

:[170]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 55.1
pop.v.d self.con

:[171]
push.v self.con
push.d 55.1
cmp.d.v EQ
bf [173]

:[172]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [174]

:[173]
push.e 0

:[174]
bf [176]

:[175]
push.v self.racesong
call.i caster_free(argc=1)
popz.v
push.d 56.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 3
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v

:[176]
push.v self.con
push.d 57.1
cmp.d.v EQ
bf [178]

:[177]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [179]

:[178]
push.e 0

:[179]
bf [181]

:[180]
pushi.e 58
pop.v.i self.con
pushi.e 57
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.talkedto
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[181]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [183]

:[182]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [184]

:[183]
push.e 0

:[184]
bf [186]

:[185]
pushi.e 1
pop.v.i global.interact

:[186]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [194]

:[187]
pushi.e 1208
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [191]

:[188]
pushi.e 1208
pushenv [190]

:[189]
call.i instance_destroy(argc=0)
popz.v

:[190]
popenv [189]

:[191]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i global.interact
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [193]

:[192]
pushi.e 1
pop.v.i global.interact

:[193]
pushi.e 60
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[194]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [196]

:[195]
pushi.e 1
pop.v.i global.interact

:[196]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [200]

:[197]
pushi.e 0
pop.v.i global.mercy
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
pushi.e 1
pop.v.i global.interact

:[199]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 690
pop.v.i global.msc
pushi.e 0
pop.v.i global.facing
pushi.e 105
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
pushi.e 62
pop.v.i self.con

:[200]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [202]

:[201]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [203]

:[202]
push.e 0

:[203]
bf [208]

:[204]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [207]

:[205]
push.v 1576.x
pushi.e 340
cmp.i.v GTE
bf [207]

:[206]
pushi.e 1341
conv.i.v
pushi.e 120
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.flowey

:[207]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.border
push.s "music/anothermedium.ogg"@2695
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 168
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[208]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [212]

:[209]
pushi.e 1208
pushenv [211]

:[210]
pushi.e 2
pop.v.i self.middle

:[211]
popenv [210]
pushi.e -1
pop.v.i 1208.sing
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i 1215.grey
pushi.e 26
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 76
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[212]
push.v self.con
pushi.e 76
cmp.i.v EQ
bf [214]

:[213]
pushi.e 1
pop.v.i global.interact

:[214]
push.v self.con
pushi.e 77
cmp.i.v EQ
bf [218]

:[215]
pushi.e 1211
pushenv [217]

:[216]
pushi.e 1
pop.v.i self.finished

:[217]
popenv [216]
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 1
pushi.e -5
pushi.e 278
pop.v.i [array]global.flag
push.s "obj_multitileevent_592"@18692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_593"@18694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_multitileevent_594"@18696
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
pushi.e 78
pop.v.i self.con

:[218]
push.v self.con
pushi.e 78
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
bf [227]

:[222]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.flame1
conv.v.i
pushenv [224]

:[223]
call.i instance_destroy(argc=0)
popz.v

:[224]
popenv [223]
push.v self.flame2
conv.v.i
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]
pushi.e 79
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[227]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [229]

:[228]
pushi.e 0
pop.v.i global.facechoice
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_multitileevent_614"@18698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_615"@18700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_multitileevent_616"@18702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_multitileevent_617"@18704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_multitileevent_618"@18706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_multitileevent_619"@18708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_multitileevent_620"@18710
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
pushi.e 81
pop.v.i self.con

:[229]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [231]

:[230]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [232]

:[231]
push.e 0

:[232]
bf [end]

:[233]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 6
pop.v.i global.faceemotion
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_multitileevent_631"@18711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_multitileevent_632"@18712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_multitileevent_633"@18713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_multitileevent_634"@18715
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_multitileevent_635"@18716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_multitileevent_636"@18717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_multitileevent_637"@18718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_multitileevent_638"@18720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_multitileevent_639"@18722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_multitileevent_640"@18724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_multitileevent_641"@18725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_multitileevent_642"@18727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_multitileevent_643"@18729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_multitileevent_644"@18731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_multitileevent_645"@18732
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_multitileevent_646"@18734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_multitileevent_647"@18736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_multitileevent_648"@18738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_multitileevent_649"@18740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_multitileevent_650"@18742
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
popz.v
push.d 55.1
pop.v.d self.con

:[end]