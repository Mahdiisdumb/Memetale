.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 270
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 1339
conv.i.v
push.v self.nap
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.nap
conv.v.i
push.v [stacktop]self.x
pushi.e 2
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bl
pushi.e 4
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [8]

:[5]
push.v self.bl
conv.v.i
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 6
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [12]

:[9]
push.s "obj_napstablookdate_158"@18973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablookdate_159"@18975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablookdate_160"@18977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 36
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.s "obj_napstablookdate_163"@18979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablookdate_164"@18981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablookdate_165"@18983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[11]
pushi.e 1
pushi.e -5
pushi.e 93
pop.v.i [array]global.flag
call.i scr_regulartext(argc=0)
popz.v
pushi.e 8
pop.v.i self.con

:[12]
push.v self.con
pushi.e 8
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
pushi.e 0
pop.v.i global.interact
pushi.e 9
pop.v.i self.con
pushi.e -5
pushi.e 36
push.v [array]global.flag
pushi.e 0
cmp.i.v LTE
bf [18]

:[17]
pushi.e 90
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.direction

:[18]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.i global.interact
pushi.e 180
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 12
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i global.interact

:[25]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_napstablookdate_192"@18985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablookdate_193"@18987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 14
pop.v.i self.con

:[27]
push.v self.con
pushi.e 14
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
pushi.e -2
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 15
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [34]

:[33]
pushi.e 3
pop.v.i 1576.vspeed
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 17
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.image_index
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 19
pop.v.i self.con
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [38]

:[37]
pushi.e 0
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 90
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e -2
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 21
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[38]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [40]

:[39]
pushi.e 0
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 90
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.direction
push.d 0.01
push.v self.nap
conv.v.i
pop.v.d [stacktop]self.speed
pushi.e 23
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [42]

:[41]
pushi.e 270
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 0
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 25
pop.v.i self.con

:[42]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [44]

:[43]
pushi.e 615
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 27
pop.v.i self.con

:[44]
push.v self.con
pushi.e 27
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
pushi.e 28
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[49]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [51]

:[50]
pushi.e 617
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pop.v.i self.con

:[51]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [53]

:[52]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [60]

:[55]
push.v self.nap
conv.v.i
pushenv [57]

:[56]
pushi.e 4
conv.i.v
pushi.e 100
conv.i.v
pushi.e 220
conv.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.rsprite
pop.v.v self.sprite_index

:[57]
popenv [56]
pushi.e 1576
pushenv [59]

:[58]
pushi.e 2
conv.i.v
pushi.e 100
conv.i.v
pushi.e 120
conv.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.rsprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[59]
popenv [58]
pushi.e 31
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [62]

:[61]
pushi.e 0
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.speed
push.v 1576.x
call.i round(argc=1)
pop.v.v 1576.x
push.v 1576.y
call.i round(argc=1)
pop.v.v 1576.y
pushi.e 0
pop.v.i 1576.speed
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.image_index
pushi.e 33
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[62]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [64]

:[63]
pushi.e 180
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 35
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1224
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.nap
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 20
add.i.v
pop.i.v [stacktop]self.y
pushi.e 1
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
pop.v.i 1576.visible
pushi.e 1138
conv.i.v
push.v 1576.y
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
pushi.e 37
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[66]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_napstablookdate_312"@18989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablookdate_313"@18991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 39
pop.v.i self.con
pushi.e 10
pop.v.i self.buffer

:[68]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [70]

:[69]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.v 1576.x
pop.v.v self.get_mcx
push.v 1576.y
pop.v.v self.get_mcy
pushi.e 230
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 300
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 40
pop.v.i self.con

:[73]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [91]

:[74]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
pushi.e 1
pop.v.i global.interact
push.v self.buffer
pushi.e 1
cmp.i.v LT
bf [76]

:[75]
pushi.e 0
pop.v.i global.interact

:[76]
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
push.v 1576.x
push.v self.get_mcx
cmp.v.v NEQ
bt [81]

:[77]
push.v 1576.y
push.v self.get_mcy
cmp.v.v NEQ
bf [79]

:[78]
push.v self.buffer
pushi.e 1
cmp.i.v LT
b [80]

:[79]
push.e 0

:[80]
b [82]

:[81]
push.e 1

:[82]
bf [91]

:[83]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 1
cmp.i.v GTE
bf [85]

:[84]
pushi.e -1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[85]
pushi.e 1
pushi.e -5
pushi.e 458
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pop.v.v 1576.x
push.v self.mc
conv.v.i
push.v [stacktop]self.y
pop.v.v 1576.y
pushi.e 1
pop.v.i 1576.visible
push.v self.mc
conv.v.i
pushenv [87]

:[86]
call.i instance_destroy(argc=0)
popz.v

:[87]
popenv [86]
pushi.e 40
pop.v.i self.con
push.v self.wavein
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 41
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[89]
push.v self.wavein
pushi.e 0
cmp.i.v GT
bf [91]

:[90]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 41
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[91]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [93]

:[92]
pushi.e 0
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.nap
conv.v.i
push.v [stacktop]self.lsprite
push.v self.nap
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.nap
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 20
sub.i.v
pop.i.v [stacktop]self.y
push.s "obj_napstablookdate_356"@18993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 44
pop.v.i self.con

:[93]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [95]

:[94]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [100]

:[97]
pushi.e 45
pop.v.i self.con
pushi.e 1137
pushenv [99]

:[98]
pushi.e 240
pop.v.i self.buffer

:[99]
popenv [98]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pushi.e -5
pushi.e 93
pop.v.i [array]global.flag

:[100]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [102]

:[101]
pushi.e 2
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 270
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 81
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 82
cmp.i.v EQ
bf [104]

:[103]
pushi.e 0
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 85
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[104]
push.v self.con
pushi.e 86
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
bf [111]

:[108]
push.v self.nap
conv.v.i
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 87
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[111]
push.v self.wavein
pushi.e 1
cmp.i.v EQ
bt [113]

:[112]
push.v self.wavein
pushi.e 2
cmp.i.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [118]

:[115]
pushi.e 2
pop.v.i self.wavein
push.v self.waver
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.005
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.waver
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [117]

:[116]
pushi.e 1
push.v self.waver
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.d 2.1
pop.v.d self.wavein

:[117]
pushi.e 1
push.v self.waver
conv.v.i
push.v [stacktop]self.image_alpha
sub.v.i
pop.v.v global.screen_border_alpha

:[118]
push.v self.wavein
pushi.e 3
cmp.i.v EQ
bf [end]

:[119]
push.v self.waver
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.005
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.waver
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [121]

:[120]
pushi.e 0
push.v self.waver
conv.v.i
pop.v.i [stacktop]self.image_alpha

:[121]
pushi.e 1
push.v self.waver
conv.v.i
push.v [stacktop]self.image_alpha
sub.v.i
pop.v.v global.screen_border_alpha
push.v self.waver
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [123]

:[122]
push.v 1136.songplaying
pushi.e 0
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
bf [end]

:[125]
pushi.e 0
pop.v.i self.wavein
push.v self.waver
conv.v.i
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]
pushi.e 1136
pushenv [129]

:[128]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[129]
popenv [128]

:[end]