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
bf [66]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [65]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 180
pop.v.i global.turntimer
pushi.e 9
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
pushi.e 50
cmp.i.v LT
bf [42]

:[41]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 180
pop.v.i global.turntimer
pushi.e 341
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

:[45]
pushi.e 40
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [47]

:[46]
pushglb.v global.firingrate
push.d 2.6
mul.d.v
pop.v.v global.firingrate

:[47]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [49]

:[48]
pushglb.v global.firingrate
push.d 1.1
mul.d.v
pop.v.v global.firingrate

:[49]
pushi.e 347
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

:[50]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_pyrope_492"@21839
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
push.s "obj_pyrope_493"@21841
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
push.s "obj_pyrope_494"@21843
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
push.s "obj_pyrope_495"@21845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_pyrope_496"@21847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.heat
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_pyrope_497"@21849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.heat
pushi.e 1
cmp.i.v GT
bf [64]

:[63]
push.s "obj_pyrope_498"@21851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
pushi.e 1
pop.v.i self.attacked

:[65]
pushi.e -1
pop.v.i self.whatiheard

:[66]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [119]

:[67]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [119]

:[68]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [119]

:[69]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [73]

:[70]
pushi.e 0
pop.v.i global.msc
push.s "obj_pyrope_524"@21853
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
pushenv [72]

:[71]
pushi.e 0
pop.v.i self.halt

:[72]
popenv [71]
pushi.e 9
pop.v.i self.whatiheard

:[73]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [85]

:[74]
pushi.e 342
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [78]

:[75]
pushi.e 342
pushenv [77]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[77]
popenv [76]

:[78]
pushi.e 0
pop.v.i global.msc
push.s "obj_pyrope_534"@21855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 344
pushenv [82]

:[79]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pushi.e 2
cmp.i.v GT
bf [81]

:[80]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsteratk
pushi.e 2
sub.i.v
pop.i.v [array]global.monsteratk

:[81]
pushi.e 0
pop.v.i self.heat
pushi.e -200
pop.v.i self.mercymod
pushi.e 3
pop.v.i self.whatiheard

:[82]
popenv [79]
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
pushi.e 1
cmp.i.v EQ
bf [114]

:[86]
pushi.e 0
pop.v.i global.msc
pushi.e 344
pushenv [88]

:[87]
pushi.e 1
pop.v.i self.whatiheard

:[88]
popenv [87]
pushi.e 344
pushenv [90]

:[89]
push.v self.mercymod
pushi.e 30
add.i.v
pop.v.v self.mercymod

:[90]
popenv [89]
pushi.e 344
pushenv [92]

:[91]
push.v self.heat
pushi.e 1
add.i.v
pop.v.v self.heat

:[92]
popenv [91]
push.v self.heat
pushi.e 1
cmp.i.v GT
bf [96]

:[93]
pushi.e 344
pushenv [95]

:[94]
pushi.e 900
pop.v.i self.mercymod

:[95]
popenv [94]

:[96]
push.s "obj_pyrope_555"@21857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.heat
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_pyrope_556"@21859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[98]
push.v self.heat
pushi.e 2
cmp.i.v GT
bf [100]

:[99]
push.s "obj_pyrope_557"@21861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[100]
push.v self.heat
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 342
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
pushi.e 342
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[105]
push.v self.heat
pushi.e 1
cmp.i.v GT
bf [107]

:[106]
pushi.e 342
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [108]

:[107]
push.e 0

:[108]
bf [111]

:[109]
push.v 342.cfactor
pushi.e 30
cmp.i.v LT
bf [111]

:[110]
push.v 342.cfactor
pushi.e 2
add.i.v
pop.v.v 342.cfactor

:[111]
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
pushi.e 4
cmp.i.v EQ
bf [118]

:[115]
pushi.e 0
pop.v.i global.msc
push.s "obj_pyrope_571"@21863
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
pushi.e 1
pop.v.i global.heard

:[119]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [123]

:[120]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [123]

:[121]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [125]

:[124]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [end]

:[127]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[128]
call.i instance_destroy(argc=0)
popz.v

:[end]