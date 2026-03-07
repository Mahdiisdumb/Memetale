.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i 744.movement

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
bf [50]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [47]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[38]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[40]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 240
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 170
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 170
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 190
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 190
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 90
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 320
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 480
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 700
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 700
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 700
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 700
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed

:[42]
push.v self.turns
pushi.e 0
cmp.i.v GT
bf [46]

:[43]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [45]

:[44]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 220
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 60
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 140
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 220
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 300
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 380
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 460
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 540
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 620
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 1250
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -7.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 1330
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -7.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
b [46]

:[45]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 150
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 210
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 310
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 110
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 210
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 310
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 4
pop.v.i 653.speed
pushi.e 150
pop.v.i global.turntimer

:[46]
pushi.e 1
pop.v.i self.turns
push.s "obj_ripoff_papyrus_570"@23365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.attacked

:[47]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [49]

:[48]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[49]
pushi.e -1
pop.v.i self.whatiheard

:[50]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [90]

:[51]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [90]

:[52]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [90]

:[53]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [62]

:[54]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [56]

:[55]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[56]
popenv [55]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_papyrus_607"@23367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_papyrus_608"@23369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [59]

:[57]
push.s "obj_ripoff_papyrus_611"@23371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight
push.v 561.mercyno
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_ripoff_papyrus_617"@23373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_papyrus_618"@23375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[59]
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
pushi.e 9
pop.v.i self.whatiheard

:[62]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [71]

:[63]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [65]

:[64]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[65]
popenv [64]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_papyrus_632"@23377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_papyrus_633"@23379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [68]

:[66]
push.s "obj_ripoff_papyrus_636"@23380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight
push.v 561.mercyno
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_ripoff_papyrus_642"@23381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_papyrus_643"@23382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[68]
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
pushi.e 1
cmp.i.v EQ
bf [80]

:[72]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [74]

:[73]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[74]
popenv [73]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_papyrus_657"@23384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_papyrus_658"@23386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [77]

:[75]
push.s "obj_ripoff_papyrus_661"@23387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight
push.v 561.mercyno
pushi.e 0
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_ripoff_papyrus_667"@23388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_papyrus_668"@23389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[77]
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
bf [89]

:[81]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [83]

:[82]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[83]
popenv [82]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_papyrus_682"@23391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_papyrus_683"@23393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [86]

:[84]
push.s "obj_ripoff_papyrus_686"@23395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight
push.v 561.mercyno
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_ripoff_papyrus_692"@23396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_papyrus_693"@23397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[86]
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
pushi.e 1
pop.v.i global.heard

:[90]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [94]

:[91]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [94]

:[92]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [94]

:[93]
call.i instance_destroy(argc=0)
popz.v

:[94]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [96]

:[95]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [100]

:[98]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [100]

:[99]
call.i instance_destroy(argc=0)
popz.v

:[100]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LTE
bf [102]

:[101]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
pushi.e 0
pop.v.i 744.vspeed
pushi.e 0
pop.v.i 744.jumpstage
pushi.e -1
pop.v.i global.turntimer
pushi.e 0
pop.v.i 744.movement
pushi.e 0
pop.v.i 744.gravity
pushi.e 0
pop.v.i 744.vspeed
pushi.e 3
pop.v.i global.mnfight

:[105]
pushglb.v global.mnfight
pushi.e 5
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
bf [123]

:[109]
push.v self.saved
pushi.e 1
cmp.i.v EQ
bf [117]

:[110]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [112]

:[111]
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[112]
pushi.e 1668
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 561
pushenv [116]

:[115]
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.face

:[116]
popenv [115]
pushi.e 2
pop.v.i self.saved
pushi.e 3
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[117]
push.v self.saved
pushi.e 3
cmp.i.v EQ
bf [123]

:[118]
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 22
pop.v.i global.typer
push.s "obj_ripoff_papyrus_767"@23399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 20
conv.i.v
pushi.e 200
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 561
pushenv [122]

:[119]
pushi.e 0
pop.v.i global.msc
pushi.e 80
pop.v.i global.typer
push.s "obj_ripoff_papyrus_774"@23401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [121]

:[120]
pushi.e 140
conv.i.v
pushi.e 340
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
b [122]

:[121]
pushi.e 140
conv.i.v
pushi.e 200
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 39
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[122]
popenv [119]
pushi.e 4
pop.v.i self.saved

:[123]
push.v self.saved
pushi.e 4
cmp.i.v EQ
bf [127]

:[124]
push.v self.writer
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [127]

:[125]
push.v 561.writer
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [127]

:[126]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [128]

:[127]
push.e 0

:[128]
bf [134]

:[129]
push.v self.writer
conv.v.i
pushenv [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
popenv [130]
push.v 561.writer
conv.v.i
pushenv [133]

:[132]
call.i instance_destroy(argc=0)
popz.v

:[133]
popenv [132]
pushi.e 558
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.saved
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 34
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[134]
push.v self.saved
pushi.e 6
cmp.i.v EQ
bf [end]

:[135]
pushi.e 256
pop.v.i global.battlegroup
pushi.e 1
pushi.e -5
pushi.e 507
pop.v.i [array]global.flag
call.i room_restart(argc=0)
popz.v

:[end]