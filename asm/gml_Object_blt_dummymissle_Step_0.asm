.localvar 0 arguments

:[0]
push.v self.speed
pushi.e 6
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.friction

:[2]
push.v self.juice
pushi.e 0
cmp.i.v GT
bf [31]

:[3]
push.v self.direction
pop.v.v self.image_angle
push.v self.direction
pop.v.v self.curdir
push.v 744.y
pushi.e 10
add.i.v
push.v 744.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.idealdir
push.v self.curdir
push.v self.idealdir
sub.v.v
pop.v.v self.facingMinusTarget
push.v self.facingMinusTarget
pop.v.v self.angleDiff
push.v self.facingMinusTarget
call.i abs(argc=1)
pushi.e 180
cmp.i.v GT
bf [7]

:[4]
push.v self.curdir
push.v self.idealdir
cmp.v.v GT
bf [6]

:[5]
pushi.e -1
pushi.e 360
push.v self.curdir
sub.v.i
push.v self.idealdir
add.v.v
mul.v.i
pop.v.v self.angleDiff
b [7]

:[6]
pushi.e 360
push.v self.idealdir
sub.v.i
push.v self.curdir
add.v.v
pop.v.v self.angleDiff

:[7]
pushi.e 4
pop.v.i self.leastAccurateAim
push.v self.angleDiff
call.i abs(argc=1)
push.v self.leastAccurateAim
cmp.v.v GT
bf [31]

:[8]
pushi.e 1
pop.v.i self.dirspeed
push.v self.angleDiff
call.i abs(argc=1)
pop.v.v self.angleDiff2
push.v self.angleDiff2
pushi.e 10
cmp.i.v GT
bf [10]

:[9]
pushi.e 2
pop.v.i self.dirspeed

:[10]
push.v self.angleDiff2
pushi.e 20
cmp.i.v GT
bf [12]

:[11]
pushi.e 3
pop.v.i self.dirspeed

:[12]
push.v self.angleDiff2
pushi.e 30
cmp.i.v GT
bf [14]

:[13]
pushi.e 4
pop.v.i self.dirspeed

:[14]
push.v self.angleDiff2
pushi.e 40
cmp.i.v GT
bf [16]

:[15]
pushi.e 5
pop.v.i self.dirspeed

:[16]
push.v self.angleDiff2
pushi.e 50
cmp.i.v GT
bf [18]

:[17]
pushi.e 6
pop.v.i self.dirspeed

:[18]
push.v self.angleDiff2
pushi.e 60
cmp.i.v GT
bf [20]

:[19]
pushi.e 7
pop.v.i self.dirspeed

:[20]
push.v self.angleDiff2
pushi.e 70
cmp.i.v GT
bf [22]

:[21]
pushi.e 8
pop.v.i self.dirspeed

:[22]
push.v self.angleDiff2
pushi.e 80
cmp.i.v GT
bf [24]

:[23]
pushi.e 9
pop.v.i self.dirspeed

:[24]
push.v self.angleDiff2
pushi.e 90
cmp.i.v GT
bf [26]

:[25]
pushi.e 10
pop.v.i self.dirspeed

:[26]
push.v self.angleDiff2
pushi.e 100
cmp.i.v GT
bf [28]

:[27]
pushi.e 11
pop.v.i self.dirspeed

:[28]
push.v self.angleDiff
pushi.e 0
cmp.i.v LT
bf [30]

:[29]
push.v self.dirspeed
neg.v
pop.v.v self.dirspeed

:[30]
push.v self.direction
push.v self.dirspeed
sub.v.v
pop.v.v self.direction

:[31]
push.v self.juice
pushi.e 1
sub.i.v
pop.v.v self.juice
push.v self.juice
pushi.e 60
cmp.i.v LT
bf [33]

:[32]
pushi.e 1
pop.v.i self.image_index

:[33]
push.v self.juice
pushi.e 30
cmp.i.v LT
bf [35]

:[34]
pushi.e 2
pop.v.i self.image_index

:[35]
push.v self.juice
pushi.e 0
cmp.i.v LT
bf [37]

:[36]
pushi.e 3
pop.v.i self.image_index

:[37]
push.v self.juice
pushi.e -60
cmp.i.v LT
bf [39]

:[38]
push.v self.destroy
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [end]

:[41]
pushi.e 1
pop.v.i self.destroy

:[end]