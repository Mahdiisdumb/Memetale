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
bf [21]

:[4]
push.v self.hitno
pushi.e 0
cmp.i.v GT
bf [16]

:[5]
push.v self.hitno
pushi.e 1
cmp.i.v GTE
bf [7]

:[6]
push.v self.rating
pushi.e 10
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.rating
pushi.e 1
add.i.v
pop.v.v self.rating

:[10]
push.v self.hitno
pushi.e 3
cmp.i.v GTE
bf [12]

:[11]
push.v self.rating
pushi.e 10
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 10
pop.v.i self.rating

:[15]
b [18]

:[16]
push.v self.rating
pushi.e 8
cmp.i.v GT
bf [18]

:[17]
push.v self.rating
pushi.e 1
sub.i.v
pop.v.v self.rating

:[18]
pushi.e 0
pop.v.i self.attacked
pushi.e 5
pop.v.i global.mnfight
pushglb.v global.border
pushi.e 12
cmp.i.v EQ
bf [20]

:[19]
pushi.e 13
pop.v.i global.border

:[20]
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 10
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[21]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [31]

:[22]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [25]

:[23]
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
bf [25]

:[24]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[25]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [28]

:[26]
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
bf [28]

:[27]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[28]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [31]

:[29]
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
bf [31]

:[30]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[31]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [35]

:[32]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [35]

:[33]
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
push.v self.order
pushi.e -35
cmp.i.v EQ
bf [35]

:[34]
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

:[35]
push.v self.uncancel
pushi.e 1
cmp.i.v EQ
bf [38]

:[36]
pushi.e 100
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.uncancel

:[38]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
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

:[40]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [46]

:[41]
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
pushenv [43]

:[42]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[43]
popenv [42]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v GT
bf [45]

:[44]
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
b [46]

:[45]
pushi.e -99
pop.v.i global.myfight
pushi.e -99
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 50
pop.v.i self.con

:[46]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [50]

:[47]
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
pushenv [49]

:[48]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[49]
popenv [48]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[50]
push.v self.greenlock
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v GT
b [53]

:[52]
push.e 0

:[53]
bf [58]

:[54]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [56]

:[55]
push.v 760.y
pushi.e 34
add.i.v
pop.v.v 744.y
b [57]

:[56]
pushi.e 0
pop.v.i self.greenlock

:[57]
b [59]

:[58]
pushi.e 0
pop.v.i self.greenlock

:[59]
push.v self.darkify
pushi.e 1
cmp.i.v EQ
bf [64]

:[60]
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.5
cmp.d.v LT
bf [62]

:[61]
push.v self.pseudodarker
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
add.d.v
pop.i.v [stacktop]self.image_alpha
b [63]

:[62]
pushi.e 2
pop.v.i self.darkify

:[63]
pushi.e 1
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
sub.v.i
pop.v.v 758.image_alpha

:[64]
push.v self.darkify
pushi.e 3
cmp.i.v EQ
bf [71]

:[65]
push.v self.pseudodarker
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [67]

:[66]
push.v self.pseudodarker
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[67]
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
bf [71]

:[68]
pushi.e 0
pop.v.i self.darkify
push.v self.pseudodarker
conv.v.i
pushenv [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
popenv [69]

:[71]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [75]

:[72]
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
pushenv [74]

:[73]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[74]
popenv [73]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[75]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [112]

:[76]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [112]

:[77]
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
pushi.e 300
pop.v.i global.turntimer
pushi.e 15
pop.v.i global.firingrate
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [81]

:[78]
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
pushenv [80]

:[79]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[80]
popenv [79]
b [110]

:[81]
push.v self.orderb
pushi.e 0
cmp.i.v EQ
bt [83]

:[82]
push.v self.orderb
pushi.e 6
cmp.i.v EQ
b [84]

:[83]
push.e 1

:[84]
bf [90]

:[85]
pushi.e 0
pop.v.i self.borderspec
pushi.e 240
pop.v.i global.turntimer
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
add.i.v
pop.v.v self.lesson
push.v self.ratingb
pushi.e 10
cmp.i.v GT
bf [87]

:[86]
pushi.e 10
pop.v.i self.ratingb

:[87]
push.v self.ratingb
pushi.e 8
cmp.i.v LT
bf [89]

:[88]
pushi.e 8
pop.v.i self.ratingb

:[89]
pushi.e 18
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

:[90]
push.v self.orderb
pushi.e 1
cmp.i.v EQ
bt [92]

:[91]
push.v self.orderb
pushi.e 7
cmp.i.v EQ
b [93]

:[92]
push.e 1

:[93]
bf [99]

:[94]
pushi.e 220
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.borderspec
push.v self.ratingb
pushi.e 1
add.i.v
pop.v.v self.ratingb
push.v self.lesson
pushi.e 1
add.i.v
pop.v.v self.lesson
push.v self.ratingb
pushi.e 10
cmp.i.v GT
bf [96]

:[95]
pushi.e 10
pop.v.i self.ratingb

:[96]
push.v self.ratingb
pushi.e 8
cmp.i.v LT
bf [98]

:[97]
pushi.e 8
pop.v.i self.ratingb

:[98]
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

:[99]
push.v self.orderb
pushi.e 2
cmp.i.v EQ
bt [101]

:[100]
push.v self.orderb
pushi.e 3
cmp.i.v EQ
b [102]

:[101]
push.e 1

:[102]
bf [104]

:[103]
pushi.e 0
pop.v.i self.borderspec
pushi.e 215
pop.v.i global.turntimer
push.v self.ratingb
pushi.e 1
add.i.v
pop.v.v self.ratingb
push.v self.lesson
pushi.e 1
add.i.v
pop.v.v self.lesson
pushi.e 277
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.t
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg

:[104]
push.v self.orderb
pushi.e 4
cmp.i.v EQ
bf [106]

:[105]
pushi.e 0
pop.v.i self.borderspec
pushi.e 400
pop.v.i global.turntimer
push.v self.ratingb
pushi.e 1
add.i.v
pop.v.v self.ratingb
push.v self.lesson
pushi.e 1
add.i.v
pop.v.v self.lesson
pushi.e 280
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

:[106]
push.v self.orderb
pushi.e 5
cmp.i.v EQ
bf [108]

:[107]
pushi.e 0
pop.v.i self.borderspec
pushi.e 215
pop.v.i global.turntimer
push.v self.ratingb
pushi.e 1
add.i.v
pop.v.v self.ratingb
push.v self.lesson
pushi.e 1
add.i.v
pop.v.v self.lesson
pushi.e 277
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.t
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg

:[108]
push.v self.orderb
pushi.e 1
add.i.v
pop.v.v self.orderb
push.v self.orderb
pushi.e 8
cmp.i.v GTE
bf [110]

:[109]
pushi.e 4
pop.v.i self.orderb

:[110]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e 0
pop.v.i self.hitno
pushi.e 1
pop.v.i self.attacked
push.v self.order
pushi.e 1
add.i.v
pop.v.v self.order
push.v self.lesson
pushi.e 1
sub.i.v
pop.v.v self.lesson
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [112]

:[111]
push.s "obj_undyne_ex_781"@28522
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[112]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [115]

:[113]
push.v self.darkify
pushi.e 0
cmp.i.v GT
bf [115]

:[114]
push.v self.darkify
pushi.e 3
cmp.i.v NEQ
b [116]

:[115]
push.e 0

:[116]
bf [118]

:[117]
pushi.e 3
pop.v.i self.darkify

:[118]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [126]

:[119]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [126]

:[120]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [126]

:[121]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [125]

:[122]
pushi.e 0
pop.v.i global.msc
push.s "obj_undyne_ex_808"@28524
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
pushenv [124]

:[123]
pushi.e 0
pop.v.i self.halt

:[124]
popenv [123]

:[125]
pushi.e 1
pop.v.i global.heard

:[126]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [128]

:[127]
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

:[128]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [131]

:[129]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [131]

:[130]
push.v self.mercied
pushi.e 1
add.i.v
pop.v.v self.mercied
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v

:[131]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [133]

:[132]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [134]

:[133]
push.e 0

:[134]
bf [136]

:[135]
pushi.e 3
pop.v.i 744.movement

:[136]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [139]

:[137]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [139]

:[138]
push.v 744.sprite_index
pushi.e 46
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
pushi.e 4
pop.v.i global.mnfight

:[142]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [144]

:[143]
pushi.e 51
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[144]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [146]

:[145]
pushi.e 2
pop.v.i self.shakify
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.shakify
pushi.e 0
pop.v.i self.myfight
pushi.e 99
pop.v.i self.mnfight
pushi.e 4
pop.v.i global.bmenuno
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 53
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 94
pop.v.i global.typer
push.s "obj_undyne_ex_863"@28526
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_ex_864"@28528
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne_ex_865"@28529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyne_ex_866"@28531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyne_ex_867"@28533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyne_ex_868"@28535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyne_ex_869"@28537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undyne_ex_870"@28539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undyne_ex_871"@28541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undyne_ex_872"@28543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undyne_ex_873"@28545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v

:[146]
push.v self.con
pushi.e 53
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
bf [153]

:[150]
pushi.e 95
pop.v.i global.typer
push.s "obj_undyne_ex_881"@28547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 318
conv.i.v
pushi.e -40
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 20
sub.i.v
call.i scr_marker(argc=3)
pop.v.v self.melter
pushi.e 54
pop.v.i self.con
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
push.v self.mypart1
conv.v.i
pushenv [152]

:[151]
call.i instance_destroy(argc=0)
popz.v

:[152]
popenv [151]

:[153]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [155]

:[154]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [156]

:[155]
push.e 0

:[156]
bf [158]

:[157]
pushi.e 96
pop.v.i global.typer
push.s "obj_undyne_ex_893"@28549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
push.v self.melter
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 71
pop.v.i self.con
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v

:[158]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [160]

:[159]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [161]

:[160]
push.e 0

:[161]
bf [167]

:[162]
push.v self.melter
conv.v.i
push.v [stacktop]self.sprite_index
pop.v.v global.monstersprite
pushi.e 0
pop.v.i global.vaporspeed
pushi.e 156
conv.i.v
push.v self.melter
conv.v.i
push.v [stacktop]self.y
push.v self.melter
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
push.v self.ddd
conv.v.i
pushenv [164]

:[163]
pushi.e 35
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[164]
popenv [163]
push.v self.melter
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.melter
conv.v.i
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
push.v self.ht
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.wd
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.wd
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
pushi.e 1500
add.i.v
pop.v.v global.xp
call.i scr_levelup(argc=0)
popz.v
pushi.e 72
pop.v.i self.con
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[167]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [169]

:[168]
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
pushi.e 1
pushi.e -5
pushi.e 251
pop.v.i [array]global.flag
pushi.e 122
pop.v.i global.plot
pushi.e 10
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 74
pop.v.i self.con

:[169]
push.v 744.sprite_index
pushi.e 46
cmp.i.v EQ
bf [171]

:[170]
pushi.e 1
pop.v.i global.mercy

:[171]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [end]

:[172]
pushi.e 1
pop.v.i global.mercy

:[end]