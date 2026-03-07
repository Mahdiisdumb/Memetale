.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [22]

:[2]
push.v 1576.x
pushi.e 100
cmp.i.v GT
bf [4]

:[3]
push.v self.tents
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1080
conv.i.v
pushi.e 70
conv.i.v
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.tent1
pushi.e 1
push.v self.tent1
conv.v.i
pop.v.i [stacktop]self.follow
pushi.e 0
push.v self.tent1
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
pop.v.i self.tents
pushi.e 2
push.v self.tent1
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v

:[7]
push.v 1576.x
pushi.e 210
cmp.i.v GT
bf [9]

:[8]
push.v self.tents
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1080
conv.i.v
pushi.e 220
conv.i.v
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.tent2
pushi.e 1
push.v self.tent2
conv.v.i
pop.v.i [stacktop]self.follow
pushi.e 1
push.v self.tent2
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.tent2
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 2
pop.v.i self.tents
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v

:[12]
push.v 1576.x
pushi.e 420
cmp.i.v GT
bf [15]

:[13]
push.v self.tents
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [22]

:[17]
pushi.e 0
pop.v.i global.facing
pushi.e 3
pop.v.i self.tents
pushi.e 1
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
push.v self.tent1
conv.v.i
pushenv [19]

:[18]
pushi.e 4
pop.v.i self.on

:[19]
popenv [18]
push.v self.tent2
conv.v.i
pushenv [21]

:[20]
pushi.e 4
pop.v.i self.on

:[21]
popenv [20]
pushi.e 1
pushi.e -5
pushi.e 496
pop.v.i [array]global.flag
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v

:[22]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [30]

:[23]
pushi.e 1080
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.onion
conv.v.i
pushenv [27]

:[26]
push.v 1576.x
pushi.e 10
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.follow
pushi.e 0
pop.v.i self.hspeed

:[27]
popenv [26]
push.v self.onion
conv.v.i
pushenv [29]

:[28]
pushi.e 1
pop.v.i self.on

:[29]
popenv [28]
pushi.e 3
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [36]

:[31]
pushi.e 2
pop.v.i global.facing
push.v self.onion
conv.v.i
pushenv [33]

:[32]
pushi.e 2
pop.v.i self.on

:[33]
popenv [32]
pushi.e 1080
pushenv [35]

:[34]
pushi.e 2
pop.v.i self.on

:[35]
popenv [34]
pushi.e 5
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [38]

:[37]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_onionsan_event_181"@19536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_onionsan_event_182"@19538
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
pushi.e 7
pop.v.i self.con

:[38]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [40]

:[39]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [41]

:[40]
push.e 0

:[41]
bf [46]

:[42]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [46]

:[43]
pushi.e 1080
pushenv [45]

:[44]
pushi.e 4
pop.v.i self.on

:[45]
popenv [44]

:[46]
push.v self.con
pushi.e 7
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
bf [51]

:[50]
pushi.e 0
pop.v.i global.interact
pushi.e 1
push.v self.onion
conv.v.i
pop.v.i [stacktop]self.follow
pushi.e 2
push.v self.onion
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 8
pop.v.i self.con

:[51]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [54]

:[52]
push.v 1576.x
pushi.e 550
cmp.i.v GT
bf [54]

:[53]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 2
pushi.e -5
pushi.e 496
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_onionsan_event_211"@19540
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_onionsan_event_212"@19542
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

:[57]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [60]

:[58]
push.v 1576.x
pushi.e 700
cmp.i.v GT
bf [60]

:[59]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 3
pushi.e -5
pushi.e 496
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_onionsan_event_224"@19544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_onionsan_event_225"@19546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_onionsan_event_226"@19548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_onionsan_event_227"@19550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_onionsan_event_228"@19552
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

:[63]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [66]

:[64]
push.v 1576.x
pushi.e 850
cmp.i.v GT
bf [66]

:[65]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 4
pushi.e -5
pushi.e 496
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_onionsan_event_241"@19554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_onionsan_event_242"@19556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_onionsan_event_243"@19558
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

:[69]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [72]

:[70]
push.v 1576.x
pushi.e 1000
cmp.i.v GT
bf [72]

:[71]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [77]

:[74]
pushi.e 5
pushi.e -5
pushi.e 496
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 15
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_onionsan_event_256"@19560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_onionsan_event_257"@19562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_onionsan_event_258"@19564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.onion
conv.v.i
pushenv [76]

:[75]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[76]
popenv [75]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[77]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [79]

:[78]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 0
pop.v.i global.interact
pushi.e 10
pop.v.i self.con

:[82]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [84]

:[83]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [85]

:[84]
push.e 0

:[85]
bf [97]

:[86]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [88]

:[87]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [97]

:[90]
pushi.e 1080
pushenv [92]

:[91]
pushi.e 4
pop.v.i self.on

:[92]
popenv [91]
push.v self.onion
conv.v.i
pushenv [94]

:[93]
pushi.e 4
pop.v.i self.on

:[94]
popenv [93]
push.v self.onion
conv.v.i
pushenv [96]

:[95]
pushi.e 0
pop.v.i self.follow

:[96]
popenv [95]

:[97]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [99]

:[98]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 16
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[102]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [106]

:[103]
push.v 1576.x
pushi.e 600
cmp.i.v GT
bf [106]

:[104]
push.v 1576.x
pushi.e 640
cmp.i.v LT
bf [106]

:[105]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [113]

:[108]
push.v self.onion
conv.v.i
push.v [stacktop]self.on
pushi.e 4
cmp.i.v NEQ
bf [110]

:[109]
push.v self.onion
conv.v.i
push.v [stacktop]self.on
pushi.e 0
cmp.i.v NEQ
b [111]

:[110]
push.e 0

:[111]
bf [113]

:[112]
pushi.e 6
pushi.e -5
pushi.e 496
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 839
pop.v.i global.msc
pushi.e 1
pop.v.i self.once
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[113]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [118]

:[114]
push.v 1576.x
pushi.e 600
cmp.i.v GT
bf [118]

:[115]
push.v 1576.x
pushi.e 640
cmp.i.v LT
bf [118]

:[116]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
push.v self.once
pushi.e 0
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [127]

:[120]
push.v self.onion
conv.v.i
push.v [stacktop]self.on
pushi.e 4
cmp.i.v NEQ
bf [122]

:[121]
push.v self.onion
conv.v.i
push.v [stacktop]self.on
pushi.e 0
cmp.i.v NEQ
b [123]

:[122]
push.e 0

:[123]
bf [127]

:[124]
pushi.e 1
pop.v.i self.once
pushi.e 1
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_onionsan_event_312"@19566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_onionsan_event_313"@19568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_onionsan_event_314"@19570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_onionsan_event_317"@19572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_onionsan_event_318"@19574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_onionsan_event_319"@19576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_onionsan_event_320"@19578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 7
pushi.e -5
pushi.e 496
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.once

:[126]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[127]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [132]

:[128]
push.v 1576.x
pushi.e 600
cmp.i.v GT
bf [132]

:[129]
push.v 1576.x
pushi.e 640
cmp.i.v LT
bf [132]

:[130]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
push.v self.once
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [139]

:[134]
push.v self.onion
conv.v.i
push.v [stacktop]self.on
pushi.e 4
cmp.i.v NEQ
bf [136]

:[135]
push.v self.onion
conv.v.i
push.v [stacktop]self.on
pushi.e 0
cmp.i.v NEQ
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushi.e 1
pop.v.i self.once
pushi.e 0
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
push.s "obj_onionsan_event_337"@19580
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

:[139]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [141]

:[140]
pushi.e 2
pop.v.i global.facing
pushi.e 26
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[141]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [143]

:[142]
pushi.e 28
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 4
push.v self.onion
conv.v.i
pop.v.i [stacktop]self.on

:[143]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [end]

:[144]
pushi.e 0
pop.v.i global.interact
pushi.e 30
pop.v.i self.con
pushi.e 0
pop.v.i global.facing

:[end]