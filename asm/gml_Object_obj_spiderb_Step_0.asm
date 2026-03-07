.localvar 0 arguments

:[0]
push.v self.itemuse
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 50
pop.v.i self.con
pushi.e 98
pop.v.i global.mnfight
pushi.e 98
pop.v.i global.myfight
pushi.e 2
pop.v.i self.itemuse

:[5]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [15]

:[6]
pushi.e 0
pop.v.i self.attacked
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[7]
pushi.e 364
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]

:[10]
push.v self.purpletime
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 358
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 358
conv.i.v
pushi.e 230
conv.i.v
pushi.e 650
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.o
push.v self.turnamt
push.v self.o
conv.v.i
pop.v.v [stacktop]self.signno

:[15]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [25]

:[16]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [19]

:[17]
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
bf [19]

:[18]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[19]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [22]

:[20]
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
bf [22]

:[21]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[22]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [25]

:[23]
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
bf [25]

:[24]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[25]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [28]

:[26]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 110
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

:[28]
push.v self.blconactive
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 0
pop.v.i self.blconactive
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

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
bf [42]

:[36]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterhp
push.v self.takedamage
sub.v.v
pop.i.v [array]global.monsterhp
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
pop.v.i [stacktop]self.hurt
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [42]

:[40]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
push.v self.con
pushi.e 95
cmp.i.v LT
bf [42]

:[41]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[42]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [46]

:[43]
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
pushenv [45]

:[44]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[45]
popenv [44]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[46]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [92]

:[47]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [86]

:[48]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.con
pushi.e 0
cmp.i.v GT
bf [50]

:[49]
push.v self.turnamt
pushi.e 20
cmp.i.v LT
b [51]

:[50]
push.e 0

:[51]
bf [70]

:[52]
pushi.e 180
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
pushi.e 353
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.atkdown
sub.v.v
pop.v.v self.idealdmg
push.v self.idealdmg
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.turnamt
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.type
pushi.e -1
push.v self.gen
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
push.v self.gen
conv.v.i
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 10
push.v self.gen
conv.v.i
pushi.e 2
pop.v.i [array]self.alarm
push.v self.gen
conv.v.i
pushenv [54]

:[53]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[54]
popenv [53]
push.v self.turnamt
pushi.e 4
cmp.i.v EQ
bt [57]

:[55]
push.v self.turnamt
pushi.e 9
cmp.i.v EQ
bt [57]

:[56]
push.v self.turnamt
pushi.e 15
cmp.i.v EQ
b [58]

:[57]
push.e 1

:[58]
bf [64]

:[59]
pushi.e 660
pop.v.i global.turntimer
push.v self.turnamt
pushi.e 4
cmp.i.v EQ
bf [61]

:[60]
pushi.e 620
pop.v.i global.turntimer

:[61]
push.v self.turnamt
pushi.e 15
cmp.i.v EQ
bf [63]

:[62]
pushi.e 700
pop.v.i global.turntimer

:[63]
pushi.e 351
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gege
pushi.e 1
push.v self.gege
conv.v.i
pop.v.i [stacktop]self.pattern
push.v self.idealdmg
push.v self.gege
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 30
push.v self.gen
conv.v.i
pushi.e 2
pop.v.i [array]self.alarm

:[64]
push.v self.turnamt
pushi.e 1
add.i.v
pop.v.v self.turnamt
push.v self.turnamt
pushi.e 99
cmp.i.v GT
bf [69]

:[65]
pushi.e 60
push.v self.gen
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 360
pop.v.i global.turntimer
pushi.e 22
pop.v.i global.border
pushi.e 3
pop.v.i 364.ttype
push.v self.turnamt
pushi.e 15
cmp.i.v EQ
bf [67]

:[66]
pushi.e 3
pop.v.i 364.yadd2

:[67]
push.v self.turnamt
pushi.e 16
cmp.i.v EQ
bf [69]

:[68]
pushi.e 4
pop.v.i 364.yadd2

:[69]
b [75]

:[70]
push.v self.turnamt
pushi.e 20
cmp.i.v LT
bf [74]

:[71]
push.v self.mypart1
conv.v.i
pushenv [73]

:[72]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[73]
popenv [72]
pushi.e 1
pop.v.i self.con
b [75]

:[74]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight

:[75]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [77]

:[76]
push.s "obj_spiderb_599"@26369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [79]

:[78]
push.s "obj_spiderb_600"@26371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [81]

:[80]
push.s "obj_spiderb_601"@26373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [83]

:[82]
push.s "obj_spiderb_602"@26375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [85]

:[84]
push.s "obj_spiderb_603"@26377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[85]
pushi.e 1
pop.v.i self.attacked

:[86]
push.v self.criticize
pushi.e 0
cmp.i.v GT
bf [88]

:[87]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [91]

:[90]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[91]
pushi.e 0
pop.v.i self.atkdown
pushi.e -1
pop.v.i self.whatiheard

:[92]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [155]

:[93]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [155]

:[94]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [155]

:[95]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [99]

:[96]
pushi.e 0
pop.v.i global.msc
push.s "obj_spiderb_636"@26379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
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
pushenv [98]

:[97]
pushi.e 0
pop.v.i self.halt

:[98]
popenv [97]
pushi.e 9
pop.v.i self.whatiheard

:[99]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [115]

:[100]
pushi.e 0
pop.v.i global.msc
push.s "obj_spiderb_646"@26381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.struggle
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_spiderb_647"@26383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[102]
push.v self.struggle
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_spiderb_648"@26385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[104]
push.v self.struggle
pushi.e 2
cmp.i.v EQ
bf [110]

:[105]
push.s "obj_spiderb_649"@26387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spiderb_650"@26389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 382
push.v [array]global.flag
pushglb.v global.gold
cmp.v.v LTE
bf [107]

:[106]
pushi.e -5
pushi.e 382
push.v [array]global.flag
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pushi.e -5
pushi.e 382
pop.v.v [array]global.flag
b [108]

:[107]
pushglb.v global.gold
pushi.e -5
pushi.e 382
pop.v.v [array]global.flag

:[108]
pushi.e -5
pushi.e 382
push.v [array]global.flag
pushi.e 1
cmp.i.v LTE
bf [110]

:[109]
pushi.e 1
pushi.e -5
pushi.e 382
pop.v.i [array]global.flag

:[110]
push.v self.con
pushi.e 50
cmp.i.v GT
bf [112]

:[111]
push.s "obj_spiderb_656"@26390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[112]
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
pushenv [114]

:[113]
pushi.e 0
pop.v.i self.halt

:[114]
popenv [113]
push.v self.struggle
pushi.e 1
add.i.v
pop.v.v self.struggle

:[115]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [154]

:[116]
pushi.e 0
pop.v.i global.msc
push.v self.con
pushi.e 50
cmp.i.v LT
bf [150]

:[117]
pushglb.v global.gold
pushi.e -5
pushi.e 382
push.v [array]global.flag
cmp.v.v GTE
bf [129]

:[118]
pushi.e -5
pushi.e 382
push.v [array]global.flag
call.i string(argc=1)
push.s "obj_spiderb_678"@26392
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v global.gold
pushi.e -5
pushi.e 382
push.v [array]global.flag
sub.v.v
pop.v.v global.gold
pushi.e -5
pushi.e 383
dup.i 1
push.v [array]global.flag
pushi.e -5
pushi.e 382
push.v [array]global.flag
add.v.v
pop.i.v [array]global.flag
push.v self.bribes
pushi.e 1
add.i.v
pop.v.v self.bribes
push.v self.bribes
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 30
add.i.v
pop.i.v [array]global.flag

:[120]
push.v self.bribes
pushi.e 2
cmp.i.v EQ
bf [122]

:[121]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 40
add.i.v
pop.i.v [array]global.flag

:[122]
push.v self.bribes
pushi.e 3
cmp.i.v EQ
bf [124]

:[123]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 70
add.i.v
pop.i.v [array]global.flag

:[124]
push.v self.bribes
pushi.e 4
cmp.i.v EQ
bf [126]

:[125]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 50
add.i.v
pop.i.v [array]global.flag

:[126]
push.v self.bribes
pushi.e 4
cmp.i.v GT
bf [128]

:[127]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 300
add.i.v
pop.i.v [array]global.flag

:[128]
pushi.e 2
pop.v.i self.atkdown
b [139]

:[129]
push.s "obj_spiderb_693"@26394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.bribes
pushi.e 0
cmp.i.v EQ
bf [131]

:[130]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 5
sub.i.v
pop.i.v [array]global.flag

:[131]
push.v self.bribes
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 5
sub.i.v
pop.i.v [array]global.flag

:[133]
push.v self.bribes
pushi.e 2
cmp.i.v EQ
bf [135]

:[134]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 5
sub.i.v
pop.i.v [array]global.flag

:[135]
push.v self.bribes
pushi.e 2
cmp.i.v GT
bf [137]

:[136]
pushi.e -5
pushi.e 382
dup.i 1
push.v [array]global.flag
pushi.e 5
sub.i.v
pop.i.v [array]global.flag

:[137]
pushi.e -5
pushi.e 382
push.v [array]global.flag
pushi.e 10
conv.i.d
div.d.v
call.i ceil(argc=1)
pushi.e -5
pushi.e 382
pop.v.v [array]global.flag
pushi.e -5
pushi.e 382
push.v [array]global.flag
pushi.e 1
cmp.i.v LTE
bf [139]

:[138]
pushi.e 1
pushi.e -5
pushi.e 382
pop.v.i [array]global.flag

:[139]
push.v self.bribes
pushi.e 0
cmp.i.v GT
bf [141]

:[140]
pushglb.v global.gold
pushi.e 0
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
push.s "obj_spiderb_710"@26396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[144]
pushglb.v global.gold
pushi.e 0
cmp.i.v EQ
bf [146]

:[145]
push.v self.bribes
pushi.e 0
cmp.i.v EQ
b [147]

:[146]
push.e 0

:[147]
bf [149]

:[148]
push.s "obj_spiderb_714"@26398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spiderb_715"@26400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 10
pushi.e -5
pushi.e 382
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.bribes
pushi.e 2
pop.v.i self.atkdown

:[149]
b [151]

:[150]
push.s "obj_spiderb_722"@26402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[151]
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
pushenv [153]

:[152]
pushi.e 0
pop.v.i self.halt

:[153]
popenv [152]

:[154]
pushi.e 1
pop.v.i global.heard

:[155]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [159]

:[156]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [159]

:[157]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [159]

:[158]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[159]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [161]

:[160]
pushi.e 1
pop.v.i self.purpletime
push.s "obj_spiderb_762"@26404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 3
pop.v.i self.con

:[161]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [163]

:[162]
pushi.e 10
pop.v.i global.turntimer

:[163]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [165]

:[164]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [166]

:[165]
push.e 0

:[166]
bf [168]

:[167]
push.s "obj_spiderb_774"@26406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -1
pop.v.i global.myfight
pushi.e 3
pop.v.i global.mnfight
pushi.e 20
pop.v.i global.turntimer
pushi.e 4
pop.v.i self.con

:[168]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [172]

:[169]
push.s "obj_spiderb_783"@26408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spiderb_784"@26410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.itemuse
pushi.e 0
cmp.i.v GT
bf [171]

:[170]
push.s "obj_spiderb_787"@26412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spiderb_788"@26414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_spiderb_789"@26416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[171]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 51
pop.v.i self.con

:[172]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [174]

:[173]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [175]

:[174]
push.e 0

:[175]
bf [177]

:[176]
pushi.e 359
conv.i.v
pushi.e 230
conv.i.v
pushi.e 720
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 52
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[177]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [192]

:[178]
push.s "obj_spiderb_805"@26418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spiderb_806"@26420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_spiderb_807"@26422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [181]

:[179]
push.s "obj_spiderb_811"@26424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [181]

:[180]
push.s "obj_spiderb_814"@26426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[181]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [183]

:[182]
push.s "obj_spiderb_819"@26428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[183]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 20
cmp.i.v GT
bf [185]

:[184]
push.s "obj_spiderb_823"@26430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[185]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 50
cmp.i.v GT
bf [187]

:[186]
push.s "obj_spiderb_827"@26432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[187]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_spiderb_832"@26434
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_spiderb_833"@26436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[189]
push.s "obj_spiderb_836"@26438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_spiderb_837"@26440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_spiderb_838"@26442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_spiderb_839"@26444
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
push.s "obj_spiderb_842"@26446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_spiderb_843"@26448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[191]
push.s "obj_spiderb_846"@26450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_spiderb_847"@26452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_spiderb_848"@26454
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_spiderb_849"@26456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_spiderb_850"@26458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_spiderb_851"@26460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.talktime
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 54
pop.v.i self.con

:[192]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [194]

:[193]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [195]

:[194]
push.e 0

:[195]
bf [199]

:[196]
push.s "obj_spiderb_859"@26462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 359
pushenv [198]

:[197]
pushi.e 2
pop.v.i self.con

:[198]
popenv [197]
pushi.e 20
pop.v.i self.turnamt
pushi.e -1
pop.v.i global.myfight
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.turntimer
pushi.e 9999
pop.v.i self.mercymod
pushi.e -9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 55
pop.v.i self.con

:[199]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [201]

:[200]
pushi.e 360
conv.i.v
pushi.e 310
conv.i.v
pushi.e 660
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 97
pop.v.i self.con

:[201]
push.v self.con
pushi.e 97
cmp.i.v EQ
bf [203]

:[202]
pushi.e 360
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [204]

:[203]
push.e 0

:[204]
bf [206]

:[205]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
call.i instance_destroy(argc=0)
popz.v

:[206]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [212]

:[207]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [212]

:[208]
push.v self.blconwd
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v EQ
bf [211]

:[209]
pushglb.v global.typer
pushi.e 10
cmp.i.v NEQ
bf [211]

:[210]
push.v self.blconwd
conv.v.i
push.v [stacktop]self.originalstring
call.i string_length(argc=1)
push.v self.blconwd
conv.v.i
pop.v.v [stacktop]self.stringpos

:[211]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[212]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[213]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [215]

:[214]
push.v self.turnamt
pushi.e 1
add.i.v
pop.v.v self.turnamt

:[215]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [217]

:[216]
push.v self.turnamt
pushi.e 0
cmp.i.v GT
b [218]

:[217]
push.e 0

:[218]
bf [end]

:[219]
push.v self.turnamt
pushi.e 1
sub.i.v
pop.v.v self.turnamt

:[end]