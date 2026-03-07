.localvar 0 arguments

:[0]
push.v self.soundbuffer
pushi.e 1
add.i.v
pop.v.v self.soundbuffer
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
pushi.e 130
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
pushi.e 1
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
bf [27]

:[25]
push.v self.hurtsies
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 30
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.hurtsies

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
bf [247]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [247]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 160
pop.v.i global.turntimer
pushi.e 25
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
push.v self.con2
pushi.e 0
cmp.i.v GT
bf [42]

:[41]
push.v self.hp
pushi.e 5
sub.i.v
pop.v.v self.hp

:[42]
push.v self.con2
pushi.e 0
cmp.i.v EQ
bf [46]

:[43]
pushi.e 360
pop.v.i global.turntimer
pushi.e 661
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
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 130
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 135
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 140
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 220
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 225
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 230
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
pop.v.i 681.side
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [45]

:[44]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 310
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 360
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 410
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [44]

:[45]
popz.i

:[46]
push.v self.con2
pushi.e 2
cmp.i.v EQ
bf [50]

:[47]
pushi.e 260
pop.v.i global.turntimer
pushi.e 661
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
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 70
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
pop.v.i 681.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 150
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 160
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 170
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 180
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 190
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 270
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 280
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 290
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 300
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 310
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [49]

:[48]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 400
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 470
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 540
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [48]

:[49]
popz.i
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[50]
push.v self.con2
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
push.v self.hp
pushi.e 255
cmp.i.v GTE
b [53]

:[52]
push.e 0

:[53]
bf [65]

:[54]
pushi.e 220
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.g
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [56]

:[55]
push.v self.g
pushi.e 1
add.i.v
pop.v.v self.g
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 100
add.i.v
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.g
pushi.e 5
mul.i.v
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [55]

:[56]
popz.i
pushi.e 0
pop.v.i self.g
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [58]

:[57]
push.v self.g
pushi.e 1
add.i.v
pop.v.v self.g
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 150
add.i.v
push.v self.g
pushi.e 5
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [57]

:[58]
popz.i
pushi.e 0
pop.v.i self.g
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [60]

:[59]
push.v self.g
pushi.e 1
add.i.v
pop.v.v self.g
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 150
sub.i.v
push.v self.g
pushi.e 5
mul.i.v
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [59]

:[60]
popz.i
pushi.e 0
pop.v.i self.g
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [62]

:[61]
push.v self.g
pushi.e 1
add.i.v
pop.v.v self.g
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 100
add.i.v
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.g
pushi.e 5
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [61]

:[62]
popz.i
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [64]

:[63]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 270
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 310
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 360
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [63]

:[64]
popz.i
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[65]
push.v self.con2
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
push.v self.hp
pushi.e 999
cmp.i.v GTE
b [68]

:[67]
push.e 0

:[68]
bf [72]

:[69]
pushi.e 160
pop.v.i global.turntimer
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [71]

:[70]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 90
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 150
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 210
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [70]

:[71]
popz.i
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[72]
push.v self.con2
pushi.e 3
cmp.i.v EQ
bf [74]

:[73]
push.v self.hp
pushi.e 255
cmp.i.v LT
b [75]

:[74]
push.e 0

:[75]
bf [79]

:[76]
pushi.e 4
pop.v.i self.con2
pushi.e 160
pop.v.i global.turntimer
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [78]

:[77]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 90
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 150
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 210
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [77]

:[78]
popz.i
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[79]
push.v self.con2
pushi.e 5
cmp.i.v EQ
bf [108]

:[80]
push.v self.type2
pushi.e 3
cmp.i.v EQ
bf [108]

:[81]
pushi.e 4
pop.v.i self.type2
pushi.e 240
pop.v.i global.turntimer
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[82]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [89]

:[83]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [85]

:[84]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[88]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [82]

:[89]
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[90]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [97]

:[91]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [93]

:[92]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[96]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [90]

:[97]
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[98]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [105]

:[99]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [101]

:[100]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 150
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[104]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [98]

:[105]
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [107]

:[106]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 290
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 300
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 310
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [106]

:[107]
popz.i
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[108]
push.v self.con2
pushi.e 5
cmp.i.v EQ
bf [131]

:[109]
push.v self.type2
pushi.e 2
cmp.i.v EQ
bf [131]

:[110]
pushi.e 3
pop.v.i self.type2
pushi.e 220
pop.v.i global.turntimer
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice2
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice3
pushi.e 0
pop.v.i self.i

:[111]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [128]

:[112]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [114]

:[113]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[117]
push.v self.i
push.v self.choice2
cmp.v.v NEQ
bf [119]

:[118]
push.v self.i
push.v self.choice2
pushi.e 1
add.i.v
cmp.v.v NEQ
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[122]
push.v self.i
push.v self.choice3
cmp.v.v NEQ
bf [124]

:[123]
push.v self.i
push.v self.choice3
pushi.e 1
add.i.v
cmp.v.v NEQ
b [125]

:[124]
push.e 0

:[125]
bf [127]

:[126]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 170
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[127]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [111]

:[128]
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [130]

:[129]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 260
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 270
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 280
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [129]

:[130]
popz.i
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[131]
push.v self.con2
pushi.e 5
cmp.i.v EQ
bf [152]

:[132]
push.v self.type2
pushi.e 1
cmp.i.v EQ
bf [152]

:[133]
pushi.e 2
pop.v.i self.type2
pushi.e 160
pop.v.i global.turntimer
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[134]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [141]

:[135]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [137]

:[136]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[140]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [134]

:[141]
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[142]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [149]

:[143]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [145]

:[144]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 110
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[148]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [142]

:[149]
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [151]

:[150]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 170
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 180
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [150]

:[151]
popz.i
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[152]
push.v self.con2
pushi.e 5
cmp.i.v EQ
bf [165]

:[153]
push.v self.type2
pushi.e 0
cmp.i.v EQ
bf [165]

:[154]
pushi.e 1
pop.v.i self.type2
pushi.e 175
pop.v.i global.turntimer
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[155]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [162]

:[156]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [158]

:[157]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [159]

:[158]
push.e 0

:[159]
bf [161]

:[160]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[161]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [155]

:[162]
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [164]

:[163]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 170
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 180
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 190
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [163]

:[164]
popz.i
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[165]
push.v self.type2
pushi.e 4
cmp.i.v EQ
bf [167]

:[166]
pushi.e 0
pop.v.i self.type2

:[167]
push.v self.con2
push.d 17.5
cmp.d.v EQ
bf [220]

:[168]
pushi.e 460
pop.v.i global.turntimer
pushi.e 17
pop.v.i self.con2
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[169]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [176]

:[170]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [172]

:[171]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [173]

:[172]
push.e 0

:[173]
bf [175]

:[174]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[175]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [169]

:[176]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[177]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [184]

:[178]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [180]

:[179]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [181]

:[180]
push.e 0

:[181]
bf [183]

:[182]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[183]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [177]

:[184]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[185]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [192]

:[186]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [188]

:[187]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [189]

:[188]
push.e 0

:[189]
bf [191]

:[190]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 240
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[191]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [185]

:[192]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[193]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [200]

:[194]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [196]

:[195]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [197]

:[196]
push.e 0

:[197]
bf [199]

:[198]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 280
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[199]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [193]

:[200]
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[201]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [208]

:[202]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [204]

:[203]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [205]

:[204]
push.e 0

:[205]
bf [207]

:[206]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 440
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[207]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [201]

:[208]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.choice
pushi.e 0
pop.v.i self.i

:[209]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [216]

:[210]
push.v self.i
push.v self.choice
cmp.v.v NEQ
bf [212]

:[211]
push.v self.i
push.v self.choice
pushi.e 1
add.i.v
cmp.v.v NEQ
b [213]

:[212]
push.e 0

:[213]
bf [215]

:[214]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 360
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[215]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [209]

:[216]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 170
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 131
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 360
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 131
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.i

:[217]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [219]

:[218]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 690
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 131
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
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
pop.v.i [stacktop]self.type
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 131
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 690
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 131
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [217]

:[219]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg

:[220]
push.v self.con2
pushi.e 16
cmp.i.v EQ
bf [225]

:[221]
pushi.e 280
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i

:[222]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [224]

:[223]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.i
pushi.e 10
mul.i.v
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 180
add.i.v
push.v self.i
pushi.e 40
mul.i.v
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 150
add.i.v
push.v self.i
pushi.e 30
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
sub.i.v
push.v self.i
pushi.e 10
mul.i.v
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 200
sub.i.v
push.v self.i
pushi.e 10
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.i
pushi.e 40
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 280
add.i.v
push.v self.i
pushi.e 10
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [222]

:[224]
pushi.e 4
pop.v.i 681.type
pushi.e 131
pop.v.i 661.sprite_index
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg
push.d 17.5
pop.v.d self.con2

:[225]
push.v self.con2
pushi.e 15
cmp.i.v EQ
bf [230]

:[226]
pushi.e 180
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i

:[227]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [229]

:[228]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.i
pushi.e 60
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
add.i.v
push.v self.i
pushi.e 60
mul.i.v
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
add.i.v
push.v self.i
pushi.e 60
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [227]

:[229]
pushi.e 4
pop.v.i 681.type
pushi.e 131
pop.v.i 661.sprite_index
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg
pushi.e 16
pop.v.i self.con2

:[230]
push.v self.con2
pushi.e 14
cmp.i.v EQ
bf [232]

:[231]
pushi.e 180
pop.v.i global.turntimer
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 80
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 140
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 4
pop.v.i 681.type
pushi.e 131
pop.v.i 661.sprite_index
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v 681.dmg
pushi.e 15
pop.v.i self.con2

:[232]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [234]

:[233]
push.s "obj_maddummy_1152"@15845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[234]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [236]

:[235]
push.s "obj_maddummy_1153"@15847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[236]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [238]

:[237]
push.s "obj_maddummy_1154"@15849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[238]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [240]

:[239]
push.s "obj_maddummy_1155"@15851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[240]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [242]

:[241]
push.s "obj_maddummy_1156"@15853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[242]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [244]

:[243]
push.s "obj_maddummy_1157"@15855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[244]
push.v self.con2
pushi.e 5
cmp.i.v EQ
bf [246]

:[245]
push.s "obj_maddummy_1158"@15857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[246]
pushi.e 1
pop.v.i self.attacked

:[247]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [259]

:[248]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [259]

:[249]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [259]

:[250]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [254]

:[251]
pushi.e 0
pop.v.i global.msc
push.s "obj_maddummy_1174"@15859
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
pushenv [253]

:[252]
pushi.e 0
pop.v.i self.halt

:[253]
popenv [252]
pushi.e 9
pop.v.i self.whatiheard

:[254]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [258]

:[255]
pushi.e 1
pushi.e -5
pushi.e 147
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
push.s "obj_maddummy_1194"@15861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_1195"@15862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_1196"@15864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
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
pushenv [257]

:[256]
pushi.e 0
pop.v.i self.halt

:[257]
popenv [256]

:[258]
pushi.e 1
pop.v.i global.heard

:[259]
push.v self.mypart1
call.i instance_exists(argc=1)
conv.v.b
bf [261]

:[260]
push.v self.x
pushi.e 50
add.i.v
push.v self.mypart1
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 10
add.i.v
push.v self.mypart1
conv.v.i
pop.v.v [stacktop]self.y

:[261]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [265]

:[262]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [265]

:[263]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [265]

:[264]
call.i instance_destroy(argc=0)
popz.v

:[265]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [267]

:[266]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [268]

:[267]
push.e 0

:[268]
bf [271]

:[269]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [271]

:[270]
call.i instance_destroy(argc=0)
popz.v

:[271]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [273]

:[272]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [274]

:[273]
push.e 0

:[274]
bf [278]

:[275]
push.v self.blcon
conv.v.i
pushenv [277]

:[276]
call.i instance_destroy(argc=0)
popz.v

:[277]
popenv [276]
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i self.talked
pushi.e 5
pop.v.i self.con
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.mycommand

:[278]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [280]

:[279]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [281]

:[280]
push.e 0

:[281]
bf [287]

:[282]
push.v self.blcon
conv.v.i
pushenv [284]

:[283]
call.i instance_destroy(argc=0)
popz.v

:[284]
popenv [283]
pushi.e 3
pop.v.i self.con
push.v self.mypart1
conv.v.i
pushenv [286]

:[285]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[286]
popenv [285]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[287]
push.v self.talko
pushi.e 3
cmp.i.v EQ
bf [289]

:[288]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [290]

:[289]
push.e 0

:[290]
bf [295]

:[291]
push.v self.blcon
conv.v.i
pushenv [293]

:[292]
call.i instance_destroy(argc=0)
popz.v

:[293]
popenv [292]
pushi.e 0
pop.v.i self.talko
pushi.e 1
pop.v.i self.next
push.v self.con2
pushi.e 1
cmp.i.v EQ
bf [295]

:[294]
pushi.e 2
pop.v.i self.con2
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_maddummy_1259"@15866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[295]
push.v self.talko
pushi.e 2
cmp.i.v EQ
bf [297]

:[296]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [298]

:[297]
push.e 0

:[298]
bf [302]

:[299]
push.v self.blcon
conv.v.i
pushenv [301]

:[300]
call.i instance_destroy(argc=0)
popz.v

:[301]
popenv [300]
pushi.e 1
pop.v.i self.talko

:[302]
push.v self.talko
pushi.e 1
cmp.i.v EQ
bf [304]

:[303]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [305]

:[304]
push.e 0

:[305]
bf [307]

:[306]
pushi.e 2
pop.v.i self.hurtsies
pushi.e 2
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.talko

:[307]
push.v self.next
pushi.e 1
cmp.i.v EQ
bf [310]

:[308]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [310]

:[309]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [311]

:[310]
push.e 0

:[311]
bf [313]

:[312]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[313]
push.v self.con2
pushi.e 3
cmp.i.v EQ
bf [315]

:[314]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 90
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.y

:[315]
push.v self.con2
pushi.e 4
cmp.i.v EQ
bf [319]

:[316]
push.v self.mypart1
conv.v.i
pushenv [318]

:[317]
push.d 1.4
pop.v.d self.rotmod
push.d 2.4
pop.v.d self.speedmod

:[318]
popenv [317]
pushi.e 0
pop.v.i self.siner
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 5
pop.v.i self.con2

:[319]
push.v self.con2
pushi.e 5
cmp.i.v EQ
bf [328]

:[320]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v LT
bf [322]

:[321]
push.v self.siner
push.d 0.25
add.d.v
pop.v.v self.siner

:[322]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [326]

:[323]
pushglb.v global.turntimer
pushi.e 500
conv.i.d
div.d.v
push.d 0.16
sub.d.v
pop.v.v self.sinadd
push.v self.sinadd
push.d 0.02
cmp.d.v LT
bf [325]

:[324]
pushi.e 0
pop.v.i self.sinadd

:[325]
push.v self.siner
push.v self.sinadd
add.v.v
pop.v.v self.siner

:[326]
push.v self.xstart
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 200
mul.i.v
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
pop.v.v self.y
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [328]

:[327]
push.s "obj_maddummy_1313"@15867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[328]
push.v self.con2
pushi.e 6
cmp.i.v EQ
bf [336]

:[329]
push.v self.ystart
push.v self.xstart
call.i distance_to_point(argc=2)
pushi.e 20
cmp.i.v LT
bf [331]

:[330]
push.v self.speed
pushi.e 0
cmp.i.v GT
b [332]

:[331]
push.e 0

:[332]
bf [334]

:[333]
push.v self.speed
push.d 0.5
sub.d.v
pop.v.v self.speed
push.v self.speed
push.v self.ystart
push.v self.xstart
call.i move_towards_point(argc=3)
popz.v

:[334]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [336]

:[335]
pushi.e 7
pop.v.i self.con2
pushi.e 33
pop.v.i global.typer
push.s "obj_maddummy_1329"@15869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS

:[336]
push.v self.con2
pushi.e 7
cmp.i.v EQ
bf [345]

:[337]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [345]

:[338]
push.v self.mypart1
conv.v.i
pushenv [340]

:[339]
push.d 0.3
pop.v.d self.rotmod
push.d 0.1
pop.v.d self.speedmod

:[340]
popenv [339]
pushi.e 333
pop.v.i global.turntimer
push.v self.blcon
conv.v.i
pushenv [342]

:[341]
call.i instance_destroy(argc=0)
popz.v

:[342]
popenv [341]
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [344]

:[343]
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 26
sub.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 661
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 25
sub.i.v
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 26
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [343]

:[344]
popz.i
pushi.e 8
pop.v.i self.con2
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[345]
push.v self.con2
pushi.e 9
cmp.i.v EQ
bf [347]

:[346]
pushi.e 10
pop.v.i self.con2
pushi.e 33
pop.v.i global.typer
push.s "obj_maddummy_1370"@15871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_1371"@15873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_1372"@15875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_maddummy_1373"@15877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS

:[347]
push.v self.con2
pushi.e 10
cmp.i.v EQ
bf [361]

:[348]
pushi.e 999
pop.v.i global.turntimer
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [354]

:[349]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [353]

:[350]
push.v self.mypart1
conv.v.i
pushenv [352]

:[351]
pushi.e 2
pop.v.i self.rotmod
pushi.e 7
pop.v.i self.speedmod

:[352]
popenv [351]
pushi.e 134
pop.v.i 661.sprite_index

:[353]
b [361]

:[354]
push.v self.mypart1
conv.v.i
pushenv [356]

:[355]
push.d 0.1
pop.v.d self.rotmod
push.d 0.1
pop.v.d self.speedmod

:[356]
popenv [355]
pushi.e 661
pushenv [358]

:[357]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.speed
pushi.e 133
pop.v.i self.sprite_index

:[358]
popenv [357]
push.v self.blcon
conv.v.i
pushenv [360]

:[359]
call.i instance_destroy(argc=0)
popz.v

:[360]
popenv [359]
pushi.e 11
pop.v.i self.con2
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[361]
push.v self.con2
pushi.e 12
cmp.i.v EQ
bf [363]

:[362]
pushi.e 10
pop.v.i global.turntimer
pushi.e 13
pop.v.i self.con2
pushi.e 33
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_maddummy_1414"@15879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_1415"@15881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_1416"@15883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS
pushi.e 3
pop.v.i self.talko
push.s "obj_maddummy_1420"@15885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[363]
push.v self.con2
pushi.e 13
cmp.i.v EQ
bf [376]

:[364]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [374]

:[365]
push.v 784.stringno
pushi.e 0
cmp.i.v EQ
bf [369]

:[366]
push.v self.mypart1
conv.v.i
pushenv [368]

:[367]
push.d 0.8
pop.v.d self.rotmod
pushi.e 10
pop.v.i self.speedmod

:[368]
popenv [367]

:[369]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [373]

:[370]
push.v self.mypart1
conv.v.i
pushenv [372]

:[371]
push.d 1.4
pop.v.d self.rotmod
pushi.e 2
pop.v.i self.speedmod

:[372]
popenv [371]

:[373]
b [375]

:[374]
pushi.e 14
pop.v.i self.con2

:[375]
pushi.e 0
pop.v.i self.siner

:[376]
push.v self.con2
pushi.e 14
cmp.i.v EQ
bt [381]

:[377]
push.v self.con2
pushi.e 15
cmp.i.v EQ
bt [381]

:[378]
push.v self.con2
pushi.e 16
cmp.i.v EQ
bt [381]

:[379]
push.v self.con2
pushi.e 17
cmp.i.v EQ
bt [381]

:[380]
push.v self.con2
push.d 17.5
cmp.d.v EQ
b [382]

:[381]
push.e 1

:[382]
bf [388]

:[383]
push.v self.siner
push.d 0.2
add.d.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 2
mul.i.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
sub.v.v
pop.v.v self.y
push.v self.con2
pushi.e 17
cmp.i.v EQ
bf [385]

:[384]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v LT
b [386]

:[385]
push.e 0

:[386]
bf [388]

:[387]
pushi.e 10
conv.i.v
push.v self.ystart
push.v self.xstart
call.i move_towards_point(argc=3)
popz.v
pushi.e 0
pop.v.i self.next
pushi.e 18
pop.v.i self.con2

:[388]
push.v self.con2
pushi.e 18
cmp.i.v EQ
bf [392]

:[389]
pushi.e 19
pop.v.i self.con2
pushi.e 33
pop.v.i global.typer
push.v self.mypart1
conv.v.i
pushenv [391]

:[390]
pushi.e 0
pop.v.i global.msc

:[391]
popenv [390]
push.d 0.1
pop.v.d self.rotmod
push.d 0.2
pop.v.d self.speedmod
push.s "obj_maddummy_1464"@15887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_1465"@15889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_1466"@15891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_maddummy_1467"@15893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS

:[392]
push.v self.con2
pushi.e 19
cmp.i.v EQ
bf [407]

:[393]
push.v self.ystart
push.v self.xstart
call.i distance_to_point(argc=2)
pushi.e 30
cmp.i.v LT
bf [395]

:[394]
push.v self.speed
pushi.e 0
cmp.i.v GT
b [396]

:[395]
push.e 0

:[396]
bf [398]

:[397]
push.v self.speed
pushi.e 1
sub.i.v
pop.v.v self.speed
push.v self.speed
push.v self.ystart
push.v self.xstart
call.i move_towards_point(argc=3)
popz.v

:[398]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [404]

:[399]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [403]

:[400]
push.v self.mypart1
conv.v.i
pushenv [402]

:[401]
push.d 2.2
pop.v.d self.rotmod
pushi.e 5
pop.v.i self.speedmod

:[402]
popenv [401]

:[403]
b [407]

:[404]
pushi.e 20
pop.v.i self.con2
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 999
pop.v.i global.turntimer
pushi.e 660
conv.i.v
push.v self.y
push.v self.x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.knife
pushi.e 0
pop.v.i global.faceemotion
push.v self.blcon
conv.v.i
pushenv [406]

:[405]
call.i instance_destroy(argc=0)
popz.v

:[406]
popenv [405]

:[407]
push.v self.con2
pushi.e 21
cmp.i.v EQ
bf [409]

:[408]
push.s "obj_maddummy_1500"@15895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS
pushi.e 22
pop.v.i self.con2

:[409]
push.v self.con2
pushi.e 22
cmp.i.v EQ
bf [416]

:[410]
pushi.e 999
pop.v.i global.turntimer
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [416]

:[411]
push.v self.blcon
conv.v.i
pushenv [413]

:[412]
call.i instance_destroy(argc=0)
popz.v

:[413]
popenv [412]
push.v self.knife
conv.v.i
pushenv [415]

:[414]
pushi.e 9
conv.i.v
push.v 744.y
pushi.e 10
add.i.v
push.v 744.x
pushi.e 10
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[415]
popenv [414]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 23
pop.v.i self.con2
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[416]
push.v self.con2
pushi.e 24
cmp.i.v EQ
bf [418]

:[417]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 25
pop.v.i self.con2

:[418]
push.v self.con2
pushi.e 25
cmp.i.v EQ
bf [425]

:[419]
push.v self.mypart1
conv.v.i
pushenv [424]

:[420]
push.v self.rotmod
pushi.e 0
cmp.i.v GT
bf [422]

:[421]
push.v self.rotmod
push.d 0.2
sub.d.v
pop.v.v self.rotmod

:[422]
push.v self.speedmod
pushi.e 0
cmp.i.v GT
bf [424]

:[423]
push.v self.speedmod
push.d 0.2
sub.d.v
pop.v.v self.speedmod

:[424]
popenv [420]

:[425]
push.v self.con2
pushi.e 26
cmp.i.v EQ
bf [429]

:[426]
pushi.e 292
pop.v.i self.sprite_index
push.s "obj_maddummy_1539"@15897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_1540"@15899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_1541"@15901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_maddummy_1542"@15903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_maddummy_1543"@15905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_maddummy_1544"@15907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_maddummy_1545"@15909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_maddummy_1546"@15911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_maddummy_1547"@15913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_maddummy_1548"@15914
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_maddummy_1549"@15915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_maddummy_1550"@15916
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.v self.mypart1
conv.v.i
pushenv [428]

:[427]
pushi.e 0
pop.v.i self.rotmod
pushi.e 0
pop.v.i self.speedmod

:[428]
popenv [427]
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS
pushi.e 27
pop.v.i self.con2

:[429]
push.v self.con2
pushi.e 27
cmp.i.v EQ
bf [463]

:[430]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [463]

:[431]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [435]

:[432]
push.v self.mypart1
conv.v.i
pushenv [434]

:[433]
push.d 2.5
pop.v.d self.rotmod
pushi.e 5
pop.v.i self.speedmod

:[434]
popenv [433]

:[435]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [439]

:[436]
push.v self.mypart1
conv.v.i
pushenv [438]

:[437]
pushi.e 3
pop.v.i self.rotmod
pushi.e 6
pop.v.i self.speedmod

:[438]
popenv [437]

:[439]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [443]

:[440]
push.v self.mypart1
conv.v.i
pushenv [442]

:[441]
pushi.e 5
pop.v.i self.rotmod
pushi.e 6
pop.v.i self.speedmod

:[442]
popenv [441]

:[443]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
bf [447]

:[444]
push.v self.mypart1
conv.v.i
pushenv [446]

:[445]
pushi.e 0
pop.v.i self.rotmod
pushi.e 0
pop.v.i self.speedmod

:[446]
popenv [445]

:[447]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [451]

:[448]
push.v self.mypart1
conv.v.i
pushenv [450]

:[449]
pushi.e 2
pop.v.i self.rotmod
pushi.e 2
pop.v.i self.speedmod

:[450]
popenv [449]

:[451]
push.v 784.stringno
pushi.e 7
cmp.i.v EQ
bf [455]

:[452]
push.v self.mypart1
conv.v.i
pushenv [454]

:[453]
pushi.e 8
pop.v.i self.rotmod
pushi.e 3
pop.v.i self.speedmod

:[454]
popenv [453]

:[455]
push.v 784.stringno
pushi.e 8
cmp.i.v EQ
bf [459]

:[456]
push.v self.mypart1
conv.v.i
pushenv [458]

:[457]
pushi.e 12
pop.v.i self.rotmod
pushi.e 3
pop.v.i self.speedmod

:[458]
popenv [457]

:[459]
push.v 784.stringno
pushi.e 9
cmp.i.v EQ
bf [463]

:[460]
pushi.e 23
dup.i 0
push.i 0
cmp.i.i LTE
bt [462]

:[461]
pushi.e 635
conv.i.v
pushi.e -10
pushi.e 1100
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.x
pushi.e 10
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blt
pushi.e 0
push.v self.blt
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 0
push.v self.blt
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.blt
conv.v.i
pop.v.i [stacktop]self.friction
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.size
push.v self.size
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.size
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.image_yscale
pushi.e 6
push.v self.blt
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.blt
conv.v.i
push.v [stacktop]self.hspeed
pushi.e 4
conv.i.d
div.d.v
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.hspeed
pushi.e 270
push.v self.blt
conv.v.i
pop.v.i [stacktop]self.gravity_direction
pushi.e 9999
pop.v.i global.turntimer
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [461]

:[462]
popz.i
pushi.e 28
pop.v.i self.con2

:[463]
push.v self.con2
pushi.e 30
cmp.i.v EQ
bf [465]

:[464]
push.s "obj_maddummy_1613"@15918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_1614"@15920
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_1615"@15922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS
pushi.e 31
pop.v.i self.con2

:[465]
push.v self.con2
pushi.e 31
cmp.i.v EQ
bf [472]

:[466]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [472]

:[467]
push.v self.blcon
conv.v.i
pushenv [469]

:[468]
call.i instance_destroy(argc=0)
popz.v

:[469]
popenv [468]
pushi.e 635
pushenv [471]

:[470]
call.i instance_destroy(argc=0)
popz.v

:[471]
popenv [470]
pushi.e 48
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.hspeed
pushi.e 32
pop.v.i self.con2
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[472]
push.v self.con2
pushi.e 33
cmp.i.v EQ
bf [474]

:[473]
pushi.e 1365
conv.i.v
pushi.e -200
conv.i.v
push.v self.xstart
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blook
pushi.e 0
push.v self.blook
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
push.v self.blook
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 2
push.v self.blook
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.blook
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 203
push.v self.blook
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.blook
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 4
push.v self.blook
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 34
pop.v.i self.con2

:[474]
push.v self.con2
pushi.e 34
cmp.i.v EQ
bf [477]

:[475]
push.v self.blook
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.025
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.blook
conv.v.i
push.v [stacktop]self.y
pushi.e 14
cmp.i.v GT
bf [477]

:[476]
pushi.e 35
pop.v.i self.con2
pushi.e 0
push.v self.blook
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[477]
push.v self.con2
pushi.e 36
cmp.i.v EQ
bf [481]

:[478]
pushi.e 33
pop.v.i global.typer
push.s "obj_maddummy_1654"@15924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_1655"@15926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_1656"@15928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_maddummy_1657"@15930
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_maddummy_1658"@15932
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 36
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [480]

:[479]
push.s "obj_maddummy_1663"@15934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_maddummy_1664"@15936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_maddummy_1665"@15938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[480]
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS
pushi.e 37
pop.v.i self.con2

:[481]
push.v self.con2
pushi.e 37
cmp.i.v EQ
bf [492]

:[482]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [489]

:[483]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bt [485]

:[484]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
b [486]

:[485]
push.e 1

:[486]
bf [488]

:[487]
push.v self.blook
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.03
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[488]
b [492]

:[489]
pushi.e 38
pop.v.i self.con2
push.v self.blcon
conv.v.i
pushenv [491]

:[490]
call.i instance_destroy(argc=0)
popz.v

:[491]
popenv [490]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[492]
push.v self.con2
pushi.e 39
cmp.i.v EQ
bf [end]

:[493]
pushi.e 10
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 40
pop.v.i self.con2

:[end]