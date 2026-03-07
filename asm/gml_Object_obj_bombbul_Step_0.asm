.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
sub.i.v
cmp.v.v GT
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
push.v self.bounce
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[6]
push.v self.bounce
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.d -1.5
pop.v.d self.vspeed
pushi.e 1
pop.v.i self.bounce

:[8]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
sub.i.v
cmp.v.v GT
b [11]

:[10]
push.e 0

:[11]
bf [16]

:[12]
push.v self.bounce
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed

:[14]
push.v self.bounce
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.d -1.5
pop.v.d self.hspeed
pushi.e 1
pop.v.i self.bounce

:[16]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
add.i.v
cmp.v.v LT
b [19]

:[18]
push.e 0

:[19]
bf [24]

:[20]
push.v self.bounce
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[22]
push.v self.bounce
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.d 1.5
pop.v.d self.vspeed
pushi.e 1
pop.v.i self.bounce

:[24]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
cmp.v.v LT
b [27]

:[26]
push.e 0

:[27]
bf [32]

:[28]
push.v self.bounce
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed

:[30]
push.v self.bounce
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.d 1.5
pop.v.d self.hspeed
pushi.e 1
pop.v.i self.bounce

:[32]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [34]

:[33]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [41]

:[36]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 15
sub.i.v
cmp.v.v GT
bt [38]

:[37]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 15
add.i.v
cmp.v.v LT
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
push.v self.xprevious
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[41]
push.v self.type
pushi.e 1
cmp.i.v EQ
bt [43]

:[42]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [50]

:[45]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
cmp.v.v GT
bt [47]

:[46]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 15
add.i.v
cmp.v.v LT
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
push.v self.yprevious
pop.v.v self.y
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[50]
push.v self.bounce
pushi.e 1
cmp.i.v EQ
bf [end]

:[51]
push.v self.flash
pushi.e 1
add.i.v
pop.v.v self.flash
push.v self.flash
pushi.e 14
cmp.i.v GT
bf [54]

:[52]
pushi.e 14
pop.v.i self.flash
push.v self.expl
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.expl

:[54]
pushi.e 1
conv.i.d
pushi.e 3
push.v self.flash
pushi.e 10
conv.i.d
div.d.v
sub.v.i
div.v.d
pop.v.v self.image_speed

:[end]