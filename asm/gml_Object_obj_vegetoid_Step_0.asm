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
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
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

:[10]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [17]

:[11]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [14]

:[12]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [14]

:[13]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[17]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
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

:[19]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [25]

:[20]
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
pushenv [22]

:[21]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[22]
popenv [21]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [24]

:[23]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 209
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [25]

:[24]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [29]

:[26]
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
pushenv [28]

:[27]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[28]
popenv [27]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[29]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [58]

:[30]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [58]

:[31]
pushi.e 110
pop.v.i global.turntimer
pushi.e 4
pop.v.i global.firingrate
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [39]

:[32]
pushi.e 6
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
bf [34]

:[33]
pushi.e 10
pop.v.i global.firingrate

:[34]
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
bf [36]

:[35]
pushi.e 16
pop.v.i global.firingrate

:[36]
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
bf [38]

:[37]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.specgreen

:[38]
pushi.e 6
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[39]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [47]

:[40]
pushi.e 18
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
bf [42]

:[41]
pushi.e 30
pop.v.i global.firingrate

:[42]
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
bf [44]

:[43]
pushi.e 42
pop.v.i global.firingrate

:[44]
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
bf [46]

:[45]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.specgreen

:[46]
pushi.e 5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[47]
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
bf [49]

:[48]
push.s "obj_vegetoid_383"@29702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [51]

:[50]
push.s "obj_vegetoid_384"@29704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [53]

:[52]
push.s "obj_vegetoid_385"@29706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [55]

:[54]
push.s "obj_vegetoid_386"@29708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
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
bf [57]

:[56]
push.s "obj_vegetoid_387"@29710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
pushi.e 1
pop.v.i self.attacked

:[58]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [64]

:[62]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 8
cmp.i.v LT
bf [64]

:[63]
pushi.e 0
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[64]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [84]

:[65]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [84]

:[66]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [84]

:[67]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [71]

:[68]
pushi.e 0
pop.v.i global.msc
push.s "obj_vegetoid_414"@29712
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
pushenv [70]

:[69]
pushi.e 0
pop.v.i self.halt

:[70]
popenv [69]

:[71]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [73]

:[72]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[73]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [79]

:[74]
pushi.e 0
pop.v.i global.msc
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.s "obj_vegetoid_428"@29714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercy
pushi.e 8
cmp.i.v LT
bf [76]

:[75]
push.s "obj_vegetoid_431"@29716
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
pushi.e 210
pop.v.i self.sprite_index

:[76]
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
pushenv [78]

:[77]
pushi.e 0
pop.v.i self.halt

:[78]
popenv [77]

:[79]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [83]

:[80]
pushi.e 1
pop.v.i self.eat
pushi.e 0
pop.v.i global.msc
push.s "obj_vegetoid_445"@29718
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
pushenv [82]

:[81]
pushi.e 0
pop.v.i self.halt

:[82]
popenv [81]

:[83]
pushi.e 1
pop.v.i global.heard

:[84]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[85]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[86]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[87]
pushi.e 1
pushi.e -5
pushi.e 134
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]