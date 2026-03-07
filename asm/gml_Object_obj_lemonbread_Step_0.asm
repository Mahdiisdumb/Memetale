.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [3]

:[1]
pushi.e 0
pop.v.i self.attacked
push.v self.mypart1
conv.v.i
push.v [stacktop]self.melting
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
pushi.e 4
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.melting

:[3]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [13]

:[4]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
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
bf [7]

:[6]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[7]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
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
bf [10]

:[9]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[10]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
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
bf [13]

:[12]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[13]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [16]

:[14]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
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

:[16]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [23]

:[17]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
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
bf [56]

:[36]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [53]

:[37]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[39]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[41]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [43]

:[42]
pushi.e 525
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
b [44]

:[43]
pushi.e 548
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 190
pop.v.i global.turntimer

:[44]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_lemonbread_429"@15539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_lemonbread_433"@15541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [50]

:[49]
push.s "obj_lemonbread_434"@15543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
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
bf [52]

:[51]
push.s "obj_lemonbread_435"@15544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
pushi.e 1
pop.v.i self.attacked

:[53]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [55]

:[54]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[55]
pushi.e -1
pop.v.i self.whatiheard

:[56]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [111]

:[57]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [111]

:[58]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [111]

:[59]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [63]

:[60]
pushi.e 0
pop.v.i global.msc
push.s "obj_lemonbread_468"@15546
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
pushenv [62]

:[61]
pushi.e 0
pop.v.i self.halt

:[62]
popenv [61]
pushi.e 9
pop.v.i self.whatiheard

:[63]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [76]

:[64]
pushi.e 0
pop.v.i global.msc
push.v self.hum
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_lemonbread_479"@15548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.hum
b [67]

:[66]
push.s "obj_lemonbread_483"@15550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.hum
pushi.e 1
cmp.i.v EQ
bf [70]

:[68]
push.v self.hug
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.v self.flex
pushi.e 1
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.s "obj_lemonbread_488"@15552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.i 99999
pop.v.i self.mercymod

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
pushi.e 1
cmp.i.v EQ
bf [80]

:[77]
pushi.e 0
pop.v.i global.msc
push.s "obj_lemonbread_501"@15554
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
pushenv [79]

:[78]
pushi.e 0
pop.v.i self.halt

:[79]
popenv [78]

:[80]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [93]

:[81]
pushi.e 0
pop.v.i global.msc
push.v self.flex
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_lemonbread_512"@15556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.flex
b [84]

:[83]
push.s "obj_lemonbread_516"@15558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.v self.hum
pushi.e 1
cmp.i.v EQ
bf [87]

:[85]
push.v self.hug
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.v self.flex
pushi.e 1
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
push.s "obj_lemonbread_521"@15560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.i 99999
pop.v.i self.mercymod

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
pushi.e 2
cmp.i.v EQ
bf [106]

:[94]
pushi.e 0
pop.v.i global.msc
push.v self.hug
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_lemonbread_536"@15562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.hug
b [97]

:[96]
push.s "obj_lemonbread_540"@15564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[97]
push.v self.hum
pushi.e 1
cmp.i.v EQ
bf [100]

:[98]
push.v self.hug
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.v self.flex
pushi.e 1
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
push.s "obj_lemonbread_545"@15566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.i 99999
pop.v.i self.mercymod

:[103]
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
pushenv [105]

:[104]
pushi.e 0
pop.v.i self.halt

:[105]
popenv [104]

:[106]
push.v self.whatiheard
pushi.e 5
cmp.i.v EQ
bf [110]

:[107]
pushi.e 0
pop.v.i global.msc
push.s "obj_lemonbread_556"@15568
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
pushenv [109]

:[108]
pushi.e 0
pop.v.i self.halt

:[109]
popenv [108]

:[110]
pushi.e 1
pop.v.i global.heard

:[111]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [115]

:[112]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [115]

:[113]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [115]

:[114]
call.i instance_destroy(argc=0)
popz.v

:[115]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [117]

:[116]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [end]

:[119]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[120]
call.i instance_destroy(argc=0)
popz.v

:[end]