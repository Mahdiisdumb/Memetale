.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.b_buffer
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.tangible
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
pushi.e 1227
pushenv [10]

:[9]
pushi.e 50
pop.v.i self.b_buffer

:[10]
popenv [9]
pushi.e 2
pop.v.i self.con
pushi.e 33
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 69
push.v self.bombtype
add.v.i
pop.v.v global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[11]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e 4
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i global.interact

:[15]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [33]

:[16]
pushi.e 90
pop.v.i self.con
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e -5
pushi.e 395
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 0
pop.v.i self.anti
pushi.e 1228
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[17]
push.v 1228.dx
pushi.e 120
cmp.i.v GTE
bf [19]

:[18]
pushi.e 1
pop.v.i self.anti

:[19]
push.v 1226.failure
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.anti

:[21]
pushi.e -5
pushi.e 395
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self.anti
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 7
pop.v.i self.con

:[26]
pushi.e -5
pushi.e 395
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [28]

:[27]
push.v self.anti
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 60
pop.v.i self.con

:[31]
pushi.e -5
pushi.e 395
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [33]

:[32]
pushi.e 160
pop.v.i 1226.con

:[33]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [49]

:[34]
pushi.e 6
pop.v.i global.facechoice
pushi.e 6
pop.v.i global.faceemotion
pushi.e 47
pop.v.i global.typer
push.s "obj_mettnews_battleobj_199"@17718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.msc
push.v self.bombtype
pushi.e 1
cmp.i.v EQ
bt [37]

:[35]
push.v self.bombtype
pushi.e 2
cmp.i.v EQ
bt [37]

:[36]
push.v self.bombtype
pushi.e 4
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
push.s "obj_mettnews_battleobj_204"@17720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnews_battleobj_205"@17722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[40]
push.v self.bombtype
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_mettnews_battleobj_209"@17723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnews_battleobj_210"@17725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[42]
push.v self.bombtype
pushi.e 5
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_mettnews_battleobj_214"@17727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.bombtype
pushi.e 6
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_mettnews_battleobj_218"@17729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
pushi.e -5
pushi.e 288
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_mettnews_battleobj_223"@17731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
pushi.e 90
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[49]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [97]

:[50]
pushi.e 1
pop.v.i 1227.watercancel
pushi.e 6
pop.v.i global.facechoice
pushi.e 6
pop.v.i global.faceemotion
pushi.e 47
pop.v.i global.typer
pushi.e 0
pop.v.i self.ex
push.v self.ex
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushi.e 0
pop.v.i global.msc

:[52]
push.v 1226.newdog
call.i instance_exists(argc=1)
conv.v.b
bf [54]

:[53]
push.v self.bombtype
pushi.e 1
cmp.i.v NEQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 1
pop.v.i self.ex

:[57]
push.v 1226.newwater
call.i instance_exists(argc=1)
conv.v.b
bf [59]

:[58]
push.v self.bombtype
pushi.e 2
cmp.i.v NEQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 2
pop.v.i self.ex

:[62]
push.v 1226.newscript
call.i instance_exists(argc=1)
conv.v.b
bf [64]

:[63]
push.v self.bombtype
pushi.e 3
cmp.i.v NEQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 3
pop.v.i self.ex

:[67]
push.v 1226.newbasketball
call.i instance_exists(argc=1)
conv.v.b
bf [69]

:[68]
push.v self.bombtype
pushi.e 4
cmp.i.v NEQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 4
pop.v.i self.ex

:[72]
push.v 1226.newpresent
call.i instance_exists(argc=1)
conv.v.b
bf [74]

:[73]
push.v self.bombtype
pushi.e 5
cmp.i.v NEQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 5
pop.v.i self.ex

:[77]
push.v 1226.newgame
call.i instance_exists(argc=1)
conv.v.b
bf [79]

:[78]
push.v self.bombtype
pushi.e 6
cmp.i.v NEQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 6
pop.v.i self.ex

:[82]
push.s "obj_mettnews_battleobj_246"@17733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.ex
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_mettnews_battleobj_249"@17735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.v self.ex
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_mettnews_battleobj_252"@17737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnews_battleobj_253"@17739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[86]
push.v self.ex
pushi.e 3
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_mettnews_battleobj_257"@17741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.ex
pushi.e 4
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_mettnews_battleobj_261"@17743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.ex
pushi.e 5
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_mettnews_battleobj_265"@17745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
push.v self.ex
pushi.e 6
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_mettnews_battleobj_269"@17747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
pushi.e -5
pushi.e 288
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_mettnews_battleobj_275"@17749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
pushi.e 90
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[97]
push.v self.con
pushi.e 90
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
bf [104]

:[101]
pushi.e 1227
pushenv [103]

:[102]
pushi.e 6
pop.v.i self.b_buffer

:[103]
popenv [102]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[104]
push.v self.bombtype
pushi.e 2
cmp.i.v EQ
bf [111]

:[105]
push.v self.cc
pushi.e 0
cmp.i.v EQ
bf [107]

:[106]
pushi.e 1
pop.v.i self.cc
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 35
conv.i.v
call.i path_start(argc=4)
popz.v

:[107]
push.v self.watercancel
pushi.e 1
cmp.i.v EQ
bf [111]

:[108]
call.i path_end(argc=0)
popz.v
pushi.e 300
conv.i.v
pushi.e 360
conv.i.v
call.i distance_to_point(argc=2)
pushi.e 20
cmp.i.v GT
bf [110]

:[109]
pushi.e 5
conv.i.v
pushi.e 300
conv.i.v
pushi.e 360
conv.i.v
call.i move_towards_point(argc=3)
popz.v
b [111]

:[110]
pushi.e 0
pop.v.i self.speed

:[111]
push.v self.bombtype
pushi.e 3
cmp.i.v EQ
bf [118]

:[112]
push.v self.cc
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
pushi.e 5
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.cc

:[114]
push.v self.x
push.v self.xstart
pushi.e 80
sub.i.v
cmp.v.v LT
bf [116]

:[115]
pushi.e 5
pop.v.i self.hspeed

:[116]
push.v self.x
push.v self.xstart
cmp.v.v GT
bf [118]

:[117]
pushi.e -5
pop.v.i self.hspeed

:[118]
push.v self.bombtype
pushi.e 4
cmp.i.v EQ
bf [end]

:[119]
push.v self.cc
pushi.e 0
cmp.i.v EQ
bf [121]

:[120]
pushi.e 1
pop.v.i self.cc
pushi.e 6
pop.v.i self.hspeed

:[121]
push.v self.x
push.v self.xstart
pushi.e 80
sub.i.v
cmp.v.v LT
bf [123]

:[122]
pushi.e 5
pop.v.i self.hspeed

:[123]
push.v self.x
push.v self.xstart
pushi.e 80
add.i.v
cmp.v.v GT
bf [125]

:[124]
pushi.e -5
pop.v.i self.hspeed

:[125]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
pop.v.v self.ypl
push.v self.y
push.v self.ypl
add.v.v
pop.v.v self.y
pushi.e 1
pop.v.i self.tangible

:[end]