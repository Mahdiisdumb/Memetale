.localvar 0 arguments

:[0]
push.v self.myinteract
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
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
push.d 0.1
push.v self.rman
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 5
pop.v.i global.typer
pushi.e 770
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.myinteract

:[5]
push.v self.myinteract
pushi.e 2
cmp.i.v EQ
bf [10]

:[6]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [10]

:[7]
pushi.e 0
push.v self.rman
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.rman
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact
b [10]

:[9]
pushi.e 3
pop.v.i self.myinteract

:[10]
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
pushi.e 1
add.i.v
pop.v.v self.dogy

:[12]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
pushi.e 1
add.i.v
pop.v.v self.dogy

:[14]
push.v self.con
push.d 0.1
cmp.d.v EQ
bf [16]

:[15]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.d 0.25
pop.v.d 1576.image_speed
push.d 0.2
pop.v.d self.con

:[19]
push.v self.con
push.d 0.2
cmp.d.v EQ
bf [29]

:[20]
pushi.e 1
pop.v.i global.phasing
push.v 1576.x
push.v self.x
pushi.e 54
add.i.v
cmp.v.v LT
bf [22]

:[21]
pushi.e 1
pop.v.i global.facing
push.v 1576.x
pushi.e 2
add.i.v
pop.v.v 1576.x

:[22]
push.v 1576.x
push.v self.x
pushi.e 58
add.i.v
cmp.v.v GT
bf [24]

:[23]
pushi.e 3
pop.v.i global.facing
push.v 1576.x
pushi.e 2
sub.i.v
pop.v.v 1576.x

:[24]
push.v 1576.x
push.v self.x
pushi.e 54
add.i.v
cmp.v.v GTE
bf [26]

:[25]
push.v 1576.x
push.v self.x
pushi.e 58
add.i.v
cmp.v.v LTE
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.d 0.3
pop.v.d self.con

:[29]
push.v self.con
push.d 0.3
cmp.d.v EQ
bf [38]

:[30]
pushi.e 1
pop.v.i global.phasing
push.v self.x
pushi.e 56
add.i.v
pop.v.v 1576.x
push.i 960000
pop.v.i self.depth
pushi.e 0
pop.v.i global.facing
push.v self.up
pushi.e 0
cmp.i.v EQ
bf [34]

:[31]
pushi.e 0
pop.v.i global.facing
push.v 1576.y
push.v self.y
push.v self.dogy
add.v.v
pushi.e 8
sub.i.v
push.v self.adjust
add.v.v
cmp.v.v LT
bf [33]

:[32]
push.v 1576.y
pushi.e 2
add.i.v
pop.v.v 1576.y
b [34]

:[33]
push.d 0.4
pop.v.d self.con

:[34]
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [38]

:[35]
pushi.e 2
pop.v.i global.facing
push.v 1576.y
push.v self.y
push.v self.dogy
add.v.v
pushi.e 8
sub.i.v
push.v self.adjust
add.v.v
cmp.v.v GT
bf [37]

:[36]
push.v 1576.y
pushi.e 2
sub.i.v
pop.v.v 1576.y
b [38]

:[37]
push.d 0.4
pop.v.d self.con

:[38]
push.v self.con
push.d 0.4
cmp.d.v EQ
bf [40]

:[39]
pushi.e 3
pop.v.i global.facing
push.d 1.1
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1576
pop.v.i self.snapper

:[40]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [43]

:[41]
pushi.e 1
pop.v.i self.con
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[43]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [47]

:[44]
push.v self.dogy
pushi.e -10
cmp.i.v GT
bf [46]

:[45]
push.v self.dogy
push.d 0.5
sub.d.v
pop.v.v self.dogy
b [47]

:[46]
pushi.e -10
pop.v.i self.dogy
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[47]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [51]

:[48]
pushi.e -5
pop.v.i self.hspeed
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e -2
pop.v.i self.hspeed
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[50]
push.d 0.334
pop.v.d self.image_speed
pushi.e 4
pop.v.i self.con

:[51]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [53]

:[52]
push.v self.x
pushi.e -80
cmp.i.v LT
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 4.1
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
push.d 5.1
cmp.d.v EQ
bf [58]

:[57]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 99
pop.v.i self.con
pushi.e 24
pop.v.i global.entrance
pushi.e 316
conv.i.v
call.i room_goto(argc=1)
popz.v

:[58]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [62]

:[59]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 340
pop.v.i self.x
pushi.e 3
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e -10
pop.v.i self.dogy
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 0
pop.v.i self.dogy
pushi.e -2
pop.v.i self.hspeed
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[61]
push.d 0.334
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.hspeed
pushi.e 7
pop.v.i self.con

:[62]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [65]

:[63]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 120
add.i.v
cmp.v.v LT
bf [65]

:[64]
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i self.hspeed

:[65]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [67]

:[66]
pushi.e 9
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [69]

:[68]
pushi.e 1
pop.v.i global.interact

:[69]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [149]

:[70]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 31
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
pushi.e -5
pushi.e 460
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 17
pop.v.i self.rr

:[72]
push.s "obj_dogboat_thing_400"@11671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_401"@11673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_dogboat_thing_402"@11675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[74]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_dogboat_thing_403"@11677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_404"@11679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[76]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
push.s "obj_dogboat_thing_405"@11681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[78]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_dogboat_thing_406"@11683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[80]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_dogboat_thing_407"@11685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.rr
pushi.e 6
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_dogboat_thing_408"@11687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.v self.rr
pushi.e 7
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_dogboat_thing_409"@11689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
push.v self.rr
pushi.e 8
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_dogboat_thing_410"@11691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_411"@11693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[88]
push.v self.rr
pushi.e 9
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_dogboat_thing_412"@11695
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_413"@11697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[90]
push.v self.rr
pushi.e 10
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_dogboat_thing_414"@11699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_415"@11701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[92]
push.v self.rr
pushi.e 11
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_dogboat_thing_416"@11703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_417"@11705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[94]
push.v self.rr
pushi.e 12
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_dogboat_thing_418"@11707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
push.v self.rr
pushi.e 13
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_dogboat_thing_419"@11709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[98]
push.v self.rr
pushi.e 14
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_dogboat_thing_420"@11711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_421"@11713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[100]
push.v self.rr
pushi.e 15
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_dogboat_thing_422"@11715
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[102]
push.v self.rr
pushi.e 16
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_dogboat_thing_423"@11717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_424"@11719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[104]
push.v self.rr
pushi.e 17
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_dogboat_thing_425"@11721
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_426"@11723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[106]
push.v self.rr
pushi.e 18
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_dogboat_thing_427"@11725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[108]
push.v self.rr
pushi.e 19
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_dogboat_thing_428"@11727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[110]
push.v self.rr
pushi.e 20
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_dogboat_thing_429"@11729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_430"@11731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[112]
push.v self.rr
pushi.e 21
cmp.i.v EQ
bf [114]

:[113]
push.s "obj_dogboat_thing_431"@11732
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogboat_thing_432"@11734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[114]
push.v self.rr
pushi.e 22
cmp.i.v EQ
bf [116]

:[115]
push.s "obj_dogboat_thing_433"@11736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[116]
push.v self.rr
pushi.e 23
cmp.i.v EQ
bf [134]

:[117]
pushbltn.v self.current_weekday
pop.v.v self.weekday
push.s "weekday_error"@31407
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day
push.v self.weekday
pushi.e 0
cmp.i.v EQ
bf [119]

:[118]
push.s "weekday_0"@31409
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day

:[119]
push.v self.weekday
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
push.s "weekday_1"@31411
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day

:[121]
push.v self.weekday
pushi.e 2
cmp.i.v EQ
bf [123]

:[122]
push.s "weekday_2"@31413
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day

:[123]
push.v self.weekday
pushi.e 3
cmp.i.v EQ
bf [125]

:[124]
push.s "weekday_3"@31415
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day

:[125]
push.v self.weekday
pushi.e 4
cmp.i.v EQ
bf [127]

:[126]
push.s "weekday_4"@31417
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day

:[127]
push.v self.weekday
pushi.e 5
cmp.i.v EQ
bf [129]

:[128]
push.s "weekday_5"@31419
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day

:[129]
push.v self.weekday
pushi.e 6
cmp.i.v EQ
bf [131]

:[130]
push.s "weekday_6"@31421
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day

:[131]
push.v self.weekday
pushi.e 7
cmp.i.v EQ
bf [133]

:[132]
push.s "weekday_0"@31409
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day

:[133]
push.v self.day
push.s "obj_dogboat_thing_447"@11738
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[134]
push.v self.rr
pushi.e 24
cmp.i.v EQ
bf [136]

:[135]
push.s "obj_dogboat_thing_450"@11740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[136]
push.v self.rr
pushi.e 25
cmp.i.v EQ
bf [138]

:[137]
push.s "obj_dogboat_thing_451"@11742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[138]
push.v self.rr
pushi.e 26
cmp.i.v EQ
bf [140]

:[139]
push.s "obj_dogboat_thing_452"@11744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[140]
push.v self.rr
pushi.e 27
cmp.i.v EQ
bf [142]

:[141]
push.s "obj_dogboat_thing_453"@11746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[142]
push.v self.rr
pushi.e 28
cmp.i.v EQ
bf [144]

:[143]
push.s "obj_dogboat_thing_454"@11748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[144]
push.v self.rr
pushi.e 29
cmp.i.v EQ
bf [146]

:[145]
push.s "obj_dogboat_thing_455"@11750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[146]
push.v self.rr
pushi.e 30
cmp.i.v EQ
bf [148]

:[147]
push.s "obj_dogboat_thing_456"@11752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[148]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 11
pop.v.i self.con

:[149]
push.v self.con
pushi.e 11
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
bf [154]

:[153]
pushi.e 12
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[154]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [156]

:[155]
pushi.e 15
pop.v.i self.con

:[156]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [158]

:[157]
pushi.e -2
pop.v.i self.hspeed
pushi.e 16
pop.v.i self.con

:[158]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [160]

:[159]
push.v self.x
pushi.e -80
cmp.i.v LT
b [161]

:[160]
push.e 0

:[161]
bf [163]

:[162]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 17
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[163]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [172]

:[164]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 19
pop.v.i self.con
pushi.e 24
pop.v.i global.entrance
pushi.e -5
pushi.e 459
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [166]

:[165]
pushi.e 70
conv.i.v
call.i room_goto(argc=1)
popz.v

:[166]
pushi.e -5
pushi.e 459
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [168]

:[167]
pushi.e 125
conv.i.v
call.i room_goto(argc=1)
popz.v

:[168]
pushi.e -5
pushi.e 459
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [170]

:[169]
pushi.e 140
conv.i.v
call.i room_goto(argc=1)
popz.v

:[170]
pushi.e -5
pushi.e 459
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [172]

:[171]
pushi.e 140
conv.i.v
call.i room_goto(argc=1)
popz.v

:[172]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [176]

:[173]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 340
pop.v.i self.x
pushi.e 3
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e -10
pop.v.i self.dogy
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
pushi.e 0
pop.v.i self.dogy
pushi.e -2
pop.v.i self.hspeed

:[175]
push.d 0.2
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.hspeed
pushi.e 51
pop.v.i self.con

:[176]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [179]

:[177]
push.v self.x
push.v self.xstart
cmp.v.v LT
bf [179]

:[178]
push.v self.xstart
pop.v.v self.x
pushi.e 52
pop.v.i self.con
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[179]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [182]

:[180]
pushi.e 1
pop.v.i global.phasing
pushi.e 54
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.sprite_index
pushi.e 1618
cmp.i.v EQ
bf [182]

:[181]
push.d 52.5
pop.v.d self.con

:[182]
push.v self.con
push.d 53.5
cmp.d.v EQ
bf [186]

:[183]
push.v self.dogy
pushi.e 1
cmp.i.v LT
bf [185]

:[184]
push.v self.dogy
push.d 0.5
add.d.v
pop.v.v self.dogy
b [186]

:[185]
pushi.e 54
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[186]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [193]

:[187]
pushi.e 2
pop.v.i global.facing
push.i 9999999
pop.v.i self.snapper
push.v self.up
pushi.e 0
cmp.i.v EQ
bf [190]

:[188]
push.v 1576.y
pushi.e 2
sub.i.v
pop.v.v 1576.y
push.d 0.25
pop.v.d 1576.image_speed
push.v 1576.y
push.v self.y
pushi.e 25
sub.i.v
cmp.v.v LT
bf [190]

:[189]
pushi.e 56
pop.v.i self.con

:[190]
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [193]

:[191]
pushi.e 0
pop.v.i global.facing
push.v 1576.y
pushi.e 2
add.i.v
pop.v.v 1576.y
push.d 0.25
pop.v.d 1576.image_speed
push.v 1576.y
push.v self.y
pushi.e 25
add.i.v
cmp.v.v GT
bf [193]

:[192]
pushi.e 56
pop.v.i self.con

:[193]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [195]

:[194]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.image_index
pushi.e 57
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[195]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [197]

:[196]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_dogboat_thing_593"@11754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 59
pop.v.i self.con
push.d 0.1
push.v self.rman
conv.v.i
pop.v.d [stacktop]self.image_speed

:[197]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [199]

:[198]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [200]

:[199]
push.e 0

:[200]
bf [end]

:[201]
push.v self.rman
pushi.e 1
add.i.v
pop.v.v self.depth
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [203]

:[202]
push.i 960000
pop.v.i self.depth

:[203]
pushi.e -5
pushi.e 460
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i global.msc
pushi.e 0
push.v self.rman
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.rman
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]