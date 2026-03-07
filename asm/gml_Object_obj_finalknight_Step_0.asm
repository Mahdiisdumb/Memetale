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
bf [66]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [60]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
pop.v.i global.turntimer
pushi.e 7
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
push.v self.asleep
pushi.e 0
cmp.i.v EQ
bf [47]

:[41]
push.v self.mycommand
pushi.e 75
cmp.i.v GT
bf [43]

:[42]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 150
pop.v.i global.turntimer
pushi.e 371
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
b [47]

:[46]
pushi.e 9
pop.v.i global.firingrate
pushi.e 378
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[47]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [49]

:[48]
push.s "obj_finalknight_515"@12800
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [51]

:[50]
push.s "obj_finalknight_516"@12802
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [53]

:[52]
push.s "obj_finalknight_517"@12804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [55]

:[54]
push.s "obj_finalknight_518"@12806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [57]

:[56]
push.s "obj_finalknight_519"@12808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.asleep
pushi.e 0
cmp.i.v GT
bf [59]

:[58]
push.s "obj_finalknight_520"@12810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
pushi.e 1
pop.v.i self.attacked

:[60]
push.v self.asleep
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 1
pop.v.i self.attacked
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[65]
pushi.e -1
pop.v.i self.whatiheard

:[66]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [104]

:[67]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [104]

:[68]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [104]

:[69]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [73]

:[70]
pushi.e 0
pop.v.i global.msc
push.s "obj_finalknight_553"@12812
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
bf [81]

:[74]
pushi.e 0
pop.v.i global.msc
push.s "obj_finalknight_562"@12814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.talk
pushi.e 1
add.i.v
pop.v.v self.talk
push.v self.talk
pushi.e 3
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_finalknight_566"@12816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[76]
push.v self.asleep
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.s "obj_finalknight_570"@12818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.talk

:[78]
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
pushenv [80]

:[79]
pushi.e 0
pop.v.i self.halt

:[80]
popenv [79]

:[81]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [103]

:[82]
pushi.e 0
pop.v.i global.msc
push.v self.mercymod
pushi.e 20
add.i.v
pop.v.v self.mercymod
push.v self.sleepy
pushi.e 0
cmp.i.v EQ
bf [85]

:[83]
push.s "obj_finalknight_586"@12820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 81
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [85]

:[84]
push.s "obj_finalknight_588"@12822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[85]
push.v self.sleepy
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.s "obj_finalknight_592"@12824
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[87]
push.v self.asleep
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.s "obj_finalknight_596"@12826
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[89]
push.v self.sleepy
pushi.e 1
cmp.i.v GT
bf [91]

:[90]
push.v self.asleep
pushi.e 0
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
push.s "obj_finalknight_601"@12828
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 200
pop.v.i self.mercymod
pushi.e 1
pop.v.i self.asleep
pushi.e -30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[94]
push.v self.sleepy
pushi.e 1
add.i.v
pop.v.v self.sleepy
pushi.e -5
pushi.e 81
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [96]

:[95]
push.v self.sleepy
pushi.e 1
add.i.v
pop.v.v self.sleepy

:[96]
push.v self.sleepy
pushi.e 0
cmp.i.v GT
bf [98]

:[97]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.asleep

:[98]
push.v self.asleep
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e 2
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.asleep

:[100]
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
pushenv [102]

:[101]
pushi.e 0
pop.v.i self.halt

:[102]
popenv [101]

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