.localvar 0 arguments

:[0]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 60
sub.i.v
pop.v.v self.x
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i global.hope

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
bf [30]

:[13]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [30]

:[14]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.specialnormal
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 16
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
b [17]

:[16]
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[17]
push.v self.mypart1
conv.v.i
pushenv [21]

:[18]
push.v self.specialnormal
pushi.e 0
cmp.i.v EQ
bf [21]

:[19]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.s_s
push.v self.aligncon
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.aligncon

:[21]
popenv [18]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bt [24]

:[22]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bt [24]

:[23]
push.v self.turns
pushi.e 10
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [29]

:[26]
push.v self.mypart1
conv.v.i
pushenv [28]

:[27]
pushi.e 1
pop.v.i self.s_s

:[28]
popenv [27]

:[29]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[30]
push.v self.say
pushi.e 1
cmp.i.v EQ
bf [33]

:[31]
push.v self.blconwd
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.say

:[33]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
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

:[35]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [41]

:[36]
push.v self.dmgwriter
conv.v.i
pushenv [38]

:[37]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[38]
popenv [37]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [40]

:[39]
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
b [41]

:[40]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[41]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [45]

:[42]
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
pushenv [44]

:[43]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[44]
popenv [43]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[45]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [139]

:[46]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [136]

:[47]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[49]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[51]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.specialnormal
pushi.e 1
cmp.i.v EQ
bf [57]

:[52]
pushi.e 140
pop.v.i global.turntimer
pushi.e 6
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e 8
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushglb.v global.hope
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 6
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk

:[54]
pushglb.v global.hope
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
pushi.e 8
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk

:[56]
pushi.e 7
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype
b [98]

:[57]
push.v self.turns
pushi.e 8
cmp.i.v GTE
bf [59]

:[58]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.h_mode

:[59]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bt [62]

:[60]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bt [62]

:[61]
push.v self.turns
pushi.e 9
cmp.i.v EQ
b [63]

:[62]
push.e 1

:[63]
bf [67]

:[64]
push.v self.mypart1
conv.v.i
pushenv [66]

:[65]
pushi.e 1
pop.v.i self.starcon
pushi.e 0
pop.v.i self.type

:[66]
popenv [65]

:[67]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bt [71]

:[68]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bt [71]

:[69]
push.v self.turns
pushi.e 8
cmp.i.v EQ
bt [71]

:[70]
push.v self.turns
pushi.e 12
cmp.i.v EQ
b [72]

:[71]
push.e 1

:[72]
bf [76]

:[73]
push.v self.mypart1
conv.v.i
pushenv [75]

:[74]
pushi.e 1
pop.v.i self.starcon
pushi.e 1
pop.v.i self.type

:[75]
popenv [74]

:[76]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bt [79]

:[77]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bt [79]

:[78]
push.v self.turns
pushi.e 10
cmp.i.v EQ
b [80]

:[79]
push.e 1

:[80]
bf [84]

:[81]
push.v self.mypart1
conv.v.i
pushenv [83]

:[82]
pushi.e 1
pop.v.i self.bladecon
pushi.e 1
pop.v.i self.type

:[83]
popenv [82]

:[84]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bt [87]

:[85]
push.v self.turns
pushi.e 7
cmp.i.v EQ
bt [87]

:[86]
push.v self.turns
pushi.e 11
cmp.i.v EQ
b [88]

:[87]
push.e 1

:[88]
bf [92]

:[89]
push.v self.mypart1
conv.v.i
pushenv [91]

:[90]
pushi.e 1
pop.v.i self.guncon
pushi.e 1
pop.v.i self.type

:[91]
popenv [90]

:[92]
push.v self.turns
pushi.e 13
cmp.i.v EQ
bf [96]

:[93]
push.v self.mypart1
conv.v.i
pushenv [95]

:[94]
pushi.e 1
pop.v.i self.gonercon
pushi.e 1
pop.v.i self.type
pushi.e 2
pop.v.i global.hope

:[95]
popenv [94]

:[96]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e -5
pushi.e 504
push.v [array]global.flag
push.v self.turns
cmp.v.v LT
bf [98]

:[97]
push.v self.turns
pushi.e -5
pushi.e 504
pop.v.v [array]global.flag

:[98]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bt [100]

:[99]
push.v self.turns
pushi.e 4
cmp.i.v EQ
b [101]

:[100]
push.e 1

:[101]
bf [103]

:[102]
push.s "obj_asrielb_541"@10204
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[103]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bt [105]

:[104]
push.v self.turns
pushi.e 3
cmp.i.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [108]

:[107]
push.s "obj_asrielb_542"@10206
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[108]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bt [110]

:[109]
push.v self.turns
pushi.e 6
cmp.i.v EQ
b [111]

:[110]
push.e 1

:[111]
bf [113]

:[112]
push.s "obj_asrielb_543"@10208
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[113]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bt [115]

:[114]
push.v self.turns
pushi.e 7
cmp.i.v EQ
b [116]

:[115]
push.e 1

:[116]
bf [118]

:[117]
push.s "obj_asrielb_544"@10210
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[118]
push.v self.turns
pushi.e 9
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_asrielb_545"@10212
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[120]
push.v self.turns
pushi.e 10
cmp.i.v EQ
bf [122]

:[121]
push.s "obj_asrielb_546"@10214
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[122]
push.v self.turns
pushi.e 8
cmp.i.v EQ
bt [124]

:[123]
push.v self.turns
pushi.e 12
cmp.i.v EQ
b [125]

:[124]
push.e 1

:[125]
bf [127]

:[126]
push.s "obj_asrielb_547"@10216
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[127]
push.v self.turns
pushi.e 11
cmp.i.v EQ
bf [129]

:[128]
push.s "obj_asrielb_548"@10218
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[129]
push.v self.turns
pushi.e 13
cmp.i.v EQ
bf [131]

:[130]
push.s "obj_asrielb_549"@10220
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[131]
push.v self.turns
pushi.e 14
cmp.i.v EQ
bf [133]

:[132]
push.s "obj_asrielb_550"@10222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[133]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.specialnormal
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
push.s "obj_asrielb_551"@10224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[135]
pushi.e 1
pop.v.i self.attacked

:[136]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [138]

:[137]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[138]
pushi.e -1
pop.v.i self.whatiheard

:[139]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [171]

:[140]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [171]

:[141]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [171]

:[142]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [150]

:[143]
pushi.e 0
pop.v.i global.msc
push.v self.mypart1
conv.v.i
push.v [stacktop]self.specialnormal
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
push.s "obj_asrielb_585"@10226
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[145]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.specialnormal
pushi.e 0
cmp.i.v EQ
bf [147]

:[146]
push.s "obj_asrielb_587"@10228
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[147]
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
pushenv [149]

:[148]
pushi.e 0
pop.v.i self.halt

:[149]
popenv [148]
pushi.e 9
pop.v.i self.whatiheard

:[150]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [158]

:[151]
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.hope
push.s "obj_asrielb_597"@10230
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.hoped
pushi.e 0
cmp.i.v GT
bf [153]

:[152]
push.s "obj_asrielb_598"@10232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[153]
push.v self.hoped
pushi.e 1
add.i.v
pop.v.v self.hoped
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [155]

:[154]
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[155]
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
pushenv [157]

:[156]
pushi.e 0
pop.v.i self.halt

:[157]
popenv [156]

:[158]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [170]

:[159]
pushi.e 0
pop.v.i global.msc
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [161]

:[160]
pushi.e 55
conv.i.v
call.i scr_itemget(argc=1)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [160]

:[161]
popz.i
push.s "obj_asrielb_614"@10234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielb_615"@10236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.dreamed
pushi.e 0
cmp.i.v GT
bf [163]

:[162]
push.s "obj_asrielb_618"@10238
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[163]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [167]

:[164]
push.v global.hp
pushi.e 4
add.i.v
pop.v.v global.hp
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v GT
bf [166]

:[165]
pushglb.v global.maxhp
pop.v.v global.hp

:[166]
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[167]
push.v self.dreamed
pushi.e 1
add.i.v
pop.v.v self.dreamed
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
pushenv [169]

:[168]
pushi.e 0
pop.v.i self.halt

:[169]
popenv [168]

:[170]
pushi.e 1
pop.v.i global.heard

:[171]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [175]

:[172]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [175]

:[173]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [177]

:[176]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
bf [181]

:[179]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [181]

:[180]
call.i instance_destroy(argc=0)
popz.v

:[181]
pushglb.v global.mnfight
pushi.e 5
cmp.i.v EQ
bf [end]

:[182]
push.v self.trcon
pushi.e 0
cmp.i.v EQ
bf [184]

:[183]
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
pushi.e 120
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.s "obj_asrielb_669"@10240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielb_670"@10242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielb_671"@10244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielb_672"@10246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asrielb_673"@10248
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 68
pop.v.i global.typer
pushi.e 86
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 1
pop.v.i self.trcon

:[184]
push.v self.trcon
pushi.e 1
cmp.i.v EQ
bf [200]

:[185]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [194]

:[186]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
push.d 0.75
conv.d.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[188]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [190]

:[189]
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[190]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [192]

:[191]
push.d 0.25
conv.d.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[192]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [194]

:[193]
pushi.e 0
conv.i.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[194]
push.v self.blconwd
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [200]

:[195]
pushi.e 570
pushenv [197]

:[196]
pushi.e 1
pop.v.i self.transform

:[197]
popenv [196]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/sfx/sfx_spellcast.ogg"@2798
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.bright
push.d 0.2
conv.d.v
push.d 0.24
conv.d.v
push.v self.bright
call.i caster_play(argc=3)
popz.v
push.d 0.3
conv.d.v
push.d 0.24
conv.d.v
push.v self.bright
call.i caster_play(argc=3)
popz.v
push.d 0.4
conv.d.v
push.d 0.24
conv.d.v
push.v self.bright
call.i caster_play(argc=3)
popz.v
push.d 0.5
conv.d.v
push.d 0.24
conv.d.v
push.v self.bright
call.i caster_play(argc=3)
popz.v
push.d 0.6
conv.d.v
push.d 0.24
conv.d.v
push.v self.bright
call.i caster_play(argc=3)
popz.v
push.d 0.65
conv.d.v
push.d 0.24
conv.d.v
push.v self.bright
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.shakeamt
pushi.e 2
pop.v.i self.trcon
pushi.e 67
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
push.v self.blcon
conv.v.i
pushenv [199]

:[198]
call.i instance_destroy(argc=0)
popz.v

:[199]
popenv [198]
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sw
pushi.e 1
push.v self.sw
conv.v.i
pop.v.i [stacktop]self.ex

:[200]
push.v self.trcon
pushi.e 2
cmp.i.v EQ
bf [204]

:[201]
push.v self.shakeamt
pushi.e 9
cmp.i.v LT
bf [203]

:[202]
push.v self.shakeamt
push.d 0.25
add.d.v
pop.v.v self.shakeamt

:[203]
pushi.e 0
push.v self.shakeamt
call.i random(argc=1)
add.v.i
push.v self.shakeamt
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
pushi.e 0
push.v self.shakeamt
call.i random(argc=1)
add.v.i
push.v self.shakeamt
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[204]
push.v self.trcon
pushi.e 3
cmp.i.v EQ
bf [206]

:[205]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 6
pop.v.i self.trcon
pushi.e 150
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[206]
push.v self.trcon
pushi.e 7
cmp.i.v EQ
bf [end]

:[207]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 256
pop.v.i global.battlegroup
call.i room_restart(argc=0)
popz.v

:[end]