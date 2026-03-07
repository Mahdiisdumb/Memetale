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
pop.v.i [stacktop]self.hurt
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
bf [71]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 160
pop.v.i global.turntimer
pushi.e 20
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
bf [45]

:[44]
pushi.e 1
pop.v.i self.num

:[45]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i self.num

:[47]
push.v self.num
pushi.e 1
cmp.i.v EQ
bf [51]

:[48]
pushi.e 160
pop.v.i global.turntimer
pushi.e 323
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
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.green

:[50]
b [56]

:[51]
pushi.e 30
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
pushglb.v global.firingrate
push.d 2.2
mul.d.v
pop.v.v global.firingrate

:[53]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [55]

:[54]
pushglb.v global.firingrate
push.d 1.5
mul.d.v
pop.v.v global.firingrate

:[55]
pushi.e 327
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
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[56]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [58]

:[57]
push.s "obj_tsunderplane_465"@28363
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
push.s "obj_tsunderplane_466"@28365
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
push.s "obj_tsunderplane_467"@28367
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
push.s "obj_tsunderplane_468"@28369
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
push.s "obj_tsunderplane_469"@28371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.mercymod
pushi.e 60
cmp.i.v GT
bf [68]

:[67]
push.s "obj_tsunderplane_470"@28373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [70]

:[69]
push.s "obj_tsunderplane_471"@28375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
pushi.e 1
pop.v.i self.attacked

:[71]
pushi.e -1
pop.v.i self.whatiheard

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
push.s "obj_tsunderplane_490"@28377
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
pushi.e 3
cmp.i.v EQ
bf [93]

:[80]
pushi.e 0
pop.v.i global.msc
push.s "obj_tsunderplane_499"@28379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.g
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_tsunderplane_501"@28380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_tsunderplane_502"@28382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.v self.g
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_tsunderplane_503"@28384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
push.v self.g
pushi.e 3
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_tsunderplane_504"@28386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.g
pushi.e 4
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_tsunderplane_505"@28388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
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
pushenv [92]

:[91]
pushi.e 0
pop.v.i self.halt

:[92]
popenv [91]

:[93]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [97]

:[94]
pushi.e 0
pop.v.i global.msc
push.s "obj_tsunderplane_515"@28390
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
pushenv [96]

:[95]
pushi.e 0
pop.v.i self.halt

:[96]
popenv [95]

:[97]
pushi.e 1
pop.v.i global.heard

:[98]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [102]

:[99]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [102]

:[100]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [102]

:[101]
call.i instance_destroy(argc=0)
popz.v

:[102]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [104]

:[103]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [end]

:[106]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[107]
call.i instance_destroy(argc=0)
popz.v

:[end]