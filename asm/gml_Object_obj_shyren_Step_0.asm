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

:[15]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [22]

:[16]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [19]

:[17]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [19]

:[18]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
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

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [30]

:[25]
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
pushenv [27]

:[26]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[27]
popenv [26]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [29]

:[28]
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [30]

:[29]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[30]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [34]

:[31]
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
pushenv [33]

:[32]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[33]
popenv [32]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[34]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [74]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [74]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.encourage
pushi.e 5
cmp.i.v EQ
bf [38]

:[37]
pushi.e 6
pop.v.i self.encourage

:[38]
pushi.e 124
pop.v.i global.turntimer
pushi.e 25
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 2.4
mul.d.v
pop.v.v global.firingrate

:[40]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
pushglb.v global.firingrate
push.d 1.7
mul.d.v
pop.v.v global.firingrate

:[42]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [49]

:[43]
pushi.e 50
pop.v.i global.firingrate
pushglb.v global.turntimer
pushi.e 90
cmp.i.v LT
bf [45]

:[44]
pushi.e 90
pop.v.i global.turntimer

:[45]
push.v self.emotion
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 8
push.v self.encourage
push.d 1.5
div.d.v
sub.v.i
pop.v.v global.firingrate
pushi.e 2
pop.v.i self.emotion
pushi.e 124
pop.v.i global.turntimer

:[47]
pushi.e 691
conv.i.v
push.v self.y
pushi.e 62
add.i.v
push.v self.x
pushi.e 36
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype
push.v self.encourage
pushi.e 5
cmp.i.v GTE
bf [49]

:[48]
pushi.e 310
pop.v.i global.turntimer

:[49]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [51]

:[50]
push.s "obj_shyren_470"@25479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [53]

:[52]
push.s "obj_shyren_471"@25481
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [55]

:[54]
push.s "obj_shyren_472"@25483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [57]

:[56]
push.s "obj_shyren_473"@25485
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [59]

:[58]
push.s "obj_shyren_474"@25487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [61]

:[60]
push.s "obj_shyren_475"@25489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.encourage
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_shyren_476"@25491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.encourage
pushi.e 2
cmp.i.v EQ
bf [67]

:[64]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_shyren_479"@25493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [67]

:[66]
push.s "obj_shyren_480"@25495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.encourage
pushi.e 3
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_shyren_482"@25497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.v self.encourage
pushi.e 4
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_shyren_483"@25499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
push.v self.encourage
pushi.e 4
cmp.i.v GT
bf [73]

:[72]
push.s " "@18
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[73]
pushi.e 1
pop.v.i self.attacked

:[74]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [118]

:[75]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [118]

:[76]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [118]

:[77]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [85]

:[78]
pushi.e 0
pop.v.i global.msc
push.s "obj_shyren_502"@25501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.encourage
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_shyren_503"@25503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[80]
push.v self.encourage
pushi.e 1
cmp.i.v GT
bf [82]

:[81]
push.s "obj_shyren_504"@25505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
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
pushenv [84]

:[83]
pushi.e 0
pop.v.i self.halt

:[84]
popenv [83]
pushi.e 9
pop.v.i self.whatiheard

:[85]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [103]

:[86]
pushi.e 0
pop.v.i global.msc
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.d
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_shyren_514"@25507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_shyren_515"@25509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_shyren_516"@25511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
push.v self.encourage
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_shyren_517"@25513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shyren_518"@25515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[94]
push.v self.encourage
pushi.e 2
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_shyren_519"@25517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
push.v self.encourage
pushi.e 3
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_shyren_520"@25519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shyren_521"@25521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[98]
push.v self.encourage
pushi.e 4
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_shyren_522"@25523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shyren_523"@25525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shyren_524"@25527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[100]
push.v self.encourage
pushi.e 1
add.i.v
pop.v.v self.encourage
pushi.e 1
pop.v.i self.emotion
pushi.e -150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
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
pushenv [102]

:[101]
pushi.e 0
pop.v.i self.halt

:[102]
popenv [101]
pushi.e 140
pop.v.i self.mercymod

:[103]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [111]

:[104]
pushi.e 0
pop.v.i global.msc
push.s "obj_shyren_537"@25529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shyren_538"@25531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.creep
pushi.e 1
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_shyren_539"@25533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[106]
push.v self.encourage
pushi.e 1
cmp.i.v GT
bf [108]

:[107]
push.s "obj_shyren_540"@25535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shyren_541"@25537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[108]
pushi.e 1
pop.v.i self.creep
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
pushenv [110]

:[109]
pushi.e 0
pop.v.i self.halt

:[110]
popenv [109]

:[111]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [117]

:[112]
pushi.e 0
pop.v.i global.msc
push.s "obj_shyren_550"@25539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.encourage
pushi.e 1
cmp.i.v GT
bf [114]

:[113]
push.s "obj_shyren_551"@25541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[114]
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
pushenv [116]

:[115]
pushi.e 0
pop.v.i self.halt

:[116]
popenv [115]

:[117]
pushi.e 1
pop.v.i global.heard

:[118]
push.v self.encourage
pushi.e 6
cmp.i.v EQ
bf [125]

:[119]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v LT
bf [125]

:[120]
pushi.e 7
pop.v.i self.encourage
pushi.e 691
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [124]

:[121]
pushi.e 691
pushenv [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
popenv [122]

:[124]
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v

:[125]
push.v self.encourage
pushi.e 7
cmp.i.v EQ
bf [127]

:[126]
pushglb.v global.turntimer
pushi.e 18
cmp.i.v LT
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
pushi.e 0
pop.v.i global.border

:[130]
push.v self.encourage
pushi.e 7
cmp.i.v EQ
bf [132]

:[131]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LTE
b [133]

:[132]
push.e 0

:[133]
bf [137]

:[134]
pushi.e 2
pushi.e -5
pushi.e 81
pop.v.i [array]global.flag
pushi.e -1
pop.v.i global.turntimer
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.border
pushi.e 784
pushenv [136]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[136]
popenv [135]
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i 744.visible
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[137]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [141]

:[138]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [141]

:[139]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [141]

:[140]
call.i instance_destroy(argc=0)
popz.v

:[141]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [143]

:[142]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [144]

:[143]
push.e 0

:[144]
bf [end]

:[145]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[146]
call.i instance_destroy(argc=0)
popz.v

:[end]