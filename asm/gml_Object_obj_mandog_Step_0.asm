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
bf [23]

:[16]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [20]

:[17]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 119
cmp.i.v LT
bf [20]

:[18]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [20]

:[19]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
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

:[25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [31]

:[26]
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
pushenv [28]

:[27]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[28]
popenv [27]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [30]

:[29]
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
b [31]

:[30]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[31]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [35]

:[32]
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
pushenv [34]

:[33]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[34]
popenv [33]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[35]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [46]

:[36]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [46]

:[37]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 172
pop.v.i global.turntimer
pushi.e 15
pop.v.i global.firingrate
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
bf [39]

:[38]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v GT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 658
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 658
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 8
pop.v.i global.border
b [43]

:[42]
pushi.e 200
pop.v.i global.turntimer
pushi.e 689
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 9
pop.v.i global.border

:[43]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [45]

:[44]
push.s "obj_mandog_474"@17058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[45]
pushi.e 1
pop.v.i self.attacked

:[46]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [91]

:[47]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [91]

:[48]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [91]

:[49]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [53]

:[50]
pushi.e 0
pop.v.i global.msc
push.s "obj_mandog_490"@17060
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
pushenv [52]

:[51]
pushi.e 0
pop.v.i self.halt

:[52]
popenv [51]

:[53]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [66]

:[54]
pushi.e 0
pop.v.i global.msc
push.v self.smell
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_mandog_498"@17062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mandog_499"@17064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[56]
push.v self.smell
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_mandog_500"@17065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mandog_501"@17067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[58]
push.v self.smell
pushi.e 2
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_mandog_502"@17069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_mandog_503"@17071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
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
push.v self.smell
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e 2
pop.v.i 220.smell

:[66]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [84]

:[67]
pushi.e 0
pop.v.i global.msc
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_mandog_513"@17073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [81]

:[69]
push.v self.smell
pushi.e 2
cmp.i.v LT
bf [71]

:[70]
push.s "obj_mandog_516"@17075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
push.v self.smell
pushi.e 2
cmp.i.v EQ
bt [73]

:[72]
push.v self.smell
pushi.e 3
cmp.i.v EQ
b [74]

:[73]
push.e 1

:[74]
bf [76]

:[75]
push.s "obj_mandog_517"@17077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.smell

:[76]
push.v self.smell
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
push.v 247.smell
pushi.e 3
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
pushi.e 999
pop.v.i 220.mercymod
pushi.e 1
pushi.e -5
pushi.e 140
pop.v.i [array]global.flag

:[81]
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
pushenv [83]

:[82]
pushi.e 0
pop.v.i self.halt

:[83]
popenv [82]

:[84]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [90]

:[85]
pushi.e 0
pop.v.i global.msc
push.s "obj_mandog_527"@17079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mandog_528"@17081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.smell
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1
pop.v.i 220.smell

:[87]
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
pushenv [89]

:[88]
pushi.e 0
pop.v.i self.halt

:[89]
popenv [88]

:[90]
pushi.e 1
pop.v.i global.heard

:[91]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[92]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[93]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[end]