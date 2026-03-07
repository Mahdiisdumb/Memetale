.localvar 0 arguments

:[0]
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 129
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.xx
pop.v.v self.x
push.v self.yy
pop.v.v self.y
push.v self.bullettype
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 174
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 2.5
conv.d.v
pushi.e 128
conv.i.v
call.i script_execute(argc=11)
popz.v

:[2]
push.v self.bullettype
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
pushi.e 633
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[5]
push.v self.bullettype
pushi.e 2
cmp.i.v EQ
bf [8]

:[6]
pushi.e 624
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[8]
push.v self.bullettype
pushi.e 3
cmp.i.v EQ
bf [11]

:[9]
pushi.e 637
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[11]
push.v self.bullettype
pushi.e 4
cmp.i.v EQ
bf [16]

:[12]
pushi.e 630
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
pushi.e 60
sub.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
pushi.e 30
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[14]
pushi.e 630
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
pushi.e 60
sub.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
pushi.e 30
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 4
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[16]
push.v self.bullettype
pushi.e 5
cmp.i.v EQ
bf [24]

:[17]
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 129
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y
pushi.e 631
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[18]
push.v self.num
pushi.e 4
push.v self.sum
sub.v.i
cmp.v.v EQ
bf [20]

:[19]
push.v self.specgreen
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.green
push.i 65280
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.image_blend

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[24]
push.v self.bullettype
pushi.e 6
cmp.i.v EQ
bf [39]

:[25]
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 129
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y
pushi.e 632
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[26]
pushi.e 599
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [33]

:[27]
push.v self.num
pushi.e 4
cmp.i.v EQ
bf [29]

:[28]
push.v self.specgreen
pushi.e 1
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.green
push.i 65280
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.image_blend

:[32]
b [38]

:[33]
push.v self.num
pushi.e 8
cmp.i.v EQ
bf [35]

:[34]
push.v self.specgreen
pushi.e 1
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.green
push.i 65280
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.image_blend

:[38]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[39]
push.v self.bullettype
pushi.e 7
cmp.i.v EQ
bf [47]

:[40]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 3
sub.i.v
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 25
sub.i.v
pop.v.v self.y
pushi.e 619
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [45]

:[41]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [43]

:[42]
pushi.e 2
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.dmg

:[43]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [45]

:[44]
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.dmg

:[45]
pushglb.v global.hp
pushi.e 2
cmp.i.v LTE
bf [47]

:[46]
pushi.e -100
pop.v.i global.turntimer

:[47]
push.v self.bullettype
pushi.e 8
cmp.i.v EQ
bf [55]

:[48]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 3
sub.i.v
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
pop.v.v self.y
pushi.e 620
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [53]

:[49]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [51]

:[50]
pushi.e 2
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.dmg

:[51]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [53]

:[52]
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.dmg

:[53]
pushglb.v global.hp
pushi.e 2
cmp.i.v LTE
bf [55]

:[54]
pushi.e -100
pop.v.i global.turntimer

:[55]
push.v self.bullettype
pushi.e 9
cmp.i.v EQ
bf [58]

:[56]
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e 129
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 20
sub.i.v
pop.v.v self.y
pushi.e 621
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [58]

:[57]
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.dmg

:[58]
push.v self.bullettype
pushi.e 10
cmp.i.v EQ
bf [76]

:[59]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 3
sub.i.v
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 25
sub.i.v
pop.v.v self.y
pushi.e 619
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [64]

:[60]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [62]

:[61]
pushi.e 2
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.dmg

:[62]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [64]

:[63]
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.dmg

:[64]
pushglb.v global.hp
pushi.e 2
cmp.i.v LTE
bf [66]

:[65]
pushi.e -100
pop.v.i global.turntimer

:[66]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 2
add.i.v
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 90
add.i.v
pop.v.v self.y
pushi.e 614
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iiii
push.v self.iiii
call.i instance_exists(argc=1)
conv.v.b
bf [71]

:[67]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iiii
conv.v.i
pop.v.v [stacktop]self.dmg
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [69]

:[68]
pushi.e 2
push.v self.iiii
conv.v.i
pop.v.i [stacktop]self.dmg

:[69]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [71]

:[70]
pushi.e 1
push.v self.iiii
conv.v.i
pop.v.i [stacktop]self.dmg

:[71]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 18
sub.i.v
pop.v.v self.x
pushi.e 614
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iiiii
push.v self.iiiii
call.i instance_exists(argc=1)
conv.v.b
bf [76]

:[72]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iiiii
conv.v.i
pop.v.v [stacktop]self.dmg
pushglb.v global.hp
pushi.e 8
cmp.i.v LT
bf [74]

:[73]
pushi.e 2
push.v self.iiiii
conv.v.i
pop.v.i [stacktop]self.dmg

:[74]
pushglb.v global.hp
pushi.e 6
cmp.i.v LT
bf [76]

:[75]
pushi.e 1
push.v self.iiiii
conv.v.i
pop.v.i [stacktop]self.dmg

:[76]
push.v self.bullettype
pushi.e 11
cmp.i.v EQ
bf [79]

:[77]
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 130
conv.i.v
call.i script_execute(argc=4)
popz.v
pushi.e 646
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
call.i instance_exists(argc=1)
conv.v.b
bf [79]

:[78]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg

:[79]
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]