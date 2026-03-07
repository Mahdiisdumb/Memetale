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
pushi.e 120
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 3
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
pushi.e 16
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
push.v self.part2
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart2
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
bf [57]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [57]

:[36]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 200
pop.v.i global.turntimer
pushi.e 658
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen1
pushi.e 658
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 7
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 7
push.v self.gen1
conv.v.i
pop.v.i [stacktop]self.dmg
push.v self.myself
push.v self.gen1
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself

:[38]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [40]

:[39]
push.s "obj_womandog_472"@29963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [42]

:[41]
push.s "obj_womandog_473"@29965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [44]

:[43]
push.s "obj_womandog_474"@29967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_womandog_475"@29969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.smell
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_womandog_476"@29971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.smell
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_womandog_477"@29973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [52]

:[51]
push.s "obj_womandog_478"@29975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.mercymod
pushi.e 900
cmp.i.v GT
bf [54]

:[53]
push.s "obj_womandog_479"@29977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_womandog_480"@29979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
pushi.e 1
pop.v.i self.attacked

:[57]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [102]

:[58]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [102]

:[59]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [102]

:[60]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [64]

:[61]
pushi.e 0
pop.v.i global.msc
push.s "obj_womandog_496"@29981
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

:[64]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [77]

:[65]
pushi.e 0
pop.v.i global.msc
push.v self.smell
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_womandog_504"@29982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_womandog_505"@29983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[67]
push.v self.smell
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_womandog_506"@29984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_womandog_507"@29985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[69]
push.v self.smell
pushi.e 2
cmp.i.v GTE
bf [71]

:[70]
push.s "obj_womandog_508"@29986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_womandog_509"@29988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
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
pushenv [75]

:[74]
pushi.e 0
pop.v.i self.halt

:[75]
popenv [74]
push.v self.smell
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
pushi.e 2
pop.v.i 220.smell

:[77]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [95]

:[78]
pushi.e 0
pop.v.i global.msc
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_womandog_519"@29990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [92]

:[80]
push.v self.smell
pushi.e 2
cmp.i.v LT
bf [82]

:[81]
push.s "obj_womandog_522"@29992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.smell
pushi.e 2
cmp.i.v EQ
bt [84]

:[83]
push.v self.smell
pushi.e 3
cmp.i.v EQ
b [85]

:[84]
push.e 1

:[85]
bf [87]

:[86]
push.s "obj_womandog_523"@29994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.smell

:[87]
push.v self.smell
pushi.e 3
cmp.i.v EQ
bf [89]

:[88]
push.v 246.smell
pushi.e 3
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 999
pop.v.i 220.mercymod
pushi.e 1
pushi.e -5
pushi.e 140
pop.v.i [array]global.flag

:[92]
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
pushenv [94]

:[93]
pushi.e 0
pop.v.i self.halt

:[94]
popenv [93]

:[95]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [101]

:[96]
pushi.e 0
pop.v.i global.msc
push.s "obj_womandog_533"@29995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_womandog_534"@29996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.smell
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
pushi.e 1
pop.v.i 220.smell

:[98]
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
pushenv [100]

:[99]
pushi.e 0
pop.v.i self.halt

:[100]
popenv [99]

:[101]
pushi.e 1
pop.v.i global.heard

:[102]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [106]

:[103]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [106]

:[104]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [106]

:[105]
call.i instance_destroy(argc=0)
popz.v

:[106]
push.v self.mercymod
pushi.e 222
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
bf [end]

:[110]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[111]
call.i instance_destroy(argc=0)
popz.v

:[end]