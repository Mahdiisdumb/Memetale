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
bf [70]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [70]

:[36]
pushi.e 150
pop.v.i global.turntimer
push.v self.mercymod
pushi.e 100
cmp.i.v LT
bt [38]

:[37]
call.i scr_monstersum(argc=0)
pushi.e 2
cmp.i.v GTE
b [39]

:[38]
push.e 1

:[39]
bf [55]

:[40]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [42]

:[41]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [43]

:[42]
push.e 0

:[43]
bf [49]

:[44]
pushi.e 7
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
pushglb.v global.firingrate
push.d 2.7
mul.d.v
pop.v.v global.firingrate

:[46]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[48]
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype
b [54]

:[49]
pushi.e 15
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [51]

:[50]
pushglb.v global.firingrate
push.d 2.7
mul.d.v
pop.v.v global.firingrate

:[51]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 2
cmp.i.v EQ
bf [53]

:[52]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[53]
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[54]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
b [57]

:[55]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.turntimer

:[57]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [59]

:[58]
push.s "obj_moldessa_418"@18259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_moldessa_419"@18261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_moldessa_420"@18263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [65]

:[64]
push.s "obj_moldessa_421"@18265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
pushi.e -1
pop.v.i self.whatiheard
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 15
cmp.i.v LT
bf [67]

:[66]
push.s "obj_moldessa_424"@18267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.mercymod
pushi.e 15
cmp.i.v GT
bf [69]

:[68]
push.s "obj_moldessa_425"@18269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
pushi.e 1
pop.v.i self.attacked

:[70]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [112]

:[71]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [112]

:[72]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [112]

:[73]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [77]

:[74]
pushi.e 0
pop.v.i global.msc
push.s "obj_moldessa_447"@18271
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
pushenv [76]

:[75]
pushi.e 0
pop.v.i self.halt

:[76]
popenv [75]
pushi.e 9
pop.v.i self.whatiheard

:[77]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [87]

:[78]
pushi.e -5
pushi.e 3
push.v [array]global.goldreward
pushi.e 8
cmp.i.v LT
bf [80]

:[79]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 2
add.i.v
pop.i.v [array]global.goldreward

:[80]
pushi.e 0
pop.v.i global.msc
push.s "obj_moldessa_458"@18273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mypart1
conv.v.i
pushenv [82]

:[81]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[82]
popenv [81]
push.v self.mypart1
conv.v.i
pushenv [84]

:[83]
pushi.e 1
pop.v.i self.facego

:[84]
popenv [83]
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
pushenv [86]

:[85]
pushi.e 0
pop.v.i self.halt

:[86]
popenv [85]

:[87]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [96]

:[88]
pushi.e 0
pop.v.i global.msc
push.s "obj_moldessa_470"@18275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercymod
pushi.e 100
cmp.i.v LT
bf [90]

:[89]
push.s "obj_moldessa_471"@18277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [91]

:[90]
push.s "obj_moldessa_474"@18278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[91]
push.v self.mypart1
conv.v.i
pushenv [93]

:[92]
pushi.e 0
pop.v.i self.facego

:[93]
popenv [92]
pushi.e 100
pop.v.i self.mercymod
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
pushenv [95]

:[94]
pushi.e 0
pop.v.i self.halt

:[95]
popenv [94]

:[96]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [111]

:[97]
pushi.e 0
pop.v.i global.msc
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [99]

:[98]
push.v self.lie
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 1
pop.v.i self.lie
push.v global.hp
pushi.e 2
add.i.v
pop.v.v global.hp
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[102]
call.i scr_monstersum(argc=0)
pushi.e 2
cmp.i.v GTE
bf [107]

:[103]
push.s "obj_moldessa_495"@18280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_moldessa_496"@18282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercymod
pop.v.v self.pre_m
pushi.e 607
pushenv [106]

:[104]
push.v self.mercymod
pushi.e 90
cmp.i.v LT
bf [106]

:[105]
pushi.e 90
pop.v.i self.mercymod

:[106]
popenv [104]
push.v self.pre_m
pop.v.v self.mercymod
b [108]

:[107]
push.s "obj_moldessa_506"@18284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[108]
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
pushi.e 1
pop.v.i global.heard

:[112]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [116]

:[113]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [116]

:[114]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [116]

:[115]
call.i instance_destroy(argc=0)
popz.v

:[116]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [118]

:[117]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [end]

:[120]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[121]
call.i instance_destroy(argc=0)
popz.v

:[end]