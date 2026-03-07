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
bf [88]

:[41]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [88]

:[42]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [88]

:[43]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [54]

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
push.s "obj_ripoff_asgore_488"@23326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_asgore_489"@23328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [51]

:[47]
push.s "obj_ripoff_asgore_492"@23330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 563
pushenv [49]

:[48]
pushi.e 1
pop.v.i self.saved

:[49]
popenv [48]
pushi.e 5
pop.v.i global.mnfight
push.v 563.mercyno
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_ripoff_asgore_498"@23332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_asgore_499"@23334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[51]
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
pushenv [53]

:[52]
pushi.e 0
pop.v.i self.halt

:[53]
popenv [52]
pushi.e 9
pop.v.i self.whatiheard

:[54]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [65]

:[55]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [57]

:[56]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[57]
popenv [56]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_asgore_517"@23336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_asgore_518"@23338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [62]

:[58]
push.s "obj_ripoff_asgore_521"@23339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 563
pushenv [60]

:[59]
pushi.e 1
pop.v.i self.saved

:[60]
popenv [59]
pushi.e 5
pop.v.i global.mnfight
push.v 563.mercyno
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_ripoff_asgore_527"@23340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_asgore_528"@23341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[62]
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
pushenv [64]

:[63]
pushi.e 0
pop.v.i self.halt

:[64]
popenv [63]

:[65]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [76]

:[66]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [68]

:[67]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[68]
popenv [67]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_asgore_543"@23343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_asgore_544"@23345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [73]

:[69]
push.s "obj_ripoff_asgore_547"@23346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 563
pushenv [71]

:[70]
pushi.e 1
pop.v.i self.saved

:[71]
popenv [70]
pushi.e 5
pop.v.i global.mnfight
push.v 563.mercyno
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_ripoff_asgore_553"@23347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_asgore_554"@23348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
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

:[76]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [87]

:[77]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [79]

:[78]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[79]
popenv [78]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_asgore_569"@23350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_asgore_570"@23352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [84]

:[80]
push.s "obj_ripoff_asgore_573"@23354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 563
pushenv [82]

:[81]
pushi.e 1
pop.v.i self.saved

:[82]
popenv [81]
pushi.e 5
pop.v.i global.mnfight
push.v 563.mercyno
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_ripoff_asgore_579"@23355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_asgore_580"@23356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[84]
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
pushi.e 1
pop.v.i global.heard

:[88]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [92]

:[89]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [92]

:[90]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [94]

:[93]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [end]

:[96]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[97]
call.i instance_destroy(argc=0)
popz.v

:[end]