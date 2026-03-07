.localvar 0 arguments

:[0]
push.v self.ditch
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [12]

:[4]
pushi.e 0
pop.v.i self.talked
push.v self.image_alpha
push.d 0.05
cmp.d.v GT
bf [6]

:[5]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[6]
pushglb.v global.turn
push.v self.thisturn
sub.v.v
pop.v.v self.thisturn2
push.v self.thisturn2
pushi.e 2
cmp.i.v GTE
bf [8]

:[7]
call.i scr_monstersum(argc=0)
pushi.e 0
cmp.i.v GT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 0
pop.v.i self.ditch

:[11]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster

:[12]
push.v self.ditch
pushi.e 0
cmp.i.v EQ
bf [15]

:[13]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [15]

:[14]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[15]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.attacked

:[17]
call.i scr_blconmatch(argc=0)
popz.v
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
pushi.e 100
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
pushi.e 5
conv.i.d
div.d.v
call.i ceil(argc=1)
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
push.v self.normalgfx
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
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
bf [73]

:[40]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [73]

:[41]
push.v self.ditch
pushi.e 0
cmp.i.v EQ
bf [47]

:[42]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v GT
bf [46]

:[43]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [45]

:[44]
pushi.e 1
pop.v.i global.turntimer

:[45]
pushi.e 10
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
b [47]

:[46]
pushi.e 3
pop.v.i global.mnfight

:[47]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [48]

:[48]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [49]

:[49]
push.v self.ditch
pushi.e 0
cmp.i.v EQ
bf [62]

:[50]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_jerry_407"@14585
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
push.s "obj_jerry_408"@14587
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
push.s "obj_jerry_409"@14589
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
push.s "obj_jerry_410"@14591
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
push.s "obj_jerry_411"@14593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LT
bf [62]

:[61]
push.s "obj_jerry_412"@14595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.ditch
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
push.v self.thisturn2
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.s "obj_jerry_414"@14597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.ditch
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
push.v self.thisturn2
pushi.e 2
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.s "obj_jerry_415"@14599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
pushi.e 1
pop.v.i self.attacked

:[73]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [79]

:[77]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [79]

:[78]
pushi.e 0
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[79]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [81]

:[80]
push.v self.ditch
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [94]

:[83]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [94]

:[84]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [94]

:[85]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [89]

:[86]
pushi.e 0
pop.v.i global.msc
push.s "obj_jerry_442"@14601
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
pushenv [88]

:[87]
pushi.e 0
pop.v.i self.halt

:[88]
popenv [87]

:[89]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [93]

:[90]
pushi.e 0
pop.v.i global.msc
push.s "obj_jerry_450"@14603
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
pushenv [92]

:[91]
pushi.e 0
pop.v.i self.halt

:[92]
popenv [91]
pushi.e 1
pop.v.i self.ditch
pushglb.v global.turn
pop.v.v self.thisturn

:[93]
pushi.e 1
pop.v.i global.heard

:[94]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [96]

:[95]
push.v self.ditch
pushi.e 0
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [end]

:[98]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[99]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[100]
call.i instance_destroy(argc=0)
popz.v

:[end]