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
bf [45]

:[25]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [45]

:[26]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 5
pop.v.i global.turntimer

:[28]
push.v self.mycommand
pushi.e 96
cmp.i.v LT
bf [30]

:[29]
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
pushi.e 500
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.toothdist

:[30]
push.v self.mycommand
pushi.e 96
cmp.i.v GTE
bf [36]

:[31]
pushi.e 15
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
bf [33]

:[32]
pushi.e 25
pop.v.i global.firingrate

:[33]
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
bf [35]

:[34]
pushi.e 35
pop.v.i global.firingrate

:[35]
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

:[36]
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
bf [38]

:[37]
push.s "obj_icecube_377"@14478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[38]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [40]

:[39]
push.s "obj_icecube_378"@14480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.happy
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_icecube_379"@14482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
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
bf [44]

:[43]
push.s "obj_icecube_380"@14484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
pushi.e 1
pop.v.i self.attacked

:[45]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [51]

:[49]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [51]

:[50]
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[51]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [63]

:[52]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [63]

:[53]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [63]

:[54]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [58]

:[55]
pushi.e 0
pop.v.i global.msc
push.s "obj_icecube_406"@14486
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
pushenv [57]

:[56]
pushi.e 0
pop.v.i self.halt

:[57]
popenv [56]

:[58]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [62]

:[59]
pushi.e 0
pop.v.i global.msc
push.s "obj_icecube_414"@14488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 137
pop.v.i [array]global.flag
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
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.halt

:[61]
popenv [60]
pushi.e 1
pop.v.i self.happy

:[62]
pushi.e 1
pop.v.i global.heard

:[63]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[64]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[65]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[66]
call.i instance_destroy(argc=0)
popz.v

:[end]