.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [7]

:[1]
push.v self.object_index
conv.v.i
pushenv [6]

:[2]
pushi.e 0
pop.v.i self.attacked
push.v self.mypart1
conv.v.i
pushenv [5]

:[3]
push.v self.mega
pushi.e 4
cmp.i.v EQ
bf [5]

:[4]
pushi.e 2
pop.v.i self.mega

:[5]
popenv [3]

:[6]
popenv [2]

:[7]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [17]

:[8]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
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
bf [11]

:[10]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[11]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [14]

:[12]
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
bf [14]

:[13]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[14]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
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
bf [17]

:[16]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[17]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [20]

:[18]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
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

:[20]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [27]

:[21]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [24]

:[22]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [24]

:[23]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[27]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
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

:[29]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [35]

:[30]
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
pushenv [32]

:[31]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[32]
popenv [31]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [34]

:[33]
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
b [35]

:[34]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[35]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [39]

:[36]
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
pushenv [38]

:[37]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[38]
popenv [37]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[39]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [68]

:[40]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [65]

:[41]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 200
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[43]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [45]

:[44]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[45]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [49]

:[46]
pushi.e 542
pushenv [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [47]
pushi.e 542
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
b [50]

:[49]
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

:[50]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_memoryhead_420"@17105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_memoryhead_421"@17106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [56]

:[55]
push.s "obj_memoryhead_422"@17107
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [58]

:[57]
push.s "obj_memoryhead_423"@17108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.mycommand
pushi.e 95
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_memoryhead_424"@17110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [62]

:[61]
push.s "obj_memoryhead_425"@17112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
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
bf [64]

:[63]
push.s "obj_memoryhead_426"@17113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
pushi.e 1
pop.v.i self.attacked

:[65]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [67]

:[66]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[67]
pushi.e -1
pop.v.i self.whatiheard

:[68]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [104]

:[69]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [104]

:[70]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [104]

:[71]
push.v self.coherent
pushi.e 0
cmp.i.v EQ
bf [95]

:[72]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [76]

:[73]
pushi.e 0
pop.v.i global.msc
push.s "obj_memoryhead_461"@17115
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
pushenv [75]

:[74]
pushi.e 0
pop.v.i self.halt

:[75]
popenv [74]
pushi.e 9
pop.v.i self.whatiheard

:[76]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [84]

:[77]
pushi.e 0
pop.v.i global.msc
pushi.e 54
conv.i.v
call.i scr_itemget(argc=1)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_memoryhead_472"@17117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_memoryhead_474"@17119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

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
pushi.e 1
cmp.i.v EQ
bf [88]

:[85]
pushi.e 0
pop.v.i global.msc
pushglb.v global.df
pushglb.v global.adef
add.v.v
call.i string(argc=1)
pushglb.v global.at
pushglb.v global.wstrength
add.v.v
call.i string(argc=1)
push.s "obj_memoryhead_484"@17121
conv.s.v
call.i scr_gettext(argc=3)
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
pushenv [87]

:[86]
pushi.e 0
pop.v.i self.halt

:[87]
popenv [86]

:[88]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [94]

:[89]
pushi.e 0
pop.v.i global.msc
push.s "obj_memoryhead_493"@17123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.object_index
conv.v.i
pushenv [91]

:[90]
pushi.e 1
pop.v.i self.coherent
push.s "monstername_56b"@6892
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername

:[91]
popenv [90]
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
pushenv [93]

:[92]
pushi.e 0
pop.v.i self.halt

:[93]
popenv [92]

:[94]
b [103]

:[95]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [99]

:[96]
pushi.e 0
pop.v.i global.msc
push.s "obj_memoryhead_511"@17125
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
pushenv [98]

:[97]
pushi.e 0
pop.v.i self.halt

:[98]
popenv [97]
pushi.e 9
pop.v.i self.whatiheard

:[99]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [101]

:[100]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[101]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
push.i 999998
push.v self.object_index
conv.v.i
pop.v.i [stacktop]self.mercymod

:[103]
pushi.e 1
pop.v.i global.heard

:[104]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [108]

:[105]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [108]

:[106]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [108]

:[107]
call.i instance_destroy(argc=0)
popz.v

:[108]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [110]

:[109]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [111]

:[110]
push.e 0

:[111]
bf [end]

:[112]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[end]