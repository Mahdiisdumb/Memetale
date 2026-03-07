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
bf [101]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [77]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 160
pop.v.i global.turntimer
pushi.e 7
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
push.d 2.4
mul.d.v
pop.v.v global.firingrate

:[38]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 1.7
mul.d.v
pop.v.v global.firingrate

:[40]
pushi.e 0
pop.v.i self.num
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
pop.v.i self.num

:[42]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [44]

:[43]
pushi.e 1
pop.v.i self.num

:[44]
push.v self.criticize
pushi.e 0
cmp.i.v EQ
bf [56]

:[45]
push.v self.num
pushi.e 1
cmp.i.v EQ
bf [49]

:[46]
pushi.e 160
pop.v.i global.turntimer
push.v self.encourage
pushi.e 0
cmp.i.v GT
bf [48]

:[47]
push.v global.firingrate
pushi.e 2
sub.i.v
pop.v.v global.firingrate

:[48]
pushi.e 335
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
b [56]

:[49]
pushi.e 9
pop.v.i global.firingrate
push.v self.encourage
pushi.e 0
cmp.i.v GT
bf [51]

:[50]
push.v global.firingrate
pushi.e 4
sub.i.v
pop.v.v global.firingrate

:[51]
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
pushglb.v global.firingrate
push.d 2.6
mul.d.v
pop.v.v global.firingrate

:[53]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [55]

:[54]
pushglb.v global.firingrate
push.d 1.7
mul.d.v
pop.v.v global.firingrate

:[55]
pushi.e 332
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 2
add.i.v
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
pushi.e 30
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[56]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [58]

:[57]
push.s "obj_vulkin_538"@29759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_vulkin_539"@29761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [62]

:[61]
push.s "obj_vulkin_540"@29763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [64]

:[63]
push.s "obj_vulkin_541"@29765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [66]

:[65]
push.s "obj_vulkin_542"@29767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.hug
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
push.s "obj_vulkin_544"@29769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
push.v self.encourage
pushi.e 0
cmp.i.v GT
bf [70]

:[69]
push.s "obj_vulkin_545"@29771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
push.v self.criticize
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_vulkin_546"@29773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
push.v self.criticize
pushi.e 1
cmp.i.v GT
bf [74]

:[73]
push.s "obj_vulkin_547"@29775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[74]
push.v self.specialmessage
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_vulkin_551"@29777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.specialmessage

:[76]
pushi.e 1
pop.v.i self.attacked

:[77]
push.v self.criticize
pushi.e 0
cmp.i.v GT
bf [79]

:[78]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[82]
push.v self.criticize
pushi.e 0
cmp.i.v GT
bf [84]

:[83]
call.i scr_monstersum(argc=0)
pushi.e 2
cmp.i.v GTE
b [85]

:[84]
push.e 0

:[85]
bf [100]

:[86]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
call.i instance_exists(argc=1)
conv.v.b
bf [88]

:[87]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
call.i instance_exists(argc=1)
conv.v.b
b [89]

:[88]
push.e 0

:[89]
bf [100]

:[90]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
pushi.e 338
cmp.i.v EQ
bf [92]

:[91]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
pushi.e 338
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [100]

:[94]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
push.v [stacktop]self.criticize
pushi.e 0
cmp.i.v GT
bf [96]

:[95]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
push.v [stacktop]self.criticize
pushi.e 0
cmp.i.v GT
b [97]

:[96]
push.e 0

:[97]
bf [100]

:[98]
pushi.e -1
pop.v.i global.turntimer
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
pushi.e 3
pop.v.i global.mnfight

:[100]
pushi.e -1
pop.v.i self.whatiheard

:[101]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [126]

:[102]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [126]

:[103]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [126]

:[104]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [108]

:[105]
pushi.e 0
pop.v.i global.msc
push.s "obj_vulkin_599"@29779
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
pushenv [107]

:[106]
pushi.e 0
pop.v.i self.halt

:[107]
popenv [106]
pushi.e 9
pop.v.i self.whatiheard

:[108]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [114]

:[109]
pushi.e 0
pop.v.i global.msc
push.s "obj_vulkin_608"@29781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.criticize
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
push.s "obj_vulkin_609"@29783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[111]
pushi.e 0
pop.v.i self.encourage
push.v self.criticize
pushi.e 1
add.i.v
pop.v.v self.criticize
pushi.e 0
pop.v.i self.hug
pushi.e -200
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
pushenv [113]

:[112]
pushi.e 0
pop.v.i self.halt

:[113]
popenv [112]

:[114]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [118]

:[115]
pushi.e 0
pop.v.i global.msc
pushi.e 100
pop.v.i self.mercymod
push.v self.encourage
pushi.e 1
add.i.v
pop.v.v self.encourage
pushi.e 0
pop.v.i self.criticize
pushi.e 0
pop.v.i self.hug
push.s "obj_vulkin_627"@29785
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
pushenv [117]

:[116]
pushi.e 0
pop.v.i self.halt

:[117]
popenv [116]

:[118]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [125]

:[119]
pushi.e 0
pop.v.i global.msc
pushi.e 100
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.encourage
pushi.e 0
pop.v.i self.criticize
push.v self.hug
pushi.e 1
add.i.v
pop.v.v self.hug
push.s "obj_vulkin_640"@29787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.df
pushi.e 5
cmp.i.v GTE
bf [121]

:[120]
push.v global.df
pushi.e 5
sub.i.v
pop.v.v global.df
push.s "obj_vulkin_644"@29789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [122]

:[121]
push.s "obj_vulkin_647"@29791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[122]
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
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [130]

:[127]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [130]

:[128]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [130]

:[129]
call.i instance_destroy(argc=0)
popz.v

:[130]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [132]

:[131]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [end]

:[134]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[end]