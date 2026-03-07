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
pushi.e 70
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
pushi.e 207
pop.v.i self.sprite_index
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
bf [63]

:[25]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [63]

:[26]
pushi.e 110
pop.v.i global.turntimer
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
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2
pop.v.i self.mycommand

:[28]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [38]

:[29]
pushi.e 13
pop.v.i global.firingrate
push.v self.mercymod
pushi.e 0
cmp.i.v LT
bf [31]

:[30]
push.v global.firingrate
pushi.e 6
sub.i.v
pop.v.v global.firingrate

:[31]
push.v self.mercymod
pushi.e 6
cmp.i.v GT
bf [33]

:[32]
push.v global.firingrate
pushi.e 5
add.i.v
pop.v.v global.firingrate

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
pushi.e 1
cmp.i.v GT
bf [35]

:[34]
pushglb.v global.firingrate
push.d 1.5
mul.d.v
pop.v.v global.firingrate

:[35]
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
bf [37]

:[36]
pushglb.v global.firingrate
pushi.e 2
mul.i.v
pop.v.v global.firingrate

:[37]
pushi.e 716
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[38]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [48]

:[39]
pushi.e 15
pop.v.i global.firingrate
push.v self.mercymod
pushi.e 0
cmp.i.v LT
bf [41]

:[40]
push.v global.firingrate
pushi.e 6
sub.i.v
pop.v.v global.firingrate

:[41]
push.v self.mercymod
pushi.e 6
cmp.i.v GT
bf [43]

:[42]
push.v global.firingrate
pushi.e 5
add.i.v
pop.v.v global.firingrate

:[43]
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
bf [45]

:[44]
pushglb.v global.firingrate
push.d 1.5
mul.d.v
pop.v.v global.firingrate

:[45]
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
bf [47]

:[46]
pushglb.v global.firingrate
pushi.e 2
mul.i.v
pop.v.v global.firingrate

:[47]
pushi.e 716
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[48]
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
bf [50]

:[49]
push.s "obj_loox_403"@15783
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
push.s "obj_loox_404"@15785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_loox_405"@15787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [56]

:[55]
push.s "obj_loox_406"@15789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.mercymod
pushi.e -100
cmp.i.v LT
bf [58]

:[57]
push.s "obj_loox_407"@15791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [60]

:[59]
push.s "obj_loox_408"@15793
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
push.s "obj_loox_409"@15795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
pushi.e 1
pop.v.i self.attacked

:[63]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [82]

:[64]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [82]

:[65]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [82]

:[66]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [70]

:[67]
pushi.e 0
pop.v.i global.msc
push.s "obj_loox_425"@15797
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
pushenv [69]

:[68]
pushi.e 0
pop.v.i self.halt

:[69]
popenv [68]

:[70]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [77]

:[71]
push.v self.mercymod
pushi.e 100
cmp.i.v LT
bf [73]

:[72]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.xpreward
pushi.e 20
cmp.i.v LT
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.xpreward
pushi.e 5
add.i.v
pop.i.v [array]global.xpreward

:[76]
pushi.e -100
pop.v.i self.mercymod
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[77]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [81]

:[78]
pushi.e 1
pushi.e -5
pushi.e 133
pop.v.i [array]global.flag
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.xpreward
pushi.e 4
cmp.i.v GT
bf [80]

:[79]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.xpreward
pushi.e 2
sub.i.v
pop.i.v [array]global.xpreward

:[80]
pushi.e 100
pop.v.i self.mercymod
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[81]
pushi.e 1
pop.v.i global.heard

:[82]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[83]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[84]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[end]