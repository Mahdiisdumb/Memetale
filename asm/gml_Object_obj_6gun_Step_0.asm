.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1614
conv.i.v
push.v 1587.y
push.v self.rr
sub.v.v
push.v self.rr
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v 1587.x
push.v self.rr
sub.v.v
push.v self.rr
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.cr
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.cr
conv.v.i
pushenv [4]

:[3]
pushi.e 2316
pop.v.i self.sprite_index

:[4]
popenv [3]

:[5]
pushi.e 2
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[7]
pushi.e 1614
conv.i.v
push.v 1587.y
push.v self.rr
sub.v.v
push.v self.rr
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v 1587.x
push.v self.rr
sub.v.v
push.v self.rr
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.cr
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
pushi.e -1
pushi.e 1
push.v [array]self.cr
conv.v.i
pushenv [10]

:[9]
pushi.e 2316
pop.v.i self.sprite_index

:[10]
popenv [9]

:[11]
pushi.e 4
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [26]

:[13]
pushi.e 1614
conv.i.v
push.v 1587.y
push.v self.rr
sub.v.v
push.v self.rr
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v 1587.x
push.v self.rr
sub.v.v
push.v self.rr
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.cr
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [17]

:[14]
pushi.e -1
pushi.e 2
push.v [array]self.cr
conv.v.i
pushenv [16]

:[15]
pushi.e 2316
pop.v.i self.sprite_index

:[16]
popenv [15]

:[17]
push.v 1575.down
conv.v.b
bf [19]

:[18]
pushi.e -1
pushi.e 2
push.v [array]self.cr
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 100
add.i.v
pop.i.v [stacktop]self.y

:[19]
push.v 1575.up
conv.v.b
bf [21]

:[20]
pushi.e -1
pushi.e 2
push.v [array]self.cr
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 100
sub.i.v
pop.i.v [stacktop]self.y

:[21]
push.v 1575.right
conv.v.b
bf [23]

:[22]
pushi.e -1
pushi.e 2
push.v [array]self.cr
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 100
add.i.v
pop.i.v [stacktop]self.x

:[23]
push.v 1575.left
conv.v.b
bf [25]

:[24]
pushi.e -1
pushi.e 2
push.v [array]self.cr
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 100
sub.i.v
pop.i.v [stacktop]self.x

:[25]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.no
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [56]

:[27]
pushi.e -1
push.v self.no
conv.v.i
push.v [array]self.cr
conv.v.i
push.v [stacktop]self.y
pushi.e -1
push.v self.no
conv.v.i
push.v [array]self.cr
conv.v.i
push.v [stacktop]self.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.dgoal
push.v self.image_angle
pop.v.v self.curdir
push.v self.dgoal
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
bf [31]

:[28]
push.v self.curdir
push.v self.idealdir
cmp.v.v GT
bf [30]

:[29]
pushi.e -1
pushi.e 360
push.v self.curdir
sub.v.i
push.v self.idealdir
add.v.v
mul.v.i
pop.v.v self.angleDiff
b [31]

:[30]
pushi.e 360
push.v self.idealdir
sub.v.i
push.v self.curdir
add.v.v
pop.v.v self.angleDiff

:[31]
pushi.e 5
pop.v.i self.leastAccurateAim
push.v self.angleDiff
call.i abs(argc=1)
push.v self.leastAccurateAim
cmp.v.v GT
bf [55]

:[32]
pushi.e 1
pop.v.i self.dirspeed
push.v self.angleDiff
call.i abs(argc=1)
pop.v.v self.angleDiff2
push.v self.angleDiff2
pushi.e 10
cmp.i.v GT
bf [34]

:[33]
pushi.e 5
pop.v.i self.dirspeed

:[34]
push.v self.angleDiff2
pushi.e 20
cmp.i.v GT
bf [36]

:[35]
pushi.e 8
pop.v.i self.dirspeed

:[36]
push.v self.angleDiff2
pushi.e 30
cmp.i.v GT
bf [38]

:[37]
pushi.e 12
pop.v.i self.dirspeed

:[38]
push.v self.angleDiff2
pushi.e 40
cmp.i.v GT
bf [40]

:[39]
pushi.e 15
pop.v.i self.dirspeed

:[40]
push.v self.angleDiff2
pushi.e 50
cmp.i.v GT
bf [42]

:[41]
pushi.e 18
pop.v.i self.dirspeed

:[42]
push.v self.angleDiff2
pushi.e 60
cmp.i.v GT
bf [44]

:[43]
pushi.e 24
pop.v.i self.dirspeed

:[44]
push.v self.angleDiff2
pushi.e 70
cmp.i.v GT
bf [46]

:[45]
pushi.e 30
pop.v.i self.dirspeed

:[46]
push.v self.angleDiff2
pushi.e 80
cmp.i.v GT
bf [48]

:[47]
pushi.e 36
pop.v.i self.dirspeed

:[48]
push.v self.angleDiff2
pushi.e 90
cmp.i.v GT
bf [50]

:[49]
pushi.e 42
pop.v.i self.dirspeed

:[50]
push.v self.angleDiff2
pushi.e 100
cmp.i.v GT
bf [52]

:[51]
pushi.e 50
pop.v.i self.dirspeed

:[52]
push.v self.angleDiff
pushi.e 0
cmp.i.v LT
bf [54]

:[53]
push.v self.dirspeed
neg.v
pop.v.v self.dirspeed

:[54]
push.v self.image_angle
push.v self.dirspeed
sub.v.v
pop.v.v self.image_angle
b [56]

:[55]
pushi.e 8
pop.v.i self.con
push.v self.dgoal
pop.v.v self.image_angle
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [69]

:[57]
push.v self.num
pushi.e 23
cmp.i.v NEQ
bf [63]

:[58]
pushi.e 1613
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bl
push.v self.dgoal
push.v self.bl
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.dgoal
push.v self.bl
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 30
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [62]

:[59]
push.v self.bl
conv.v.i
pushenv [61]

:[60]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[61]
popenv [60]

:[62]
b [64]

:[63]
pushi.e 1616
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bl
push.v self.dgoal
push.v self.bl
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.dgoal
push.v self.bl
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 20
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.speed

:[64]
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num
pushi.e -1
push.v self.no
conv.v.i
push.v [array]self.cr
conv.v.i
pushenv [66]

:[65]
call.i instance_destroy(argc=0)
popz.v

:[66]
popenv [65]
push.v self.no
pushi.e 2
cmp.i.v LT
bf [68]

:[67]
push.v self.no
pushi.e 1
add.i.v
pop.v.v self.no
pushi.e 6
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [69]

:[68]
pushi.e 1
pop.v.i self.con

:[69]
push.v self.shakeboy
pushi.e 1
cmp.i.v EQ
bf [end]

:[70]
push.v self.shake
push.d 0.2
add.d.v
pop.v.v self.shake
push.v self.x
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.y

:[end]