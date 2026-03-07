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
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [38]

:[29]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [32]

:[30]
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
bf [32]

:[31]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[32]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [35]

:[33]
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
bf [35]

:[34]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[35]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [38]

:[36]
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
bf [38]

:[37]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[38]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [42]

:[39]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [42]

:[40]
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
push.v self.order
pushi.e -35
cmp.i.v EQ
bf [42]

:[41]
pushi.e 99
pop.v.i global.mnfight
pushi.e 4
pop.v.i global.bmenuno
pushi.e -400
pop.v.i 744.x
pushi.e -2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e -2
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 60
pop.v.i self.con

:[42]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [44]

:[43]
push.v self.uncancel
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [52]

:[46]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [49]

:[47]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [49]

:[48]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[52]
push.v self.uncancel
pushi.e 1
cmp.i.v EQ
bf [55]

:[53]
pushi.e 100
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.uncancel

:[55]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [62]

:[56]
pushi.e 0
pop.v.i self.tempdie
pushi.e 8
pop.v.i self.shudder
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v LT
bf [58]

:[57]
push.v self.died
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 16
pop.v.i self.shudder

:[61]
pushglb.v global.damagetimer
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[62]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [72]

:[63]
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
pushenv [65]

:[64]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[65]
popenv [64]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [67]

:[66]
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
b [72]

:[67]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
push.v self.died
pushi.e 0
cmp.i.v EQ
bf [71]

:[68]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
push.s "music/endingexcerpt1.ogg"@2659
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.deadmusic1
push.s "music/endingexcerpt2.ogg"@2660
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.deadmusic2
pushi.e 50
pop.v.i self.con
pushi.e 46
pop.v.i 744.sprite_index
pushi.e 268
pushenv [70]

:[69]
pushi.e 1
pop.v.i self.fade

:[70]
popenv [69]
pushi.e -40
pop.v.i self.order
pushi.e -40
pop.v.i self.lesson
pushi.e 1
pop.v.i self.died
pushi.e 99
pop.v.i global.mnfight

:[71]
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

:[72]
push.v self.greenlock
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v GT
b [75]

:[74]
push.e 0

:[75]
bf [80]

:[76]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [78]

:[77]
push.v 760.y
pushi.e 34
add.i.v
pop.v.v 744.y
b [79]

:[78]
pushi.e 0
pop.v.i self.greenlock

:[79]
b [81]

:[80]
pushi.e 0
pop.v.i self.greenlock

:[81]
push.v self.darkify
pushi.e 1
cmp.i.v EQ
bf [86]

:[82]
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.5
cmp.d.v LT
bf [84]

:[83]
push.v self.pseudodarker
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
add.d.v
pop.i.v [stacktop]self.image_alpha
b [85]

:[84]
pushi.e 2
pop.v.i self.darkify

:[85]
pushi.e 1
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
sub.v.i
pop.v.v 758.image_alpha

:[86]
push.v self.darkify
pushi.e 3
cmp.i.v EQ
bf [93]

:[87]
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [89]

:[88]
push.v self.pseudodarker
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[89]
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
bf [93]

:[90]
pushi.e 0
pop.v.i self.darkify
push.v self.pseudodarker
conv.v.i
pushenv [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
popenv [91]

:[93]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [97]

:[94]
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
pushenv [96]

:[95]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[96]
popenv [95]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[97]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [164]

:[98]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [164]

:[99]
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
pushi.e 200
pop.v.i global.turntimer
pushi.e 15
pop.v.i global.firingrate
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [103]

:[100]
pushi.e 264
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.gen
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
pushenv [102]

:[101]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[102]
popenv [101]
b [110]

:[103]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
bf [107]

:[104]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.ratingb
pushi.e 1
add.i.v
pop.v.v self.ratingb
push.v self.lesson
pushi.e 1
sub.i.v
pop.v.v self.lesson
push.v self.ratingb
pushi.e 9
cmp.i.v GT
bf [106]

:[105]
pushi.e 9
pop.v.i self.ratingb

:[106]
pushi.e 19
push.v self.ratingb
sub.v.i
pop.v.v global.firingrate
pushi.e 271
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
b [110]

:[107]
pushi.e 1
pop.v.i self.borderspec
push.v self.ratingb
pushi.e 1
add.i.v
pop.v.v self.ratingb
push.v self.lesson
pushi.e 1
sub.i.v
pop.v.v self.lesson
push.v self.ratingb
pushi.e 9
cmp.i.v GT
bf [109]

:[108]
pushi.e 9
pop.v.i self.ratingb

:[109]
pushi.e 23
push.v self.ratingb
sub.v.i
pop.v.v global.firingrate
pushi.e 270
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg

:[110]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v LT
bf [121]

:[111]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [113]

:[112]
push.s "obj_undyneboss_1085"@28907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[113]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [115]

:[114]
push.s "obj_undyneboss_1086"@28909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[115]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [117]

:[116]
push.s "obj_undyneboss_1087"@28911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[117]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [119]

:[118]
push.s "obj_undyneboss_1088"@28913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[119]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [121]

:[120]
push.s "obj_undyneboss_1089"@28915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[121]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [153]

:[122]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [124]

:[123]
push.s "obj_undyneboss_1094"@28917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[124]
push.v self.mycommand
pushi.e 10
cmp.i.v GTE
bf [126]

:[125]
push.s "obj_undyneboss_1095"@28918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[126]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [128]

:[127]
push.s "obj_undyneboss_1096"@28920
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[128]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [130]

:[129]
push.s "obj_undyneboss_1097"@28922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[130]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [132]

:[131]
push.s "obj_undyneboss_1098"@28924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[132]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [134]

:[133]
push.s "obj_undyneboss_1099"@28926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[134]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [136]

:[135]
push.s "obj_undyneboss_1100"@28928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[136]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [138]

:[137]
push.s "obj_undyneboss_1101"@28930
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[138]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [140]

:[139]
push.s "obj_undyneboss_1102"@28932
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[140]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [142]

:[141]
push.s "obj_undyneboss_1103"@28934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[142]
push.v self.order
pushi.e 22
cmp.i.v GT
bf [153]

:[143]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [145]

:[144]
push.s "obj_undyneboss_1107"@28936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[145]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [147]

:[146]
push.s "obj_undyneboss_1108"@28938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[147]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [149]

:[148]
push.s "obj_undyneboss_1109"@28940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[149]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [151]

:[150]
push.s "obj_undyneboss_1110"@28942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[151]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [153]

:[152]
push.s "obj_undyneboss_1111"@28944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[153]
push.v self.order
pushi.e -40
cmp.i.v EQ
bf [155]

:[154]
push.s "obj_undyneboss_1118"@28946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[155]
push.v self.order
pushi.e -39
cmp.i.v EQ
bf [157]

:[156]
push.s "obj_undyneboss_1119"@28948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[157]
push.v self.order
pushi.e -38
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_undyneboss_1120"@28950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[159]
push.v self.order
pushi.e -37
cmp.i.v EQ
bf [161]

:[160]
push.s "obj_undyneboss_1121"@28952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[161]
push.v self.order
pushi.e -36
cmp.i.v EQ
bf [163]

:[162]
push.s "obj_undyneboss_1122"@28953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[163]
pushi.e 1
pop.v.i self.attacked
push.v self.order
pushi.e 1
add.i.v
pop.v.v self.order
push.v self.lesson
pushi.e 1
add.i.v
pop.v.v self.lesson

:[164]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [167]

:[165]
push.v self.darkify
pushi.e 0
cmp.i.v GT
bf [167]

:[166]
push.v self.darkify
pushi.e 3
cmp.i.v NEQ
b [168]

:[167]
push.e 0

:[168]
bf [170]

:[169]
pushi.e 3
pop.v.i self.darkify

:[170]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [231]

:[171]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [231]

:[172]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [231]

:[173]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [177]

:[174]
pushi.e 0
pop.v.i global.msc
push.s "obj_undyneboss_1145"@28955
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
pushenv [176]

:[175]
pushi.e 0
pop.v.i self.halt

:[176]
popenv [175]

:[177]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [208]

:[178]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.chal_e
push.v self.rating
pushi.e 8
cmp.i.v EQ
bf [180]

:[179]
pushi.e 7
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[180]
push.v self.rating
pushi.e 9
cmp.i.v EQ
bf [182]

:[181]
pushi.e 8
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[182]
push.v self.rating
pushi.e 10
cmp.i.v EQ
bf [184]

:[183]
pushi.e 9
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[184]
push.v self.rating
pushi.e 11
cmp.i.v EQ
bf [186]

:[185]
pushi.e 10
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[186]
push.v self.rating
pushi.e 12
cmp.i.v EQ
bf [188]

:[187]
pushi.e 10
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[188]
push.v self.rating
pushi.e 13
cmp.i.v EQ
bf [190]

:[189]
pushi.e 11
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[190]
push.v self.rating
pushi.e 14
cmp.i.v EQ
bf [192]

:[191]
pushi.e 11
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[192]
push.v self.rating
pushi.e 15
cmp.i.v EQ
bf [194]

:[193]
pushi.e 12
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[194]
push.v self.rating
pushi.e 16
cmp.i.v EQ
bf [196]

:[195]
pushi.e 12
pop.v.i self.rating
pushi.e 1
pop.v.i self.chal_e

:[196]
push.v self.chal_e
pushi.e 0
cmp.i.v EQ
bf [198]

:[197]
push.s "obj_undyneboss_1168"@28957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[198]
push.v self.chal_e
pushi.e 1
cmp.i.v EQ
bf [203]

:[199]
push.v self.ratingb
pushi.e 6
cmp.i.v LT
bf [201]

:[200]
push.v self.ratingb
pushi.e 1
add.i.v
pop.v.v self.ratingb

:[201]
push.s "obj_undyneboss_1174"@28959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.rating
pushi.e 7
cmp.i.v EQ
bf [203]

:[202]
push.s "obj_undyneboss_1176"@28961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[203]
push.v self.con
pushi.e 50
cmp.i.v GTE
bf [205]

:[204]
push.s "obj_undyneboss_1182"@28963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[205]
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
pushenv [207]

:[206]
pushi.e 0
pop.v.i self.halt

:[207]
popenv [206]

:[208]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [230]

:[209]
pushi.e 0
pop.v.i global.msc
push.s "obj_undyneboss_1195"@28965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.plead_e
push.v self.ratingb
pushi.e 7
cmp.i.v EQ
bf [211]

:[210]
pushi.e 6
pop.v.i self.ratingb
pushi.e 1
pop.v.i self.plead_e

:[211]
push.v self.ratingb
pushi.e 8
cmp.i.v EQ
bf [213]

:[212]
pushi.e 7
pop.v.i self.ratingb
pushi.e 1
pop.v.i self.plead_e

:[213]
push.v self.ratingb
pushi.e 9
cmp.i.v EQ
bf [215]

:[214]
pushi.e 7
pop.v.i self.ratingb
pushi.e 1
pop.v.i self.plead_e

:[215]
push.v self.rating
pushi.e 9
cmp.i.v EQ
bf [217]

:[216]
pushi.e 10
pop.v.i self.rating
pushi.e 1
pop.v.i self.plead_e

:[217]
push.v self.rating
pushi.e 8
cmp.i.v EQ
bf [219]

:[218]
pushi.e 10
pop.v.i self.rating
pushi.e 1
pop.v.i self.plead_e

:[219]
push.v self.rating
pushi.e 7
cmp.i.v EQ
bf [221]

:[220]
pushi.e 9
pop.v.i self.rating
pushi.e 1
pop.v.i self.plead_e

:[221]
push.v self.plead_e
pushi.e 0
cmp.i.v EQ
bf [223]

:[222]
push.s "obj_undyneboss_1205"@28967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[223]
push.v self.plead_e
pushi.e 1
cmp.i.v EQ
bf [225]

:[224]
push.s "obj_undyneboss_1209"@28969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_1210"@28971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[225]
push.v self.con
pushi.e 50
cmp.i.v GTE
bf [227]

:[226]
push.s "obj_undyneboss_1215"@28972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[227]
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
pushenv [229]

:[228]
pushi.e 0
pop.v.i self.halt

:[229]
popenv [228]

:[230]
pushi.e 1
pop.v.i global.heard

:[231]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [233]

:[232]
push.v 268.xstart
push.v self.siner
pushi.e 24
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
add.v.v
pop.v.v 268.x

:[233]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [236]

:[234]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [236]

:[235]
push.v self.mercied
pushi.e 1
add.i.v
pop.v.v self.mercied
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v

:[236]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [238]

:[237]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [239]

:[238]
push.e 0

:[239]
bf [241]

:[240]
pushi.e 3
pop.v.i 744.movement

:[241]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [243]

:[242]
pushi.e 1
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[243]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [245]

:[244]
pushi.e 4
pop.v.i global.bmenuno
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v 744.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v 744.x
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
push.v 744.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v 744.y
pushi.e 0
pop.v.i global.myfight
pushi.e 99
pop.v.i global.mnfight

:[245]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [249]

:[246]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 4
cmp.i.v LT
bf [248]

:[247]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.d 3.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [249]

:[248]
push.d 4.1
pop.v.d self.con

:[249]
push.v self.con
push.d 4.1
cmp.d.v EQ
bf [259]

:[250]
pushi.e 39
pop.v.i global.typer
push.s "obj_undyneboss_1278"@28974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [252]

:[251]
push.s "obj_undyneboss_1281"@28976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
pop.v.i self.lesson
pushi.e 9
pop.v.i self.order

:[252]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [254]

:[253]
push.s "obj_undyneboss_1286"@28978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 13
pop.v.i self.lesson
pushi.e 15
pop.v.i self.order

:[254]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [256]

:[255]
push.s "obj_undyneboss_1292"@28980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 22
pop.v.i self.lesson
pushi.e 22
pop.v.i self.order

:[256]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 4
cmp.i.v GT
bf [258]

:[257]
push.s "obj_undyneboss_1298"@28982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 22
pop.v.i self.lesson
pushi.e 22
pop.v.i self.order

:[258]
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 5
pop.v.i self.con

:[259]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [261]

:[260]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [262]

:[261]
push.e 0

:[262]
bf [264]

:[263]
push.s "obj_undyneboss_1310"@28984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.d 0.82
conv.d.v
pushglb.v global.batmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i global.myfight
pushi.e 3
pop.v.i global.mnfight
pushi.e 6
pop.v.i self.con

:[264]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [267]

:[265]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [267]

:[266]
push.v 744.sprite_index
pushi.e 46
cmp.i.v EQ
b [268]

:[267]
push.e 0

:[268]
bf [270]

:[269]
pushi.e 4
pop.v.i global.mnfight

:[270]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [274]

:[271]
push.v self.mypart1
conv.v.i
pushenv [273]

:[272]
call.i instance_destroy(argc=0)
popz.v

:[273]
popenv [272]
pushi.e 2
pop.v.i self.image_index
pushi.e 1
pop.v.i self.shakify
pushi.e 0
pop.v.i self.myfight
pushi.e 99
pop.v.i self.mnfight
pushi.e 4
pop.v.i global.bmenuno
pushi.e 4
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 51
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 40
pop.v.i global.typer
push.s "obj_undyneboss_1336"@28986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_1337"@28988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_1338"@28990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyneboss_1339"@28991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v

:[274]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [276]

:[275]
push.v 760.y
pushi.e 20
add.i.v
pop.v.v 744.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
pop.v.v 744.x

:[276]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [278]

:[277]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [279]

:[278]
push.e 0

:[279]
bf [281]

:[280]
push.d 50.1
pop.v.d self.con
pushi.e 3
pop.v.i self.shakify
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[281]
push.v self.con
push.d 51.1
cmp.d.v EQ
bf [283]

:[282]
pushi.e 0
pop.v.i self.shakify
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 3
pop.v.i self.image_index
pushi.e 8
pop.v.i global.faceemotion
pushi.e 40
pop.v.i global.typer
push.s "obj_undyneboss_1365"@28993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 52
pop.v.i self.con

:[283]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [285]

:[284]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [286]

:[285]
push.e 0

:[286]
bf [288]

:[287]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 54
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[288]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [290]

:[289]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [291]

:[290]
push.e 0

:[291]
bf [295]

:[292]
pushi.e 0
pop.v.i self.shakify
pushi.e 0
pop.v.i self.image_index
pushi.e 41
pop.v.i global.typer
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.mypart1
conv.v.i
pushenv [294]

:[293]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[294]
popenv [293]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.deadmusic1
call.i caster_play(argc=3)
popz.v
push.s "obj_undyneboss_1386"@28995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_1387"@28997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_1388"@28999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyneboss_1389"@29001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyneboss_1390"@29003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 53
pop.v.i self.con

:[295]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [297]

:[296]
pushi.e 41
pop.v.i global.typer
push.s "obj_undyneboss_1401"@29005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_1402"@29007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_1403"@29009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 56
pop.v.i self.con

:[297]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [299]

:[298]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [300]

:[299]
push.e 0

:[300]
bf [302]

:[301]
push.s "obj_undyneboss_1410"@29011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.myfight
pushi.e 3
pop.v.i global.mnfight
pushi.e 57
pop.v.i self.con

:[302]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [304]

:[303]
push.v self.deadmusic1
call.i caster_free(argc=1)
popz.v
push.v self.deadmusic2
call.i caster_free(argc=1)
popz.v
pushi.e 7
pop.v.i global.faceemotion
pushi.e 40
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_undyneboss_1424"@29012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_1425"@29014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_1426"@29016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyneboss_1427"@29018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyneboss_1428"@29020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyneboss_1429"@29021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 61
pop.v.i self.con

:[304]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [306]

:[305]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [307]

:[306]
push.e 0

:[307]
bf [311]

:[308]
pushi.e 8
pop.v.i global.faceemotion
pushi.e 263
pushenv [310]

:[309]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[310]
popenv [309]
push.s "obj_undyneboss_1438"@29023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneboss_1439"@29025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneboss_1440"@29027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 62
pop.v.i self.con

:[311]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [313]

:[312]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [314]

:[313]
push.e 0

:[314]
bf [318]

:[315]
pushi.e 263
pushenv [317]

:[316]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[317]
popenv [316]
pushi.e 42
pop.v.i global.typer
push.s "obj_undyneboss_1449"@29029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 63
pop.v.i self.con

:[318]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [320]

:[319]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [321]

:[320]
push.e 0

:[321]
bf [325]

:[322]
pushi.e 64
pop.v.i self.con
pushi.e 42
pop.v.i global.typer
pushi.e 263
pushenv [324]

:[323]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[324]
popenv [323]
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "obj_undyneboss_1460"@29031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v

:[325]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [327]

:[326]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [328]

:[327]
push.e 0

:[328]
bf [332]

:[329]
pushi.e 66
pop.v.i self.con
pushi.e 43
pop.v.i global.typer
push.v self.melter
conv.v.i
pushenv [331]

:[330]
pushi.e 1
pop.v.i self.image_index

:[331]
popenv [330]
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "obj_undyneboss_1470"@29032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v

:[332]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [334]

:[333]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [335]

:[334]
push.e 0

:[335]
bf [339]

:[336]
pushi.e 68
pop.v.i self.con
pushi.e 44
pop.v.i global.typer
push.v self.melter
conv.v.i
pushenv [338]

:[337]
pushi.e 2
pop.v.i self.image_index

:[338]
popenv [337]
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "obj_undyneboss_1480"@29033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v

:[339]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [341]

:[340]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [342]

:[341]
push.e 0

:[342]
bf [346]

:[343]
pushi.e 70
pop.v.i self.con
pushi.e 45
pop.v.i global.typer
push.v self.melter
conv.v.i
pushenv [345]

:[344]
pushi.e 3
pop.v.i self.image_index

:[345]
popenv [344]
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "obj_undyneboss_1490"@29035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v

:[346]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [348]

:[347]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [349]

:[348]
push.e 0

:[349]
bf [353]

:[350]
pushi.e 0
pop.v.i global.vaporspeed
pushi.e 297
pop.v.i global.monstersprite
pushi.e 158
conv.i.v
push.v self.melter
conv.v.i
push.v [stacktop]self.y
push.v self.melter
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
pushi.e 0
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_index
push.v global.kills
pushi.e 1
add.i.v
pop.v.v global.kills
push.v global.xp
pushi.e 500
add.i.v
pop.v.v global.xp
call.i scr_levelup(argc=0)
popz.v
push.v self.melter
conv.v.i
pushenv [352]

:[351]
call.i instance_destroy(argc=0)
popz.v

:[352]
popenv [351]
pushi.e 72
pop.v.i self.con
pushi.e 200
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[353]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [355]

:[354]
pushi.e 150
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 350
pop.v.i [array]global.flag
pushi.e 122
pop.v.i global.plot
pushi.e 10
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 74
pop.v.i self.con

:[355]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
pushi.e 351
pop.v.v [array]global.flag
push.v 744.sprite_index
pushi.e 46
cmp.i.v EQ
bf [357]

:[356]
pushi.e 0
pop.v.i global.mercy

:[357]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [359]

:[358]
pushi.e 1
pop.v.i global.mercy

:[359]
push.v self.died
pushi.e 1
cmp.i.v EQ
bf [361]

:[360]
pushi.e 1
pop.v.i global.mercy

:[361]
push.v self.died
pushi.e 1
cmp.i.v EQ
bf [364]

:[362]
push.v self.con
pushi.e 53
cmp.i.v GTE
bf [364]

:[363]
push.v self.con
pushi.e 60
cmp.i.v LT
b [365]

:[364]
push.e 0

:[365]
bf [371]

:[366]
push.v self.deadmusic1
call.i caster_is_playing(argc=1)
pushi.e 0
cmp.i.v EQ
bf [368]

:[367]
push.v self.deadmusic2
call.i caster_is_playing(argc=1)
pushi.e 0
cmp.i.v EQ
b [369]

:[368]
push.e 0

:[369]
bf [371]

:[370]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.deadmusic2
call.i caster_loop(argc=3)
popz.v

:[371]
push.v self.shakify
pushi.e 0
cmp.i.v GT
bf [373]

:[372]
push.v self.xstart
push.v self.shakify
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shakify
call.i random(argc=1)
add.v.v
pop.v.v self.y

:[373]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [375]

:[374]
pushi.e 85
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [376]

:[375]
push.e 0

:[376]
bf [end]

:[377]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp

:[end]