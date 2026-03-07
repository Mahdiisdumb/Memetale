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
bf [72]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [72]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 160
pop.v.i global.turntimer
pushi.e 25
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
bf [47]

:[44]
pushi.e 160
pop.v.i global.turntimer
pushi.e 696
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [46]

:[45]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.offset

:[46]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
b [52]

:[47]
pushi.e 5
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
pushglb.v global.firingrate
push.d 2.7
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
pushi.e 695
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[52]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_aaron_478"@8848
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [56]

:[55]
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
push.s "obj_aaron_479"@8850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_aaron_480"@8852
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_aaron_481"@8854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [65]

:[64]
push.s "obj_aaron_482"@8856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [67]

:[66]
push.s "obj_aaron_483"@8858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.flex
pushi.e 0
cmp.i.v GT
bf [69]

:[68]
push.s "obj_aaron_484"@8860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [71]

:[70]
push.s "obj_aaron_486"@8862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
pushi.e 1
pop.v.i self.attacked

:[72]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [98]

:[73]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [98]

:[74]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [98]

:[75]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [79]

:[76]
pushi.e 0
pop.v.i global.msc
push.s "obj_aaron_502"@8864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_aaron_503"@8866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
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
pushenv [78]

:[77]
pushi.e 0
pop.v.i self.halt

:[78]
popenv [77]
pushi.e 9
pop.v.i self.whatiheard

:[79]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [85]

:[80]
pushi.e 0
pop.v.i global.msc
push.s "obj_aaron_512"@8868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -10
pop.v.i self.mercymod
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_aaron_514"@8870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 222
pop.v.i self.mercymod

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

:[85]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [97]

:[86]
pushi.e 0
pop.v.i global.msc
push.v self.flex
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_aaron_524"@8872
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.flex
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_aaron_525"@8874
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.flex
pushi.e 2
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_aaron_526"@8876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 400
pop.v.i self.mercymod
pushi.e 1
pushi.e -5
pushi.e 143
pop.v.i [array]global.flag

:[92]
push.s "obj_aaron_527"@8878
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.flex
pushi.e 1
add.i.v
pop.v.v self.flex
pushglb.v global.at
pushi.e 150
cmp.i.v LT
bf [94]

:[93]
push.v global.at
pushi.e 15
add.i.v
pop.v.v global.at

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
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsteratk
pushi.e 1
add.i.v
pop.i.v [array]global.monsteratk

:[97]
pushi.e 1
pop.v.i global.heard

:[98]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [101]

:[99]
push.v self.flex
pushi.e 3
cmp.i.v EQ
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
bf [105]

:[103]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e -4
pop.v.i self.vspeed
pushi.e -4
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[105]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [108]

:[106]
push.v self.flex
pushi.e 3
cmp.i.v EQ
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
bf [112]

:[110]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [112]

:[111]
call.i instance_destroy(argc=0)
popz.v

:[112]
push.v self.alphaup
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[117]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [121]

:[118]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [121]

:[119]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [121]

:[120]
call.i instance_destroy(argc=0)
popz.v

:[121]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [123]

:[122]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
bf [end]

:[125]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[end]