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
bf [64]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [61]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
pushi.e 388
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [38]

:[37]
push.v global.firingrate
pushi.e 5
add.i.v
pop.v.v global.firingrate

:[38]
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 2.8
mul.d.v
pop.v.v global.firingrate

:[40]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[42]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [44]

:[43]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 383
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
b [48]

:[47]
pushi.e 381
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

:[48]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_finalfroggit_440"@12760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_finalfroggit_441"@12762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_finalfroggit_442"@12764
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [56]

:[55]
push.s "obj_finalfroggit_443"@12766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [58]

:[57]
push.s "obj_finalfroggit_444"@12768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
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
cmp.v.v LT
bf [60]

:[59]
push.s "obj_finalfroggit_445"@12770
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
pushi.e 1
pop.v.i self.attacked

:[61]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [63]

:[62]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[63]
pushi.e -1
pop.v.i self.whatiheard

:[64]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [87]

:[65]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [87]

:[66]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [87]

:[67]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [71]

:[68]
pushi.e 0
pop.v.i global.msc
push.s "obj_finalfroggit_480"@12772
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
pushenv [70]

:[69]
pushi.e 0
pop.v.i self.halt

:[70]
popenv [69]
pushi.e 9
pop.v.i self.whatiheard

:[71]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [75]

:[72]
pushi.e 0
pop.v.i global.msc
push.s "obj_finalfroggit_489"@12774
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsteratk
pushi.e 2
sub.i.v
pop.i.v [array]global.monsteratk
push.v self.mercymod
pushi.e 40
add.i.v
pop.v.v self.mercymod
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
pushenv [74]

:[73]
pushi.e 0
pop.v.i self.halt

:[74]
popenv [73]

:[75]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [79]

:[76]
pushi.e 0
pop.v.i global.msc
push.s "obj_finalfroggit_501"@12776
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterdef
pushi.e 20
sub.i.v
pop.i.v [array]global.monsterdef
push.v self.mercymod
pushi.e 40
add.i.v
pop.v.v self.mercymod
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

:[79]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [86]

:[80]
pushi.e 0
pop.v.i global.msc
push.v self.mercymod
pushi.e 200
cmp.i.v LT
bf [82]

:[81]
push.s "obj_finalfroggit_514"@12778
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_finalfroggit_515"@12780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 200
pop.v.i self.mercymod
b [83]

:[82]
push.s "obj_finalfroggit_520"@12782
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
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
pushenv [85]

:[84]
pushi.e 0
pop.v.i self.halt

:[85]
popenv [84]

:[86]
pushi.e 1
pop.v.i global.heard

:[87]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [91]

:[88]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [91]

:[89]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [91]

:[90]
call.i instance_destroy(argc=0)
popz.v

:[91]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [93]

:[92]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [end]

:[95]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[96]
call.i instance_destroy(argc=0)
popz.v

:[end]