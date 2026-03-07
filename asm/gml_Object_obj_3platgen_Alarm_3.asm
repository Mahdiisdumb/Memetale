.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.zone
push.v 744.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
cmp.v.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.zone

:[2]
push.v 744.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
add.i.v
cmp.v.v GTE
bf [4]

:[3]
pushi.e 2
pop.v.i self.zone

:[4]
pushi.e 0
pop.v.i self.reroll
push.v self.gg
pop.v.v self.gg2
push.v self.g
pop.v.v self.gg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.g
push.v self.gg
push.v self.g
cmp.v.v EQ
bf [7]

:[5]
push.v self.gg2
push.v self.gg
cmp.v.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.reroll

:[7]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [10]

:[8]
push.v self.zone
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.reroll

:[10]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
push.v self.zone
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.reroll

:[13]
push.v self.reroll
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.g

:[15]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [22]

:[16]
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
push.v self.sd
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
b [19]

:[18]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 60
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e 640
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.x

:[19]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
push.v self.sd
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
b [22]

:[21]
pushi.e -90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot

:[22]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [29]

:[23]
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
push.v self.sd
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
b [26]

:[25]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 60
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e 640
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.x

:[26]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 35
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
push.v self.sd
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
b [29]

:[28]
pushi.e -90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot

:[29]
push.v self.g
pushi.e 2
cmp.i.v EQ
bf [36]

:[30]
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
push.v self.sd
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
b [33]

:[32]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 60
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e 640
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.x

:[33]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 75
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
push.v self.sd
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e 90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
b [36]

:[35]
pushi.e -90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot

:[36]
pushi.e 499
pushenv [38]

:[37]
pushi.e 17
pop.v.i self.pause
pushi.e 3
pop.v.i self.terminal
pushi.e 2
pop.v.i self.image_yscale

:[38]
popenv [37]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [42]

:[39]
pushi.e 499
pushenv [41]

:[40]
pushi.e 17
pop.v.i self.pause

:[41]
popenv [40]

:[42]
push.v self.sd
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1
pop.v.i self.sd
b [45]

:[44]
pushi.e 0
pop.v.i self.sd

:[45]
pushi.e 26
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [end]

:[46]
pushi.e 21
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]