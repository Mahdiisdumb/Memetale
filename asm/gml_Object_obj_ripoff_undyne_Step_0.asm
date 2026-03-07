.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
push.v self.attacked
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [28]

:[4]
push.v self.hitno
pushi.e 0
cmp.i.v GT
bf [12]

:[5]
push.v self.hitno
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.rating
pushi.e 1
add.i.v
pop.v.v self.rating

:[7]
push.v self.hitno
pushi.e 1
cmp.i.v GT
bf [9]

:[8]
push.v self.rating
pushi.e 2
add.i.v
pop.v.v self.rating

:[9]
push.v self.berserk
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.rating
pushi.e 1
sub.i.v
pop.v.v self.rating

:[11]
b [22]

:[12]
push.v self.rating
pushi.e 10
cmp.i.v GTE
bf [14]

:[13]
push.v self.lesson
pushi.e 5
cmp.i.v GT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.rating
pushi.e 2
sub.i.v
pop.v.v self.rating
b [19]

:[17]
push.v self.rating
pushi.e 8
cmp.i.v GT
bf [19]

:[18]
push.v self.rating
pushi.e 1
sub.i.v
pop.v.v self.rating

:[19]
push.v self.berserk
pushi.e 1
cmp.i.v EQ
bf [22]

:[20]
push.v self.rating
pushi.e 6
cmp.i.v GT
bf [22]

:[21]
push.v self.rating
pushi.e 1
sub.i.v
pop.v.v self.rating

:[22]
pushi.e 0
pop.v.i self.attacked
pushi.e 5
pop.v.i global.mnfight
pushglb.v global.border
pushi.e 12
cmp.i.v EQ
bf [24]

:[23]
pushi.e 13
pop.v.i global.border

:[24]
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 10
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 263
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[25]
pushi.e 263
pushenv [27]

:[26]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[27]
popenv [26]

:[28]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.attacked

:[30]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [40]

:[31]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [34]

:[32]
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
bf [34]

:[33]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[34]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [37]

:[35]
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
bf [37]

:[36]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[37]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [40]

:[38]
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
bf [40]

:[39]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[40]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [43]

:[41]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
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

:[43]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [50]

:[44]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [47]

:[45]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [47]

:[46]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[50]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
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

:[52]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [58]

:[53]
push.v self.dmgwriter
conv.v.i
pushenv [55]

:[54]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[55]
popenv [54]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [57]

:[56]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [58]

:[57]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[58]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [62]

:[59]
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
pushenv [61]

:[60]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[61]
popenv [60]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[62]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [82]

:[63]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [79]

:[64]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 180
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [66]

:[65]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[66]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[68]
pushi.e 0
pop.v.i self.hitno
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.xx
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.yy
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [76]

:[69]
pushi.e 264
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
pushi.e -50
pop.v.i self.lesson

:[71]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
pushi.e -51
pop.v.i self.lesson

:[73]
push.v self.lesson
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.lesson
push.v self.rating
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.rating
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.gen
conv.v.i
pushenv [75]

:[74]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[75]
popenv [74]

:[76]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i self.turns

:[78]
push.s "obj_ripoff_undyne_563"@23497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.attacked

:[79]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [81]

:[80]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[81]
pushi.e -1
pop.v.i self.whatiheard

:[82]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [110]

:[83]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [110]

:[84]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [110]

:[85]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [91]

:[86]
pushi.e 0
pop.v.i global.msc
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_undyne_597"@23499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_undyne_598"@23501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercyno
pushi.e 3
cmp.i.v GTE
bf [88]

:[87]
push.s "obj_ripoff_undyne_601"@23503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight

:[88]
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
pushenv [90]

:[89]
pushi.e 0
pop.v.i self.halt

:[90]
popenv [89]
pushi.e 9
pop.v.i self.whatiheard

:[91]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [97]

:[92]
pushi.e 0
pop.v.i global.msc
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_undyne_614"@23505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_undyne_615"@23507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercyno
pushi.e 3
cmp.i.v GTE
bf [94]

:[93]
push.s "obj_ripoff_undyne_618"@23508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight

:[94]
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
pushenv [96]

:[95]
pushi.e 0
pop.v.i self.halt

:[96]
popenv [95]

:[97]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [103]

:[98]
pushi.e 0
pop.v.i global.msc
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_undyne_632"@23510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_undyne_633"@23512
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercyno
pushi.e 3
cmp.i.v GTE
bf [100]

:[99]
push.s "obj_ripoff_undyne_636"@23513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight

:[100]
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

:[103]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [109]

:[104]
pushi.e 0
pop.v.i global.msc
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_undyne_649"@23515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_undyne_650"@23517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercyno
pushi.e 3
cmp.i.v GTE
bf [106]

:[105]
push.s "obj_ripoff_undyne_653"@23519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight

:[106]
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
pushenv [108]

:[107]
pushi.e 0
pop.v.i self.halt

:[108]
popenv [107]

:[109]
pushi.e 1
pop.v.i global.heard

:[110]
push.v self.greenlock
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v GT
b [113]

:[112]
push.e 0

:[113]
bf [118]

:[114]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [116]

:[115]
push.v 760.y
pushi.e 34
add.i.v
pop.v.v 744.y
b [117]

:[116]
pushi.e 0
pop.v.i self.greenlock

:[117]
b [119]

:[118]
pushi.e 0
pop.v.i self.greenlock

:[119]
push.v self.darkify
pushi.e 1
cmp.i.v EQ
bf [124]

:[120]
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.5
cmp.d.v LT
bf [122]

:[121]
push.v self.pseudodarker
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
add.d.v
pop.i.v [stacktop]self.image_alpha
b [123]

:[122]
pushi.e 2
pop.v.i self.darkify

:[123]
pushi.e 1
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
sub.v.i
pop.v.v 758.image_alpha

:[124]
push.v self.darkify
pushi.e 3
cmp.i.v EQ
bf [131]

:[125]
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [127]

:[126]
push.v self.pseudodarker
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[127]
pushi.e 1
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
sub.v.i
pop.v.v 758.image_alpha
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [131]

:[128]
pushi.e 0
pop.v.i self.darkify
push.v self.pseudodarker
conv.v.i
pushenv [130]

:[129]
call.i instance_destroy(argc=0)
popz.v

:[130]
popenv [129]

:[131]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [134]

:[132]
push.v self.darkify
pushi.e 0
cmp.i.v GT
bf [134]

:[133]
push.v self.darkify
pushi.e 3
cmp.i.v NEQ
b [135]

:[134]
push.e 0

:[135]
bf [137]

:[136]
pushi.e 3
pop.v.i self.darkify

:[137]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [139]

:[138]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
pushi.e 3
pop.v.i 744.movement

:[142]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [146]

:[143]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [146]

:[144]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [146]

:[145]
call.i instance_destroy(argc=0)
popz.v

:[146]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [148]

:[147]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [149]

:[148]
push.e 0

:[149]
bf [152]

:[150]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [152]

:[151]
call.i instance_destroy(argc=0)
popz.v

:[152]
pushglb.v global.mnfight
pushi.e 5
cmp.i.v EQ
bf [154]

:[153]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [155]

:[154]
push.e 0

:[155]
bf [end]

:[156]
push.v self.saved
pushi.e 1
cmp.i.v EQ
bf [162]

:[157]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [159]

:[158]
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[159]
pushi.e 1668
pushenv [161]

:[160]
call.i instance_destroy(argc=0)
popz.v

:[161]
popenv [160]
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.saved
pushi.e 3
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[162]
push.v self.saved
pushi.e 3
cmp.i.v EQ
bf [164]

:[163]
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 39
pop.v.i global.typer
pushi.e 1
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.noanim
pushi.e 0
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.spearalpha
push.s "obj_ripoff_undyne_748"@23521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 4
pop.v.i self.saved

:[164]
push.v self.saved
pushi.e 4
cmp.i.v EQ
bf [166]

:[165]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [167]

:[166]
push.e 0

:[167]
bf [169]

:[168]
pushi.e 558
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.saved
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 34
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[169]
push.v self.saved
pushi.e 6
cmp.i.v EQ
bf [end]

:[170]
pushi.e 256
pop.v.i global.battlegroup
pushi.e 1
pushi.e -5
pushi.e 505
pop.v.i [array]global.flag
call.i room_restart(argc=0)
popz.v

:[end]