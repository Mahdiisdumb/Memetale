.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e 1
pop.v.i global.interact
pushi.e 1172
pop.v.i self.alphys
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 47
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.facechoice
push.s "obj_alphystrigger2_87"@9740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [4]

:[3]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[4]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [6]

:[5]
pushi.e 180
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[6]
pushi.e 2
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [21]

:[11]
push.d 0.334
push.v self.alphys
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [13]

:[12]
pushi.e 3
pop.v.i global.facing

:[13]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [15]

:[14]
pushi.e 1
pop.v.i global.facing

:[15]
push.v 1576.y
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
cmp.v.v GT
bf [17]

:[16]
pushi.e 0
pop.v.i self.up
pushi.e 270
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 3
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 3
pop.v.i self.con

:[17]
push.v 1576.y
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
cmp.v.v LT
bf [19]

:[18]
pushi.e 1
pop.v.i self.up
pushi.e 90
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e -3
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 3
pop.v.i self.con

:[19]
push.v 1576.y
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
sub.v.v
call.i abs(argc=1)
pushi.e 5
cmp.i.v LTE
bf [21]

:[20]
pushi.e 3
pop.v.i self.up
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 4
pop.v.i self.con

:[21]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [24]

:[22]
push.v 1576.y
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LTE
bf [24]

:[23]
pushi.e 3
pop.v.i self.up
pushi.e 4
pop.v.i self.con

:[24]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [30]

:[25]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [27]

:[26]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 3
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.hspeed

:[27]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [29]

:[28]
pushi.e 180
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e -3
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.hspeed

:[29]
pushi.e 5
pop.v.i self.con

:[30]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [37]

:[31]
push.v 1576.x
pushi.e 10
add.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
sub.v.v
call.i abs(argc=1)
pushi.e 30
cmp.i.v LT
bf [37]

:[32]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [34]

:[33]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[34]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [36]

:[35]
pushi.e 180
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[36]
pushi.e 6
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_alphystrigger2_146"@9742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_147"@9744
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
pushi.e 8
pop.v.i self.con

:[39]
push.v self.con
pushi.e 8
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
pushi.e 9
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [46]

:[45]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 1339
conv.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
pushi.e 5
sub.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blc
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 11
pop.v.i self.con

:[49]
push.v self.con
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
push.v self.blc
conv.v.i
pushenv [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
popenv [54]
push.s "obj_alphystrigger2_169"@9746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_170"@9748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_171"@9750
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
pushi.e 13
pop.v.i self.con

:[56]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [58]

:[57]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [65]

:[60]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [62]

:[61]
pushi.e 180
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[62]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [64]

:[63]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[64]
pushi.e 6
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.speed
push.d 0.5
push.v self.alphys
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 14
pop.v.i self.con

:[65]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [71]

:[66]
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
add.v.v
pushi.e 30
add.i.v
cmp.v.v GT
bt [68]

:[67]
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 30
sub.i.v
cmp.v.v LT
b [69]

:[68]
push.e 1

:[69]
bf [71]

:[70]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.speed
push.s "music/alphysfix.ogg"@2700
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.noise
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.noise
call.i caster_play(argc=3)
popz.v
pushi.e 15
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[71]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [82]

:[72]
push.v self.noise
call.i caster_free(argc=1)
popz.v
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [74]

:[73]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[74]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [76]

:[75]
pushi.e 180
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[76]
pushi.e 6
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.speed
push.v 1576.x
pushi.e 10
add.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
sub.v.v
call.i abs(argc=1)
pushi.e 30
cmp.i.v LT
bf [82]

:[77]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.speed
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [79]

:[78]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[79]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [81]

:[80]
pushi.e 180
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[81]
pushi.e 17
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[82]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [84]

:[83]
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_alphystrigger2_221"@9752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_222"@9754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_223"@9756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_224"@9758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_225"@9760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_226"@9762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_227"@9763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_228"@9764
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_229"@9765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_230"@9766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_231"@9767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_alphystrigger2_232"@9769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.slid
pushi.e 19
pop.v.i self.con
pushi.e 220
conv.i.v
call.i scr_phoneget(argc=1)
popz.v
pushi.e 221
conv.i.v
call.i scr_phoneget(argc=1)
popz.v

:[84]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [86]

:[85]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [95]

:[88]
push.v 784.stringno
pushi.e 11
cmp.i.v EQ
bf [90]

:[89]
push.v self.slid
pushi.e 0
cmp.i.v EQ
b [91]

:[90]
push.e 0

:[91]
bf [95]

:[92]
pushi.e 1293
pushenv [94]

:[93]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[94]
popenv [93]
pushi.e 1
pop.v.i self.slid

:[95]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [97]

:[96]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [104]

:[99]
pushi.e 20
pop.v.i self.con
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [101]

:[100]
pushi.e 180
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[101]
push.v 1576.x
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [103]

:[102]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction

:[103]
pushi.e 6
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.speed
push.d 0.5
push.v self.alphys
conv.v.i
pop.v.d [stacktop]self.image_speed

:[104]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [111]

:[105]
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
push.v 1293.x
sub.v.v
pushi.e 12
add.i.v
call.i abs(argc=1)
pushi.e 40
cmp.i.v LT
bf [111]

:[106]
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
cmp.v.v GT
bf [110]

:[107]
pushi.e 1293
pushenv [109]

:[108]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[109]
popenv [108]

:[110]
pushi.e 21
pop.v.i self.con

:[111]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [122]

:[112]
push.v self.alphys
conv.v.i
push.v [stacktop]self.direction
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
push.v 1293.x
pushi.e 10
add.i.v
cmp.v.v GTE
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 90
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 22
pop.v.i self.con

:[117]
push.v self.alphys
conv.v.i
push.v [stacktop]self.direction
pushi.e 180
cmp.i.v EQ
bf [119]

:[118]
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
push.v 1293.x
pushi.e 15
add.i.v
cmp.v.v LTE
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
pushi.e 90
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 22
pop.v.i self.con

:[122]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [127]

:[123]
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
push.v 1293.y
pushi.e 60
add.i.v
cmp.v.v LT
bf [127]

:[124]
pushi.e 1
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.d
push.v 1293.depth
pushi.e 1
add.i.v
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 1293
pushenv [126]

:[125]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[126]
popenv [125]
pushi.e 23
pop.v.i self.con

:[127]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [end]

:[128]
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
push.v 1293.y
pushi.e 26
add.i.v
cmp.v.v LT
bf [end]

:[129]
pushi.e 270
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.speed
push.d 0.1
push.v self.alphys
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v 1293.y
pushi.e 25
add.i.v
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 24
pop.v.i self.con
pushi.e 127
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 1292
pushenv [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
popenv [130]

:[end]