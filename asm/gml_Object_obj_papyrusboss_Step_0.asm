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
pushi.e 320
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 2
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
bf [17]

:[16]
push.v self.talkify
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [25]

:[19]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [22]

:[20]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [22]

:[21]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[25]
push.v self.talkify
pushi.e 1
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
bf [34]

:[29]
pushi.e -2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.blconwd
conv.v.i
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
push.v self.blcon
conv.v.i
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 0
pop.v.i self.talkify
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 2
pop.v.i global.mnfight

:[34]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
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

:[36]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [42]

:[37]
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
pushenv [39]

:[38]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[39]
popenv [38]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [41]

:[40]
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [42]

:[41]
pushi.e 0
pop.v.i global.myfight
pushi.e 99
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[42]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [46]

:[43]
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
pushenv [45]

:[44]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[45]
popenv [44]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[46]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [268]

:[47]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [258]

:[48]
pushi.e 4
pop.v.i global.turntimer
pushi.e 15
pop.v.i global.firingrate
push.v self.truefight
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
b [51]

:[50]
push.e 0

:[51]
bf [61]

:[52]
pushi.e 140
pop.v.i global.turntimer
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 2
pop.v.i global.turntimer

:[54]
pushi.e 5
pop.v.i global.border
pushi.e 20
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.bz
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
push.v self.bz
add.v.i
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
conv.v.i
pushenv [56]

:[55]
pushi.e -3
pop.v.i self.hspeed

:[56]
popenv [55]
pushi.e 20
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.bz
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
push.v self.bz
add.v.i
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
conv.v.i
pushenv [58]

:[57]
pushi.e -3
pop.v.i self.hspeed

:[58]
popenv [57]
pushi.e 20
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.bz
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
push.v self.bz
add.v.i
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 170
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
conv.v.i
pushenv [60]

:[59]
pushi.e -3
pop.v.i self.hspeed

:[60]
popenv [59]

:[61]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e 52
pop.v.i 744.sprite_index

:[63]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.v self.fighto
pushi.e 15
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushi.e 4
pop.v.i self.dontcancel
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 1300
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 1900
add.i.v
pop.v.v self.k
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
pushi.e 4
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
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 160
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
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 210
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
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 360
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 360
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
pushi.e 540
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 540
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 640
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 640
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 740
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 40
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 740
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 40
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 890
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 40
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 890
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 40
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 1090
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 1120
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 1150
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 1340
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 1370
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 1400
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 638
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 2000
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 638
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 2240
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 85
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 638
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 2280
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 87
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 638
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 2500
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 89
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 638
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 2540
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 91
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 638
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 2220
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 93
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 70
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 130
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 190
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 250
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 310
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 370
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 430
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 639
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.k
pushi.e 490
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 640
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 240
sub.i.v
push.v self.k
pushi.e 550
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 970
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 16
pop.v.i self.fighto

:[68]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [71]

:[69]
push.v self.fighto
pushi.e 14
cmp.i.v EQ
bf [71]

:[70]
push.v self.xfight
pushi.e 3
cmp.i.v GT
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 15
pop.v.i self.fighto
pushi.e 0
pop.v.i self.xfight
pushi.e 1
pop.v.i self.dontcancel
pushi.e 50
pop.v.i global.border
pushi.e 641
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 80
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[74]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.v self.fighto
pushi.e 14
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [89]

:[78]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[80]
push.v self.xfight
pushi.e 1
add.i.v
pop.v.v self.xfight
push.v self.mycommand
pushi.e 20
cmp.i.v LT
bf [82]

:[81]
pushi.e 210
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 120
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
pushi.e 150
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 180
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 210
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
pushi.e 240
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 680
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 720
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 760
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
pushi.e 800
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 840
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 880
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
pushi.e 920
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed

:[82]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [84]

:[83]
push.v self.mycommand
pushi.e 40
cmp.i.v LT
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
pushi.e 200
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
pushi.e 10
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
pushi.e 90
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
pushi.e 170
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
pushi.e 250
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
pushi.e 330
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
pushi.e 410
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
pushi.e 490
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
pushi.e 570
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
pushi.e 1150
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -8
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
pushi.e 1230
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -8
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue

:[87]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [89]

:[88]
pushi.e 11
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pop.v.v self.fighto

:[89]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.v self.fighto
pushi.e 13
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [96]

:[93]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[95]
pushi.e 220
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 60
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 240
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 270
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 300
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 460
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 460
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 40
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 580
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
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 580
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 40
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax

:[96]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.v self.fighto
pushi.e 12
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [103]

:[100]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[102]
pushi.e 200
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 87
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 114
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
pushi.e 141
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 168
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 195
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
pushi.e 222
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 600
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 640
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 680
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
pushi.e 720
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 760
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 800
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
pushi.e 840
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -6.4
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed

:[103]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.v self.fighto
pushi.e 11
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [110]

:[107]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[109]
pushi.e 250
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
push.d -4.5
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
pushi.e 140
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -4.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
push.d -4.5
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
pushi.e 300
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -4.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
push.d -4.5
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
pushi.e 460
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -4.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
push.d -4.5
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
pushi.e 620
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d -4.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
pushi.e -7
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
pushi.e 1330
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -7
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue

:[110]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.v self.fighto
pushi.e 10
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
bf [117]

:[114]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[116]
pushi.e 230
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
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
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
pushi.e 90
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 80
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
pushi.e 100
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 80
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
pushi.e 100
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
pushi.e 100
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 280
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
pushi.e 100
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 280
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 295
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
pushi.e 90
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 295
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
pushi.e 310
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
pushi.e 310
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 600
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 620
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 640
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 60
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
push.d 4.2
pop.v.d 654.speed
push.d 4.2
pop.v.d 653.speed

:[117]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
push.v self.fighto
pushi.e 9
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [124]

:[121]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[123]
pushi.e 355
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
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
pushi.e 60
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
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 220
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
pushi.e 100
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 220
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 360
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
pushi.e 90
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 360
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 500
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
pushi.e 500
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
pushi.e 640
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
pushi.e 70
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 640
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
pushi.e 10
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 780
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 780
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
pushi.e 990
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
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
pushi.e 990
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 1130
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -20
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 100
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 1130
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.osc
pushi.e -20
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmin
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.oscmax
push.d 4.2
pop.v.d 654.speed
push.d 4.2
pop.v.d 653.speed

:[124]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.v self.fighto
pushi.e 8
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [131]

:[128]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[130]
pushi.e 230
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 40
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
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 170
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
pushi.e 70
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 170
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
pushi.e 310
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
pushi.e 310
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 460
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
pushi.e 90
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 460
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 610
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
pushi.e 100
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 610
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
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 760
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
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 760
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 4.4
pop.v.d 654.speed
push.d 4.4
pop.v.d 653.speed

:[131]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
push.v self.fighto
pushi.e 7
cmp.i.v EQ
b [134]

:[133]
push.e 0

:[134]
bf [140]

:[135]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[137]
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
push.v self.xfight
pushi.e 0
cmp.i.v GT
bf [139]

:[138]
push.d 4.4
pop.v.d 653.speed
b [140]

:[139]
pushi.e 4
pop.v.i 653.speed
pushi.e 150
pop.v.i global.turntimer

:[140]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [142]

:[141]
push.v self.fighto
pushi.e 6
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [147]

:[144]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [146]

:[145]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[146]
pushi.e 200
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 35
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
pushi.e 35
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
pushi.e 35
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
pushi.e 35
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
pushi.e 35
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
pushi.e 35
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

:[147]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [149]

:[148]
push.v self.fighto
pushi.e 5
cmp.i.v EQ
b [150]

:[149]
push.e 0

:[150]
bf [154]

:[151]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[153]
pushi.e 330
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 70
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 130
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 160
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 190
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 300
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 330
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 360
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 390
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 730
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
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 760
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
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 790
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
pushi.e 820
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
pushi.e 15
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 850
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
pushi.e 15
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 970
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
pushi.e 1000
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
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 1030
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
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 1060
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed

:[154]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
push.v self.fighto
pushi.e 4
cmp.i.v EQ
b [157]

:[156]
push.e 0

:[157]
bf [161]

:[158]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[160]
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

:[161]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [163]

:[162]
push.v self.fighto
pushi.e 3
cmp.i.v EQ
b [164]

:[163]
push.e 0

:[164]
bf [171]

:[165]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [167]

:[166]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[167]
pushi.e 150
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
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
pushi.e 90
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 140
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
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 260
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
pushi.e 280
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 300
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
pushi.e 50
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
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 340
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 360
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
pushi.e 380
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
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 400
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.xfight
pushi.e 0
cmp.i.v GT
bf [171]

:[168]
pushi.e 653
pushenv [170]

:[169]
push.d 4.5
pop.v.d self.speed

:[170]
popenv [169]

:[171]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.v self.fighto
pushi.e 2
cmp.i.v EQ
b [174]

:[173]
push.e 0

:[174]
bf [180]

:[175]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[177]
pushi.e 240
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
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
pushi.e 30
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d 3.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
pushi.e 160
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d 3.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
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
pushi.e 290
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d 3.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 390
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.d 3.5
push.v self.gen
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
push.v self.xfight
pushi.e 0
cmp.i.v GT
bf [179]

:[178]
pushi.e 4
pop.v.i 653.speed

:[179]
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
pushi.e 1120
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -6
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed

:[180]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
push.v self.fighto
pushi.e 1
cmp.i.v EQ
b [183]

:[182]
push.e 0

:[183]
bf [188]

:[184]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [186]

:[185]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[186]
pushi.e 220
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.border
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
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 80
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
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
pushi.e 230
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
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 310
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
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 390
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
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 490
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 580
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.xfight
pushi.e 0
cmp.i.v GT
bf [188]

:[187]
push.d 4.5
pop.v.d 653.speed

:[188]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [190]

:[189]
push.v self.fighto
pushi.e 0
cmp.i.v EQ
b [191]

:[190]
push.e 0

:[191]
bf [195]

:[192]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [194]

:[193]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage

:[194]
pushi.e 300
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 150
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 280
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
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 410
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
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 390
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 510
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 630
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed

:[195]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
push.v self.fighto
pushi.e -1
cmp.i.v EQ
b [198]

:[197]
push.e 0

:[198]
bf [202]

:[199]
push.v self.fighto
pushi.e 1
add.i.v
pop.v.v self.fighto
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
pushi.e 2
pop.v.i 744.movement
pushi.e -1
pop.v.i 744.vspeed
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 52
pop.v.i 744.sprite_index

:[201]
pushi.e 200
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
pushi.e 1
push.v [array]global.idealborder
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
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
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 370
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.hspeed

:[202]
push.v self.mycommand
pushi.e -1
cmp.i.v EQ
bf [204]

:[203]
pushi.e 5
pop.v.i global.border
pushi.e 300
pop.v.i global.turntimer
pushi.e 687
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen

:[204]
push.v self.gen
call.i instance_exists(argc=1)
conv.v.b
bf [206]

:[205]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself

:[206]
pushglb.v global.hp
pop.v.v self.hearthp
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [208]

:[207]
push.s "obj_papyrusboss_1584"@21244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[208]
push.v self.mycommand
pushi.e 15
cmp.i.v GT
bf [210]

:[209]
push.s "obj_papyrusboss_1585"@21246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[210]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [212]

:[211]
push.s "obj_papyrusboss_1586"@21248
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[212]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [214]

:[213]
push.s "obj_papyrusboss_1587"@21250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[214]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [216]

:[215]
push.s "obj_papyrusboss_1588"@21252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[216]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [218]

:[217]
push.s "obj_papyrusboss_1589"@21254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[218]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [220]

:[219]
push.s "obj_papyrusboss_1590"@21256
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[220]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [222]

:[221]
push.s "obj_papyrusboss_1591"@21258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[222]
push.v self.mycommand
pushi.e 97
cmp.i.v GTE
bf [224]

:[223]
push.s "obj_papyrusboss_1592"@21260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[224]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [226]

:[225]
push.v self.flirt2
pushi.e 1
add.i.v
pop.v.v self.flirt2

:[226]
push.v self.flirt2
pushi.e 0
cmp.i.v GT
bf [228]

:[227]
push.v self.flirt2
pushi.e 11
cmp.i.v LT
b [229]

:[228]
push.e 0

:[229]
bf [250]

:[230]
push.v self.flirt2
pushi.e 1
cmp.i.v EQ
bf [232]

:[231]
push.s "obj_papyrusboss_1596"@21262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[232]
push.v self.flirt2
pushi.e 2
cmp.i.v EQ
bf [234]

:[233]
push.s "obj_papyrusboss_1597"@21264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[234]
push.v self.flirt2
pushi.e 3
cmp.i.v EQ
bf [236]

:[235]
push.s "obj_papyrusboss_1598"@21266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[236]
push.v self.flirt2
pushi.e 4
cmp.i.v EQ
bf [238]

:[237]
push.s "obj_papyrusboss_1599"@21268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[238]
push.v self.flirt2
pushi.e 5
cmp.i.v EQ
bf [240]

:[239]
push.s "obj_papyrusboss_1600"@21270
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[240]
push.v self.flirt2
pushi.e 6
cmp.i.v EQ
bf [242]

:[241]
push.s "obj_papyrusboss_1601"@21272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[242]
push.v self.flirt2
pushi.e 7
cmp.i.v EQ
bf [244]

:[243]
push.s "obj_papyrusboss_1602"@21274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[244]
push.v self.flirt2
pushi.e 8
cmp.i.v EQ
bf [246]

:[245]
push.s "obj_papyrusboss_1603"@21276
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[246]
push.v self.flirt2
pushi.e 9
cmp.i.v EQ
bf [248]

:[247]
push.s "obj_papyrusboss_1604"@21278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[248]
push.v self.flirt2
pushi.e 10
cmp.i.v EQ
bf [250]

:[249]
push.s "obj_papyrusboss_1605"@21280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[250]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 100
cmp.i.v LT
bf [252]

:[251]
push.s "obj_papyrusboss_1609"@21282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[252]
push.v self.mercymod
pushi.e 8000
cmp.i.v GTE
bf [254]

:[253]
push.s "obj_papyrusboss_1611"@21283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[254]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [256]

:[255]
push.s "obj_papyrusboss_1613"@21284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[256]
pushi.e 1
pop.v.i self.attacked
push.v self.xfight
pushi.e 0
cmp.i.v GT
bf [258]

:[257]
pushi.e 14
pop.v.i self.fighto

:[258]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [260]

:[259]
push.v self.dontcancel
pushi.e 0
cmp.i.v EQ
b [261]

:[260]
push.e 0

:[261]
bf [263]

:[262]
pushglb.v global.hp
pop.v.v self.hearthp2
pushi.e 0
pop.v.i 744.vspeed
pushi.e 0
pop.v.i 744.jumpstage
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e 0
pop.v.i 744.movement

:[263]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [265]

:[264]
push.v self.dontcancel
pushi.e 4
cmp.i.v EQ
b [266]

:[265]
push.e 0

:[266]
bf [268]

:[267]
pushi.e 2
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.dontcancel

:[268]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [326]

:[269]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [326]

:[270]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [326]

:[271]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [277]

:[272]
pushi.e 0
pop.v.i global.msc
push.s "obj_papyrusboss_1645"@21286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [274]

:[273]
push.s "obj_papyrusboss_1647"@21288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[274]
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
pushenv [276]

:[275]
pushi.e 0
pop.v.i self.halt

:[276]
popenv [275]

:[277]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [298]

:[278]
pushi.e 0
pop.v.i global.msc
pushi.e 784
pushenv [280]

:[279]
call.i instance_destroy(argc=0)
popz.v

:[280]
popenv [279]
push.v self.insult
pushi.e 2
cmp.i.v LTE
bf [282]

:[281]
push.v self.truefight
pushi.e 0
cmp.i.v EQ
b [283]

:[282]
push.e 0

:[283]
bf [291]

:[284]
push.s "obj_papyrusboss_1661"@21290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_1662"@21292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.insult
pushi.e 1
cmp.i.v EQ
bf [286]

:[285]
push.s "obj_papyrusboss_1663"@21294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[286]
push.v self.insult
pushi.e 1
cmp.i.v GT
bf [288]

:[287]
push.s "obj_papyrusboss_1664"@21296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[288]
push.v self.insult
pushi.e 2
cmp.i.v LTE
bf [290]

:[289]
push.v self.insult
pushi.e 1
add.i.v
pop.v.v self.insult
pushi.e 2
pop.v.i self.flirto
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.sblcon
pushi.e 786
conv.i.v
push.v self.sblcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.sblcon
conv.v.i
push.v [stacktop]self.x
push.v self.blcon_textofs
add.v.v
call.i instance_create(argc=3)
pop.v.v self.sblconwd

:[290]
b [298]

:[291]
pushi.e 0
pop.v.i global.msc
push.s "obj_papyrusboss_1678"@21298
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.truefight
pushi.e 0
cmp.i.v GT
bf [293]

:[292]
push.s "obj_papyrusboss_1680"@21300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[293]
pushi.e 784
pushenv [295]

:[294]
pushi.e 3
pop.v.i self.halt

:[295]
popenv [294]
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
pushenv [297]

:[296]
pushi.e 0
pop.v.i self.halt

:[297]
popenv [296]

:[298]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [318]

:[299]
push.v self.hotcha
pushi.e 1
add.i.v
pop.v.v self.hotcha
pushi.e 784
pushenv [301]

:[300]
pushi.e 3
pop.v.i self.halt

:[301]
popenv [300]
push.v self.hotcha
pushi.e 2
cmp.i.v LTE
bf [303]

:[302]
push.v self.truefight
pushi.e 0
cmp.i.v EQ
b [304]

:[303]
push.e 0

:[304]
bf [311]

:[305]
push.s "obj_papyrusboss_1696"@21302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_1697"@21304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrusboss_1698"@21306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.flirto
push.v self.hotcha
pushi.e 2
cmp.i.v EQ
bf [307]

:[306]
push.s "obj_papyrusboss_1700"@21308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.flirto

:[307]
push.v self.hotcha
pushi.e 2
cmp.i.v GT
bf [309]

:[308]
pushi.e 0
pop.v.i self.flirto
pushi.e 3
pop.v.i self.whatiheard
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [310]

:[309]
pushi.e 1
pushi.e -5
pushi.e 66
pop.v.i [array]global.flag
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.sblcon
pushi.e 786
conv.i.v
push.v self.sblcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.sblcon
conv.v.i
push.v [stacktop]self.x
push.v self.blcon_textofs
add.v.v
call.i instance_create(argc=3)
pop.v.v self.sblconwd

:[310]
b [318]

:[311]
pushi.e 0
pop.v.i global.msc
push.s "obj_papyrusboss_1713"@21310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.truefight
pushi.e 0
cmp.i.v GT
bf [313]

:[312]
push.s "obj_papyrusboss_1715"@21312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[313]
pushi.e 784
pushenv [315]

:[314]
pushi.e 3
pop.v.i self.halt

:[315]
popenv [314]
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
pushenv [317]

:[316]
pushi.e 0
pop.v.i self.halt

:[317]
popenv [316]

:[318]
push.v self.whatiheard
pushi.e 6
cmp.i.v EQ
bf [322]

:[319]
pushi.e 784
pushenv [321]

:[320]
call.i instance_destroy(argc=0)
popz.v

:[321]
popenv [320]
push.s "obj_papyrusboss_1754"@21314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_1755"@21316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.flirto
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.sblcon
pushi.e 786
conv.i.v
push.v self.sblcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.sblcon
conv.v.i
push.v [stacktop]self.x
push.v self.blcon_textofs
add.v.v
call.i instance_create(argc=3)
pop.v.v self.sblconwd

:[322]
pushi.e 1
pop.v.i global.heard
push.v self.whatiheard
pushi.e 7
cmp.i.v EQ
bf [326]

:[323]
pushi.e 784
pushenv [325]

:[324]
call.i instance_destroy(argc=0)
popz.v

:[325]
popenv [324]
push.s "obj_papyrusboss_1769"@21318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_1770"@21320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrusboss_1771"@21322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.flirto
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.sblcon
pushi.e 786
conv.i.v
push.v self.sblcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.sblcon
conv.v.i
push.v [stacktop]self.x
push.v self.blcon_textofs
add.v.v
call.i instance_create(argc=3)
pop.v.v self.sblconwd

:[326]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [330]

:[327]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [330]

:[328]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [330]

:[329]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[330]
push.v self.flirto
pushi.e 0
cmp.i.v GT
bf [end]

:[331]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[332]
push.v self.flirto
pushi.e 1
cmp.i.v EQ
bf [340]

:[333]
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.typer
pushi.e 3
pop.v.i global.myfight
pushi.e 6
pop.v.i global.bmenuno
push.s "obj_papyrusboss_1804"@21324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
pushenv [335]

:[334]
pushi.e 3
pop.v.i self.halt

:[335]
popenv [334]
pushi.e 787
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
pushenv [337]

:[336]
pushi.e 0
pop.v.i self.halt

:[337]
popenv [336]
push.v self.sblcon
conv.v.i
pushenv [339]

:[338]
call.i instance_destroy(argc=0)
popz.v

:[339]
popenv [338]

:[340]
push.v self.flirto
pushi.e 2
cmp.i.v EQ
bf [342]

:[341]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.stalk

:[342]
pushi.e 0
pop.v.i self.flirto

:[end]