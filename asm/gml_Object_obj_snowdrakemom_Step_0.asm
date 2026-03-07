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
bf [58]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [55]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 100
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[38]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[40]
pushi.e 532
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [42]

:[41]
push.s "obj_snowdrakemom_387"@25910
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [44]

:[43]
push.s "obj_snowdrakemom_388"@25911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_snowdrakemom_389"@25912
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_snowdrakemom_390"@25913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_snowdrakemom_391"@25915
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
push.s "obj_snowdrakemom_392"@25917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 4
conv.i.d
div.d.v
cmp.v.v LTE
bf [54]

:[53]
push.s "obj_snowdrakemom_393"@25918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
pushi.e 1
pop.v.i self.attacked

:[55]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [57]

:[56]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[57]
pushi.e -1
pop.v.i self.whatiheard

:[58]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [88]

:[59]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [88]

:[60]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [88]

:[61]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [65]

:[62]
pushi.e 0
pop.v.i global.msc
push.s "obj_snowdrakemom_426"@25920
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
pushenv [64]

:[63]
pushi.e 0
pop.v.i self.halt

:[64]
popenv [63]
pushi.e 9
pop.v.i self.whatiheard

:[65]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [71]

:[66]
pushi.e 0
pop.v.i global.msc
push.s "obj_snowdrakemom_435"@25922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_snowdrakemom_436"@25924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.xlaugh
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_snowdrakemom_439"@25926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
pushi.e 1
pop.v.i self.xlaugh
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
pushenv [70]

:[69]
pushi.e 0
pop.v.i self.halt

:[70]
popenv [69]

:[71]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [77]

:[72]
pushi.e 0
pop.v.i global.msc
push.s "obj_snowdrakemom_451"@25928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_snowdrakemom_452"@25930
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.xheckle
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_snowdrakemom_455"@25932
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[74]
pushi.e 1
pop.v.i self.xheckle
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

:[77]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [87]

:[78]
pushi.e 0
pop.v.i global.msc
push.v self.joke
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_snowdrakemom_467"@25934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[80]
push.v self.joke
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_snowdrakemom_469"@25936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.joke
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_snowdrakemom_472"@25938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 22222
pop.v.i self.mercymod

:[84]
push.v self.joke
pushi.e 1
add.i.v
pop.v.v self.joke
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
pushi.e 22222
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
bf [98]

:[96]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [98]

:[97]
call.i instance_destroy(argc=0)
popz.v

:[98]
push.v self.sinepitcher
pushi.e 1
cmp.i.v EQ
bf [end]

:[99]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.pitch
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.01
mul.d.v
add.v.v
pushglb.v global.batmusic
call.i caster_set_pitch(argc=2)
popz.v

:[end]