.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.attacked

:[2]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [12]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [6]

:[5]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [9]

:[8]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[9]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [12]

:[11]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[12]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [15]

:[13]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[15]
push.v self.talked
pushi.e 1
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
call.i scr_textskip(argc=0)
popz.v
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 3
cmp.i.v LTE
bf [21]

:[20]
pushi.e 3
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[21]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 8
pop.v.i self.shudder
pushglb.v global.damagetimer
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [27]

:[24]
push.v self.dmgwriter
conv.v.i
pushenv [26]

:[25]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[26]
popenv [25]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[27]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [31]

:[28]
pushi.e 0
pop.v.i global.damage
pushi.e 190
conv.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 48
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 190
pushenv [30]

:[29]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[30]
popenv [29]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[31]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.v self.normalfight
pushi.e 1
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [213]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [210]

:[36]
pushi.e 1
pushi.e -5
pushi.e 271
pop.v.i [array]global.flag
pushglb.v global.sp
pushi.e 5
cmp.i.v LT
bf [38]

:[37]
pushi.e 5
pop.v.i global.sp

:[38]
pushi.e 10
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.timer_on
push.v self.mercy_death
pushi.e 0
cmp.i.v EQ
bf [171]

:[39]
push.v self.hit_try
pushi.e 13
cmp.i.v LT
bf [111]

:[40]
pushi.e 2
pop.v.i 744.movement
pushi.e 52
pop.v.i 744.sprite_index
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [44]

:[41]
pushi.e 518
pushenv [43]

:[42]
pushi.e 0
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[43]
popenv [42]

:[44]
push.v self.part
pushi.e 1
cmp.i.v EQ
bf [48]

:[45]
pushi.e 518
pushenv [47]

:[46]
pushi.e 3
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[47]
popenv [46]

:[48]
push.v self.part
pushi.e 2
cmp.i.v EQ
bf [52]

:[49]
pushi.e 518
pushenv [51]

:[50]
pushi.e 23
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[51]
popenv [50]

:[52]
push.v self.part
pushi.e 3
cmp.i.v EQ
bf [56]

:[53]
pushi.e 518
pushenv [55]

:[54]
pushi.e 6
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[55]
popenv [54]

:[56]
push.v self.part
pushi.e 4
cmp.i.v EQ
bf [60]

:[57]
pushi.e 518
pushenv [59]

:[58]
pushi.e 7
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[59]
popenv [58]

:[60]
push.v self.part
pushi.e 5
cmp.i.v EQ
bf [64]

:[61]
pushi.e 518
pushenv [63]

:[62]
pushi.e 8
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[63]
popenv [62]

:[64]
push.v self.part
pushi.e 6
cmp.i.v EQ
bf [68]

:[65]
pushi.e 518
pushenv [67]

:[66]
pushi.e 17
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[67]
popenv [66]

:[68]
push.v self.part
pushi.e 7
cmp.i.v EQ
bf [72]

:[69]
pushi.e 518
pushenv [71]

:[70]
pushi.e 15
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[71]
popenv [70]

:[72]
push.v self.part
pushi.e 8
cmp.i.v EQ
bf [76]

:[73]
pushi.e 518
pushenv [75]

:[74]
pushi.e 18
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[75]
popenv [74]

:[76]
push.v self.part
pushi.e 9
cmp.i.v EQ
bf [80]

:[77]
pushi.e 518
pushenv [79]

:[78]
pushi.e 1
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[79]
popenv [78]

:[80]
push.v self.part
pushi.e 10
cmp.i.v EQ
bf [84]

:[81]
pushi.e 518
pushenv [83]

:[82]
pushi.e 5
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[83]
popenv [82]

:[84]
push.v self.part
pushi.e 11
cmp.i.v EQ
bf [88]

:[85]
pushi.e 518
pushenv [87]

:[86]
pushi.e 21
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[87]
popenv [86]

:[88]
push.v self.part
pushi.e 12
cmp.i.v EQ
bf [92]

:[89]
pushi.e 518
pushenv [91]

:[90]
pushi.e 16
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[91]
popenv [90]

:[92]
push.v self.part
pushi.e 13
cmp.i.v GTE
bf [109]

:[93]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b_choose
push.v self.b_choose
pushi.e 0
cmp.i.v EQ
bf [97]

:[94]
pushi.e 518
pushenv [96]

:[95]
pushi.e 1
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[96]
popenv [95]

:[97]
push.v self.b_choose
pushi.e 1
cmp.i.v EQ
bf [101]

:[98]
pushi.e 518
pushenv [100]

:[99]
pushi.e 5
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[100]
popenv [99]

:[101]
push.v self.b_choose
pushi.e 2
cmp.i.v EQ
bf [105]

:[102]
pushi.e 518
pushenv [104]

:[103]
pushi.e 21
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[104]
popenv [103]

:[105]
push.v self.b_choose
pushi.e 3
cmp.i.v EQ
bf [109]

:[106]
pushi.e 518
pushenv [108]

:[107]
pushi.e 16
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[108]
popenv [107]

:[109]
pushglb.v global.border
pushi.e 39
cmp.i.v EQ
bf [111]

:[110]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 70
sub.i.v
pop.v.v 744.y
pushi.e 2
pop.v.i 744.vspeed

:[111]
push.v self.hit_try
pushi.e 14
cmp.i.v GTE
bf [114]

:[112]
push.v self.hit_try
pushi.e 23
cmp.i.v LT
bf [114]

:[113]
push.v self.nx
pushi.e 1
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [159]

:[116]
pushi.e 20
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.timer_on
pushi.e 1
pop.v.i 744.movement
pushi.e 46
pop.v.i 744.sprite_index
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [120]

:[117]
pushi.e 518
pushenv [119]

:[118]
pushi.e 12
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[119]
popenv [118]
pushi.e 1
pop.v.i self.timer_on

:[120]
push.v self.part
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e 512
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shadow
pushi.e 1
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.level
pushi.e 5
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.shadow_max

:[122]
push.v self.part
pushi.e 2
cmp.i.v EQ
bf [126]

:[123]
pushi.e 518
pushenv [125]

:[124]
pushi.e 1
pop.v.i self.smasher
pushi.e 0
pop.v.i self.smashlv
pushi.e 0
pop.v.i self.smashcon

:[125]
popenv [124]

:[126]
push.v self.part
pushi.e 3
cmp.i.v EQ
bf [130]

:[127]
pushi.e 518
pushenv [129]

:[128]
pushi.e 1
pop.v.i self.smasher
pushi.e 1
pop.v.i self.smashlv
pushi.e 0
pop.v.i self.smashcon

:[129]
popenv [128]

:[130]
push.v self.part
pushi.e 4
cmp.i.v EQ
bf [134]

:[131]
pushi.e 518
pushenv [133]

:[132]
pushi.e 13
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[133]
popenv [132]
pushi.e 1
pop.v.i self.timer_on

:[134]
push.v self.part
pushi.e 5
cmp.i.v EQ
bf [138]

:[135]
pushi.e 518
pushenv [137]

:[136]
pushi.e 22
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[137]
popenv [136]
pushi.e 1
pop.v.i self.timer_on

:[138]
push.v self.part
pushi.e 6
cmp.i.v EQ
bf [142]

:[139]
pushi.e 512
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shadow
push.v self.shadow
conv.v.i
pushenv [141]

:[140]
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[141]
popenv [140]
pushi.e 2
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.level
pushi.e 6
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.shadow_max

:[142]
push.v self.part
pushi.e 7
cmp.i.v EQ
bf [146]

:[143]
pushi.e 518
pushenv [145]

:[144]
pushi.e 1
pop.v.i self.smasher
pushi.e 2
pop.v.i self.smashlv
pushi.e 0
pop.v.i self.smashcon

:[145]
popenv [144]

:[146]
push.v self.part
pushi.e 8
cmp.i.v GTE
bf [159]

:[147]
push.v self.c_choose
pushi.e 1
cmp.i.v EQ
bf [151]

:[148]
pushi.e 518
pushenv [150]

:[149]
pushi.e 1
pop.v.i self.smasher
pushi.e 2
pop.v.i self.smashlv
pushi.e 0
pop.v.i self.smashcon

:[150]
popenv [149]

:[151]
push.v self.c_choose
pushi.e 2
cmp.i.v EQ
bf [155]

:[152]
pushi.e 512
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shadow
push.v self.shadow
conv.v.i
pushenv [154]

:[153]
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[154]
popenv [153]
pushi.e 2
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.level
pushi.e 6
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.shadow_max

:[155]
push.v self.c_choose
pushi.e 3
cmp.i.v EQ
bf [159]

:[156]
pushi.e 518
pushenv [158]

:[157]
pushi.e 13
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[158]
popenv [157]
pushi.e 1
pop.v.i self.timer_on

:[159]
push.v self.hit_try
pushi.e 23
cmp.i.v EQ
bf [165]

:[160]
pushi.e -1
pop.v.i global.border
pushi.e 518
pushenv [162]

:[161]
pushi.e 4
pop.v.i self.lac

:[162]
popenv [161]
pushi.e 758
pushenv [164]

:[163]
pushi.e 1
pop.v.i self.instaborder

:[164]
popenv [163]
pushi.e 0
pop.v.i self.timer_on
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[165]
push.v self.hit_try
pushi.e 14
cmp.i.v EQ
bf [167]

:[166]
push.v self.nx
pushi.e 0
cmp.i.v EQ
b [168]

:[167]
push.e 0

:[168]
bf [170]

:[169]
pushi.e 1
pop.v.i self.nx
pushi.e -10000
pop.v.i self.mercymod
pushglb.v global.batmusic
call.i caster_resume(argc=1)
popz.v
pushi.e -1
pop.v.i self.part
pushi.e 512
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shadow
pushi.e 0
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.level
pushi.e 5
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.shadow_max
pushi.e 0
pop.v.i self.timer_on

:[170]
b [174]

:[171]
push.i -999999
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.timer_on
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y
pushi.e 46
pop.v.i 744.sprite_index
pushi.e 1
pop.v.i 744.movement
pushi.e 518
pushenv [173]

:[172]
pushi.e 20
pop.v.i self.a_type
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[173]
popenv [172]

:[174]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
push.v self.part
pushi.e 1
add.i.v
pop.v.v self.part
push.v self.hit_try
pushi.e 4
cmp.i.v LT
bf [177]

:[175]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [177]

:[176]
push.s "obj_sansb_954"@23954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[177]
push.v self.hit_try
pushi.e 4
cmp.i.v GTE
bf [180]

:[178]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [180]

:[179]
push.s "obj_sansb_956"@23956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[180]
push.v self.hit_try
pushi.e 8
cmp.i.v GTE
bf [183]

:[181]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [183]

:[182]
push.s "obj_sansb_958"@23958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[183]
push.v self.hit_try
pushi.e 13
cmp.i.v GTE
bf [186]

:[184]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [186]

:[185]
push.s "obj_sansb_960"@23960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[186]
pushglb.v global.km
pushi.e 0
cmp.i.v GT
bf [188]

:[187]
push.s "obj_sansb_962"@23962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[188]
pushglb.v global.km
pushi.e 10
cmp.i.v GTE
bf [190]

:[189]
push.s "obj_sansb_963"@23964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[190]
pushglb.v global.km
pushi.e 20
cmp.i.v GTE
bf [192]

:[191]
push.s "obj_sansb_964"@23966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[192]
pushglb.v global.km
pushi.e 30
cmp.i.v GTE
bf [194]

:[193]
push.s "obj_sansb_965"@23968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[194]
push.v self.hit_try
pushi.e 15
cmp.i.v EQ
bf [197]

:[195]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [197]

:[196]
push.s "obj_sansb_969"@23970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[197]
push.v self.hit_try
pushi.e 19
cmp.i.v GTE
bf [200]

:[198]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [200]

:[199]
push.s "obj_sansb_971"@23972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[200]
push.v self.hit_try
pushi.e 20
cmp.i.v GTE
bf [203]

:[201]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [203]

:[202]
push.s "obj_sansb_973"@23974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[203]
push.v self.hit_try
pushi.e 21
cmp.i.v GTE
bf [206]

:[204]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [206]

:[205]
push.s "obj_sansb_975"@23976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[206]
push.v self.hit_try
pushi.e 22
cmp.i.v GTE
bf [209]

:[207]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [209]

:[208]
push.s "obj_sansb_977"@23978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[209]
pushi.e 1
pop.v.i self.attacked

:[210]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [212]

:[211]
pushi.e 0
pop.v.i 744.speed
push.s "obj_sansb_985"@23980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[212]
pushi.e -1
pop.v.i self.whatiheard

:[213]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [224]

:[214]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [224]

:[215]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [224]

:[216]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [223]

:[217]
pushi.e 0
pop.v.i global.msc
push.v self.hit_try
pushi.e 0
cmp.i.v GT
bf [219]

:[218]
push.s "obj_sansb_1013"@23982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_1014"@23984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [220]

:[219]
push.s "obj_sansb_1018"@23986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[220]
pushi.e 3
pop.v.i 784.halt
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [222]

:[221]
pushi.e 0
pop.v.i self.halt

:[222]
popenv [221]
pushi.e 9
pop.v.i self.whatiheard

:[223]
pushi.e 1
pop.v.i global.heard

:[224]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [228]

:[225]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [228]

:[226]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [228]

:[227]
pushi.e 1
pop.v.i self.mercy_death

:[228]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [230]

:[229]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [231]

:[230]
push.e 0

:[231]
bf [234]

:[232]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [234]

:[233]
pushi.e 1
pop.v.i self.mercy_death

:[234]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [236]

:[235]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [237]

:[236]
push.e 0

:[237]
bf [241]

:[238]
pushi.e 784
pushenv [240]

:[239]
call.i instance_destroy(argc=0)
popz.v

:[240]
popenv [239]
pushi.e 99
pop.v.i global.mnfight
pushi.e 99
pop.v.i global.myfight
pushi.e 0
pop.v.i 744.visible
pushi.e 5
pop.v.i global.sp

:[241]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [243]

:[242]
push.v self.skip
pushi.e 1
cmp.i.v EQ
b [244]

:[243]
push.e 0

:[244]
bf [250]

:[245]
pushi.e 99
pop.v.i global.mnfight
pushi.e 99
pop.v.i global.myfight
push.d 0.95
conv.d.v
push.d 0.9
conv.d.v
pushglb.v global.batmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 5
pop.v.i global.sp
pushi.e 784
pushenv [247]

:[246]
call.i instance_destroy(argc=0)
popz.v

:[247]
popenv [246]
push.v self.mypart1
conv.v.i
pushenv [249]

:[248]
pushi.e 20
pop.v.i self.fac

:[249]
popenv [248]

:[250]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [256]

:[251]
pushi.e 0
pop.v.i global.msc
pushi.e 107
pop.v.i global.typer
push.s "obj_sansb_1079"@23988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_1080"@23990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_1081"@23992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.intro
pushi.e 1
cmp.i.v EQ
bf [253]

:[252]
push.s "obj_sansb_1084"@23993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_1085"@23995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[253]
push.v self.intro
pushi.e 2
cmp.i.v GTE
bf [255]

:[254]
push.s "obj_sansb_1089"@23997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[255]
pushi.e 3
pop.v.i self.con
push.v self.y
push.v self.x
pushi.e 120
add.i.v
call.i scr_blcon_x(argc=2)
popz.v

:[256]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [258]

:[257]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [259]

:[258]
push.e 0

:[259]
bf [262]

:[260]
pushi.e 5
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.intro
pushi.e 1
cmp.i.v GTE
bf [262]

:[261]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[262]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [267]

:[263]
push.v self.birdnoise
call.i caster_stop(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1084
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.blk
pushi.e 999
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e -9999
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 999
pop.v.i global.bmenuno
pushi.e 758
pushenv [265]

:[264]
pushi.e 1
pop.v.i self.instaborder

:[265]
popenv [264]
pushi.e -1
pop.v.i global.border
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 75
add.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 75
add.i.v
pop.v.v 744.y
pushi.e 7
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.intro
pushi.e 1
cmp.i.v GTE
bf [267]

:[266]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[267]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [272]

:[268]
pushi.e 5
pop.v.i global.faceemotion
pushi.e 1
pushi.e -5
pushi.e 271
pop.v.i [array]global.flag
pushi.e 1
pop.v.i 744.visible
push.v self.blk
conv.v.i
pushenv [270]

:[269]
call.i instance_destroy(argc=0)
popz.v

:[270]
popenv [269]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.normalfight
pushi.e -1
pop.v.i global.myfight
pushi.e 2
pop.v.i global.mnfight
pushi.e 9
pop.v.i self.con
pushi.e 1
pop.v.i 758.visible
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.intro
pushi.e 1
cmp.i.v GTE
bf [272]

:[271]
pushi.e 11
pop.v.i self.con
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[272]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [274]

:[273]
pushi.e 108
pop.v.i global.typer
push.s "obj_sansb_1152"@23999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 11
pop.v.i self.con
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 120
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[274]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [276]

:[275]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [277]

:[276]
push.e 0

:[277]
bf [281]

:[278]
pushi.e 518
pushenv [280]

:[279]
pushi.e 1
pop.v.i self.fac

:[280]
popenv [279]
pushi.e 12
pop.v.i self.con

:[281]
push.v self.p_cut
pushi.e 1
cmp.i.v EQ
bf [283]

:[282]
push.v self.cutsfx
call.i caster_stop(argc=1)
popz.v
push.d 1.4
conv.d.v
push.d 0.8
conv.d.v
push.v self.cutsfx
call.i caster_play(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.p_cut

:[283]
push.v self.p_power
pushi.e 1
cmp.i.v EQ
bf [292]

:[284]
pushi.e 0
pop.v.i self.dopower
pushglb.v global.osflavor
pushi.e 2
cmp.i.v EQ
bf [286]

:[285]
push.v self.hit_try
pushi.e 23
cmp.i.v GTE
b [287]

:[286]
push.e 0

:[287]
bf [289]

:[288]
pushi.e 1
pop.v.i self.dopower

:[289]
push.v self.dopower
pushi.e 0
cmp.i.v EQ
bf [291]

:[290]
push.v self.beam_up_sfx
call.i caster_stop(argc=1)
popz.v
push.d 1.2
conv.d.v
push.d 0.8
conv.d.v
push.v self.beam_up_sfx
call.i caster_play(argc=3)
popz.v

:[291]
pushi.e 0
pop.v.i self.p_power

:[292]
push.v self.p_beam
pushi.e 1
cmp.i.v EQ
bf [296]

:[293]
push.v self.beamsfx
call.i caster_stop(argc=1)
popz.v
push.d 1.2
conv.d.v
push.d 0.8
conv.d.v
push.v self.beamsfx
call.i caster_play(argc=3)
popz.v
pushglb.v global.osflavor
pushi.e 2
cmp.i.v NEQ
bf [295]

:[294]
push.v self.beamsfx_a
call.i caster_stop(argc=1)
popz.v

:[295]
push.d 1.2
conv.d.v
push.d 0.6
conv.d.v
push.v self.beamsfx_a
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.p_beam

:[296]
push.v self.timer_on
pushi.e 1
cmp.i.v EQ
bf [324]

:[297]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [324]

:[298]
push.v self.hit_try
pushi.e 15
cmp.i.v GTE
bf [300]

:[299]
push.v self.hit_try
pushi.e 23
cmp.i.v LT
b [301]

:[300]
push.e 0

:[301]
bf [303]

:[302]
pushi.e 511
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[303]
pushi.e 3
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.movement
pushi.e 0
pop.v.i self.timer_on
pushi.e 503
pushenv [305]

:[304]
call.i instance_destroy(argc=0)
popz.v

:[305]
popenv [304]
pushi.e 513
pushenv [307]

:[306]
call.i instance_destroy(argc=0)
popz.v

:[307]
popenv [306]
pushi.e 501
pushenv [309]

:[308]
call.i instance_destroy(argc=0)
popz.v

:[309]
popenv [308]
pushi.e 502
pushenv [311]

:[310]
call.i instance_destroy(argc=0)
popz.v

:[311]
popenv [310]
pushi.e 516
pushenv [313]

:[312]
call.i instance_destroy(argc=0)
popz.v

:[313]
popenv [312]
pushi.e 500
pushenv [315]

:[314]
call.i instance_destroy(argc=0)
popz.v

:[315]
popenv [314]
pushi.e 499
pushenv [317]

:[316]
call.i instance_destroy(argc=0)
popz.v

:[317]
popenv [316]
pushi.e 504
pushenv [319]

:[318]
call.i instance_destroy(argc=0)
popz.v

:[319]
popenv [318]
pushi.e 519
pushenv [321]

:[320]
call.i instance_destroy(argc=0)
popz.v

:[321]
popenv [320]
pushi.e 515
pushenv [323]

:[322]
call.i instance_destroy(argc=0)
popz.v

:[323]
popenv [322]

:[324]
push.v self.drama
pushi.e 1
cmp.i.v EQ
bf [328]

:[325]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [328]

:[326]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [328]

:[327]
push.s "music/chokedup.ogg"@2848
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.d_music
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
push.v self.d_music
call.i caster_loop(argc=3)
popz.v
pushi.e 2
pop.v.i self.drama

:[328]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [330]

:[329]
pushi.e 81
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [331]

:[330]
push.e 0

:[331]
bf [334]

:[332]
push.v self.hit_try
pushi.e 12
cmp.i.v LT
bf [334]

:[333]
pushi.e 12
pop.v.i self.hit_try
pushi.e 11
pop.v.i self.hit_reached

:[334]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [336]

:[335]
pushi.e 69
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [337]

:[336]
push.e 0

:[337]
bf [end]

:[338]
push.v self.hit_try
pushi.e 22
cmp.i.v LT
bf [end]

:[339]
pushi.e 22
pop.v.i self.hit_try
pushi.e 21
pop.v.i self.hit_reached

:[end]