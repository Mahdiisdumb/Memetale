.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.talked

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
bf [23]

:[13]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.talked

:[18]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.attacked
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[20]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [23]

:[21]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[22]
push.v 784.originalstring
call.i string_length(argc=1)
pop.v.v 784.stringpos

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
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

:[25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [31]

:[26]
push.v self.dmgwriter
conv.v.i
pushenv [28]

:[27]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[28]
popenv [27]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [30]

:[29]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.hurta
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [31]

:[30]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[31]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [35]

:[32]
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
pushenv [34]

:[33]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[34]
popenv [33]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[35]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [57]

:[36]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [57]

:[37]
push.v self.turns
pushi.e 5
cmp.i.v GTE
bf [40]

:[38]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.con

:[40]
push.v self.con
pushi.e 1
cmp.i.v NEQ
bf [54]

:[41]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 100
pop.v.i global.attacktype
b [44]

:[43]
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.tang

:[44]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 26
pop.v.i global.attacktype

:[46]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
pushi.e 27
pop.v.i global.attacktype

:[48]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [50]

:[49]
pushi.e 28
pop.v.i global.attacktype

:[50]
push.v self.turns
pushi.e 4
cmp.i.v GT
bf [52]

:[51]
pushi.e 29
pop.v.i global.attacktype

:[52]
pushi.e 415
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dark

:[54]
push.v self.mypart1
conv.v.i
pushenv [56]

:[55]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[56]
popenv [55]
push.s "obj_mettatonb_third_523"@17300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.attacked
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[57]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [71]

:[58]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [71]

:[59]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [71]

:[60]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [64]

:[61]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_third_545"@17302
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
pushenv [63]

:[62]
pushi.e 0
pop.v.i self.halt

:[63]
popenv [62]
pushi.e 9
pop.v.i self.whatiheard

:[64]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [70]

:[65]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_third_555"@17304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 424
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 2
pushi.e -5
pushi.e 424
pop.v.i [array]global.flag
push.s "obj_mettatonb_third_560"@17306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 40
pop.v.i self.con

:[67]
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
pushenv [69]

:[68]
pushi.e 0
pop.v.i self.halt

:[69]
popenv [68]

:[70]
pushi.e 1
pop.v.i global.heard

:[71]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [74]

:[72]
push.v self.flex
pushi.e 3
cmp.i.v EQ
bf [74]

:[73]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [75]

:[74]
push.e 0

:[75]
bf [78]

:[76]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e -4
pop.v.i self.vspeed
pushi.e -4
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[78]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [82]

:[79]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [82]

:[80]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [84]

:[83]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [88]

:[86]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 0
pop.v.i 744.shot
pushi.e 0
pop.v.i global.border
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
call.i SCR_BORDERSETUP(argc=0)
popz.v
push.d 1.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[90]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [92]

:[91]
pushi.e 1365
conv.i.v
pushi.e 260
conv.i.v
pushi.e 520
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.phone
pushi.e 336
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 20
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -2
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[92]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [94]

:[93]
pushi.e 0
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[94]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [96]

:[95]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 187
conv.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.y
push.v self.phone
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.shblcon
pushi.e 36
push.v self.shblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.shake
pushi.e 49
pop.v.i global.typer
push.s "obj_mettatonb_third_644"@17308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_645"@17310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_646"@17312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_647"@17314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_648"@17316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_649"@17318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_650"@17320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_651"@17322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_652"@17324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_653"@17326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_654"@17328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_655"@17330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.y
pushi.e 140
sub.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.x
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
popz.v
push.d 6.1
pop.v.d self.con

:[99]
push.v self.con
push.d 6.1
cmp.d.v EQ
bf [101]

:[100]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [102]

:[101]
push.e 0

:[102]
bf [106]

:[103]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [106]

:[104]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [106]

:[105]
push.v 784.originalstring
call.i string_length(argc=1)
pop.v.v 784.stringpos

:[106]
push.v self.con
push.d 6.1
cmp.d.v EQ
bf [108]

:[107]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
push.d 5.2
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 5
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.vspeed

:[111]
push.v self.con
push.d 6.2
cmp.d.v EQ
bf [115]

:[112]
pushi.e 7
pop.v.i self.con
push.v self.phone
conv.v.i
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e 1
pop.v.i 744.shot

:[115]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [117]

:[116]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [122]

:[119]
push.s "obj_mettatonb_third_688"@17332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 424
pop.v.i [array]global.flag
push.v self.shblcon
conv.v.i
pushenv [121]

:[120]
call.i instance_destroy(argc=0)
popz.v

:[121]
popenv [120]
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i self.shake
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight

:[122]
push.v self.con
pushi.e 6
cmp.i.v GT
bf [128]

:[123]
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.v self.shblcon
call.i instance_exists(argc=1)
conv.v.b
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
push.v self.shblcon
conv.v.i
push.v [stacktop]self.xstart
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.shblcon
conv.v.i
pop.v.v [stacktop]self.x
push.v self.shblcon
conv.v.i
push.v [stacktop]self.ystart
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.shblcon
conv.v.i
pop.v.v [stacktop]self.y

:[128]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [130]

:[129]
pushi.e -1
pop.v.i 744.movement
pushi.e 12
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[130]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [132]

:[131]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushi.e 743
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ctheart
pushi.e -999
pop.v.i 744.x
pushi.e -1
pop.v.i 744.movement
pushi.e 14
pop.v.i self.con

:[132]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [134]

:[133]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [137]

:[136]
pushi.e -1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_third_820"@17334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_821"@17336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 51
pop.v.i global.typer
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 41
pop.v.i self.con

:[137]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [139]

:[138]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.behind
push.s "obj_mettatonb_third_831"@17338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 51
pop.v.i global.typer
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 42
pop.v.i self.con

:[142]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [144]

:[143]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [145]

:[144]
push.e 0

:[145]
bf [147]

:[146]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 2
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.behind
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 43
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[147]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [149]

:[148]
push.s "obj_mettatonb_third_848"@17340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_849"@17342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_850"@17344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 51
pop.v.i global.typer
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 46
pop.v.i self.con
push.s "music/computer.ogg"@2835
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cc
push.d 0.8
pop.v.d self.pit

:[149]
push.v self.con
pushi.e 46
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
pushi.e 3
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.behind
push.d 0.1
push.v self.mypart1
conv.v.i
pop.v.d [stacktop]self.trueanim
push.v self.pit
push.d 0.6
conv.d.v
push.v self.cc
call.i caster_loop(argc=3)
pop.v.v self.cc
pushi.e 47
pop.v.i self.con

:[154]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [157]

:[155]
push.v self.pit
push.d 0.013
add.d.v
pop.v.v self.pit
push.v self.mypart1
conv.v.i
dup.i 0
push.v [stacktop]self.trueanim
push.d 0.04
add.d.v
pop.i.v [stacktop]self.trueanim
push.v self.pit
push.v self.cc
call.i caster_set_pitch(argc=2)
popz.v
push.v self.pit
push.d 2.8
cmp.d.v GT
bf [157]

:[156]
pushi.e 48
pop.v.i self.con

:[157]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [159]

:[158]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1087
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.wht
pushi.e 700
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 700
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.2
push.v self.wht
conv.v.i
pop.v.d [stacktop]self.image_alpha
pushi.e -9000
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 49
pop.v.i self.con

:[159]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [162]

:[160]
push.v self.wht
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.05
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.wht
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.98
cmp.d.v GT
bf [162]

:[161]
pushi.e 1
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.d 49.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[162]
push.v self.con
push.d 50.1
cmp.d.v EQ
bf [164]

:[163]
push.s "music/ohyes.ogg"@2717
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.oyea
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.oyea
call.i caster_play(argc=3)
popz.v
pushi.e 50
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[164]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [168]

:[165]
push.v self.mypart1
conv.v.i
pushenv [167]

:[166]
pushi.e 0
pop.v.i self.visible

:[167]
popenv [166]
pushi.e 406
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 52
pop.v.i self.con

:[168]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [173]

:[169]
push.v self.wht
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.05
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.wht
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.06
cmp.d.v LT
bf [173]

:[170]
push.v self.wht
conv.v.i
pushenv [172]

:[171]
call.i instance_destroy(argc=0)
popz.v

:[172]
popenv [171]
pushi.e 53
pop.v.i self.con

:[173]
push.v self.con_2
pushi.e 0
cmp.i.v GT
bf [175]

:[174]
pushi.e 11
pop.v.i global.turntimer

:[175]
push.v self.con_2
pushi.e 1
cmp.i.v EQ
bf [179]

:[176]
pushi.e 784
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_third_943"@17346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_944"@17348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 51
pop.v.i global.typer
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 2
pop.v.i self.con_2

:[179]
push.v self.con_2
pushi.e 2
cmp.i.v EQ
bf [181]

:[180]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [end]

:[183]
push.s "obj_mettatonb_third_952"@17349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -1
pop.v.i self.con_2
pushi.e 3
pop.v.i global.turntimer

:[end]