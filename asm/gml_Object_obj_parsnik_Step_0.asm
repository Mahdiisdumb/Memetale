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
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.i self.eat

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
bf [75]

:[40]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [72]

:[41]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
pop.v.i global.turntimer
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [49]

:[42]
pushi.e 4
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 1
cmp.i.v GT
bf [44]

:[43]
pushi.e 7
pop.v.i global.firingrate

:[44]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
pushi.e 11
pop.v.i global.firingrate

:[46]
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.eat
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.specgreen

:[48]
pushi.e 6
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[49]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [57]

:[50]
pushi.e 12
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
pushi.e 22
pop.v.i global.firingrate

:[52]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [54]

:[53]
pushi.e 30
pop.v.i global.firingrate

:[54]
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.eat
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.specgreen

:[56]
pushi.e 5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[57]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [59]

:[58]
push.s "obj_parsnik_431"@21341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_parsnik_432"@21343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_parsnik_433"@21345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [65]

:[64]
push.s "obj_parsnik_434"@21347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [67]

:[66]
push.s "obj_parsnik_435"@21349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [69]

:[68]
push.s "obj_parsnik_436"@21351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
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
bf [71]

:[70]
push.s "obj_parsnik_437"@21353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
pushi.e 1
pop.v.i self.attacked

:[72]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [74]

:[73]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[74]
pushi.e -1
pop.v.i self.whatiheard

:[75]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [81]

:[79]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 8
cmp.i.v LT
bf [81]

:[80]
pushi.e 0
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[81]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [101]

:[82]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [101]

:[83]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [101]

:[84]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [88]

:[85]
pushi.e 0
pop.v.i global.msc
push.s "obj_parsnik_478"@21355
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
pushenv [87]

:[86]
pushi.e 0
pop.v.i self.halt

:[87]
popenv [86]
pushi.e 9
pop.v.i self.whatiheard

:[88]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [90]

:[89]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[90]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [96]

:[91]
pushi.e 0
pop.v.i global.msc
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.s "obj_parsnik_495"@21357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercy
pushi.e 8
cmp.i.v LT
bf [93]

:[92]
push.s "obj_parsnik_498"@21359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 91
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 60
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause

:[93]
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
pushenv [95]

:[94]
pushi.e 0
pop.v.i self.halt

:[95]
popenv [94]

:[96]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [100]

:[97]
pushi.e 1
pop.v.i self.eat
pushi.e 0
pop.v.i global.msc
push.s "obj_parsnik_512"@21361
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
pushenv [99]

:[98]
pushi.e 0
pop.v.i self.halt

:[99]
popenv [98]

:[100]
pushi.e 1
pop.v.i global.heard

:[101]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [105]

:[102]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [105]

:[103]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [105]

:[104]
call.i instance_destroy(argc=0)
popz.v

:[105]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [107]

:[106]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [end]

:[109]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[110]
call.i instance_destroy(argc=0)
popz.v

:[end]