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
call.i scr_blconmatch(argc=0)
popz.v
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 75
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

:[5]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [12]

:[6]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [9]

:[7]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [9]

:[8]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[12]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
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

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [20]

:[15]
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
pushenv [17]

:[16]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[17]
popenv [16]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [19]

:[18]
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
b [20]

:[19]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [24]

:[21]
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
pushenv [23]

:[22]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[23]
popenv [22]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[24]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [59]

:[25]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [59]

:[26]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 218
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[27]
push.v 218.ditch
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.v self.pop
pushi.e 1
sub.i.v
pop.v.v self.pop

:[29]
pushi.e 150
pop.v.i global.turntimer
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [33]

:[30]
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 100
pop.v.i global.turntimer

:[32]
pushi.e 652
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 40
sub.i.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[33]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [42]

:[34]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 218
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[35]
push.v 218.ditch
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.pop
pushi.e 1
sub.i.v
pop.v.v self.pop

:[37]
pushi.e 33
pop.v.i global.firingrate
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e 45
pop.v.i global.firingrate

:[39]
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
pushi.e 60
pop.v.i global.firingrate

:[41]
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 11
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[42]
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
bf [44]

:[43]
push.s "obj_icecap_374"@14391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_icecap_375"@14393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_icecap_376"@14395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_icecap_377"@14397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_icecap_378"@14399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.ignore
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_icecap_379"@14401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.ignore
pushi.e 1
cmp.i.v GT
bf [56]

:[55]
push.s "obj_icecap_380"@14403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
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
bf [58]

:[57]
push.s "obj_icecap_381"@14405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
pushi.e 1
pop.v.i self.attacked

:[59]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [92]

:[60]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [92]

:[61]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [92]

:[62]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [66]

:[63]
pushi.e 0
pop.v.i global.msc
push.s "obj_icecap_396"@14407
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
pushenv [65]

:[64]
pushi.e 0
pop.v.i self.halt

:[65]
popenv [64]

:[66]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [74]

:[67]
pushi.e 0
pop.v.i global.msc
push.v self.ignore
pushi.e 0
cmp.i.v GT
bf [69]

:[68]
push.s "obj_icecap_406"@14409
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_icecap_407"@14411
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[69]
push.v self.ignore
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_icecap_412"@14413
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_icecap_413"@14415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[71]
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
pushenv [73]

:[72]
pushi.e 0
pop.v.i self.halt

:[73]
popenv [72]

:[74]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [78]

:[75]
pushi.e 0
pop.v.i global.msc
push.s "obj_icecap_422"@14417
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
pushenv [77]

:[76]
pushi.e 0
pop.v.i self.halt

:[77]
popenv [76]

:[78]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [91]

:[79]
pushi.e 0
pop.v.i global.msc
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.s "obj_icecap_431"@14419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_icecap_432"@14421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [88]

:[80]
push.s "obj_icecap_435"@14423
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.m
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
pushi.e 1
pop.v.i self.m

:[85]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monster
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstertype
pushi.e 1
pop.v.i self.cube
pushi.e 219
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monsterinstance
push.v self.m
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.monster

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
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
pushenv [90]

:[89]
pushi.e 0
pop.v.i self.halt

:[90]
popenv [89]

:[91]
pushi.e 1
pop.v.i global.heard

:[92]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[93]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[94]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[95]
call.i instance_destroy(argc=0)
popz.v

:[end]