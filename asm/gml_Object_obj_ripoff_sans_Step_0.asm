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
bf [40]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 1
pop.v.i self.attacked

:[37]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [39]

:[38]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[39]
pushi.e -1
pop.v.i self.whatiheard

:[40]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [84]

:[41]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [84]

:[42]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [84]

:[43]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [52]

:[44]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [46]

:[45]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[46]
popenv [45]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_sans_486"@23410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_sans_487"@23412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 3
cmp.i.v GTE
bf [49]

:[47]
push.s "obj_ripoff_sans_490"@23414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i 560.saved
pushi.e 5
pop.v.i global.mnfight
push.v 560.mercyno
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_ripoff_sans_496"@23415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_sans_497"@23416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[49]
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
pushenv [51]

:[50]
pushi.e 0
pop.v.i self.halt

:[51]
popenv [50]
pushi.e 9
pop.v.i self.whatiheard

:[52]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [61]

:[53]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [55]

:[54]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[55]
popenv [54]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_sans_516"@23418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_sans_517"@23420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 3
cmp.i.v GTE
bf [58]

:[56]
push.s "obj_ripoff_sans_520"@23421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i 560.saved
pushi.e 5
pop.v.i global.mnfight
push.v 560.mercyno
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_ripoff_sans_526"@23422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_sans_527"@23423
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[58]
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
pushenv [60]

:[59]
pushi.e 0
pop.v.i self.halt

:[60]
popenv [59]

:[61]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [70]

:[62]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [64]

:[63]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[64]
popenv [63]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_sans_542"@23425
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_sans_543"@23427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 3
cmp.i.v GTE
bf [67]

:[65]
push.s "obj_ripoff_sans_546"@23429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i 560.saved
pushi.e 5
pop.v.i global.mnfight
push.v 560.mercyno
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_ripoff_sans_552"@23430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_sans_553"@23431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

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
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [83]

:[71]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [73]

:[72]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[73]
popenv [72]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
pushi.e -5
pushi.e 58
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_ripoff_sans_571"@23433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
pushi.e -5
pushi.e 58
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_ripoff_sans_576"@23435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
push.s "obj_ripoff_sans_579"@23437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 3
cmp.i.v GTE
bf [80]

:[78]
push.s "obj_ripoff_sans_583"@23439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i 560.saved
pushi.e 5
pop.v.i global.mnfight
push.v 560.mercyno
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_ripoff_sans_589"@23440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_sans_590"@23442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[80]
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
pushenv [82]

:[81]
pushi.e 0
pop.v.i self.halt

:[82]
popenv [81]

:[83]
pushi.e 1
pop.v.i global.heard

:[84]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [88]

:[85]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
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
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [90]

:[89]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [91]

:[90]
push.e 0

:[91]
bf [end]

:[92]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[93]
call.i instance_destroy(argc=0)
popz.v

:[end]