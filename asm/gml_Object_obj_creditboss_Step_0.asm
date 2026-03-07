.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.truetype
pushi.e 0
cmp.i.v EQ
bt [3]

:[2]
push.v self.truetype
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [55]

:[5]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [11]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [11]

:[8]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.direction

:[10]
popenv [9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[11]
push.v self.timer
pushi.e 50
cmp.i.v GTE
bf [13]

:[12]
push.v self.timer
pushi.e 70
cmp.i.v LTE
b [14]

:[13]
push.e 0

:[14]
bf [47]

:[15]
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [47]

:[17]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pushenv [46]

:[18]
push.v self.direction
pop.v.v self.image_angle
push.v self.direction
pop.v.v self.curdir
push.v 1705.y
pushi.e 8
add.i.v
push.v 1705.x
pushi.e 8
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
bf [22]

:[19]
push.v self.curdir
push.v self.idealdir
cmp.v.v GT
bf [21]

:[20]
pushi.e -1
pushi.e 360
push.v self.curdir
sub.v.i
push.v self.idealdir
add.v.v
mul.v.i
pop.v.v self.angleDiff
b [22]

:[21]
pushi.e 360
push.v self.idealdir
sub.v.i
push.v self.curdir
add.v.v
pop.v.v self.angleDiff

:[22]
pushi.e 3
pop.v.i self.leastAccurateAim
push.v self.angleDiff
call.i abs(argc=1)
push.v self.leastAccurateAim
cmp.v.v GT
bf [46]

:[23]
pushi.e 1
pop.v.i self.dirspeed
push.v self.angleDiff
call.i abs(argc=1)
pop.v.v self.angleDiff2
push.v self.angleDiff2
pushi.e 10
cmp.i.v GT
bf [25]

:[24]
pushi.e 2
pop.v.i self.dirspeed

:[25]
push.v self.angleDiff2
pushi.e 20
cmp.i.v GT
bf [27]

:[26]
pushi.e 5
pop.v.i self.dirspeed

:[27]
push.v self.angleDiff2
pushi.e 30
cmp.i.v GT
bf [29]

:[28]
pushi.e 15
pop.v.i self.dirspeed

:[29]
push.v self.angleDiff2
pushi.e 40
cmp.i.v GT
bf [31]

:[30]
pushi.e 16
pop.v.i self.dirspeed

:[31]
push.v self.angleDiff2
pushi.e 50
cmp.i.v GT
bf [33]

:[32]
pushi.e 17
pop.v.i self.dirspeed

:[33]
push.v self.angleDiff2
pushi.e 60
cmp.i.v GT
bf [35]

:[34]
pushi.e 18
pop.v.i self.dirspeed

:[35]
push.v self.angleDiff2
pushi.e 70
cmp.i.v GT
bf [37]

:[36]
pushi.e 20
pop.v.i self.dirspeed

:[37]
push.v self.angleDiff2
pushi.e 80
cmp.i.v GT
bf [39]

:[38]
pushi.e 22
pop.v.i self.dirspeed

:[39]
push.v self.angleDiff2
pushi.e 90
cmp.i.v GT
bf [41]

:[40]
pushi.e 24
pop.v.i self.dirspeed

:[41]
push.v self.angleDiff2
pushi.e 100
cmp.i.v GT
bf [43]

:[42]
pushi.e 25
pop.v.i self.dirspeed

:[43]
push.v self.angleDiff
pushi.e 0
cmp.i.v LT
bf [45]

:[44]
push.v self.dirspeed
neg.v
pop.v.v self.dirspeed

:[45]
push.v self.direction
push.v self.dirspeed
sub.v.v
pop.v.v self.direction

:[46]
popenv [18]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[47]
push.v self.timer
pushi.e 75
cmp.i.v EQ
bf [53]

:[48]
pushi.e 0
pop.v.i self.i

:[49]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [53]

:[50]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pushenv [52]

:[51]
pushi.e 3
pop.v.i self.speed
push.d -0.5
pop.v.d self.friction
pushi.e 0
pop.v.i self.action

:[52]
popenv [51]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [49]

:[53]
push.v self.timer
pushi.e 85
cmp.i.v EQ
bf [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
push.v self.truetype
pushi.e 2
cmp.i.v EQ
bf [95]

:[56]
push.v self.timer
pushi.e 50
cmp.i.v GT
bf [58]

:[57]
push.v self.timer
pushi.e 70
cmp.i.v LT
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[61]
push.v self.timer
pushi.e 80
cmp.i.v GT
bf [63]

:[62]
push.v self.timer
pushi.e 100
cmp.i.v LT
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[66]
push.v self.timer
pushi.e 130
cmp.i.v GT
bf [68]

:[67]
push.v self.timer
pushi.e 150
cmp.i.v LT
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[71]
push.v self.timer
pushi.e 160
cmp.i.v GT
bf [73]

:[72]
push.v self.timer
pushi.e 180
cmp.i.v LT
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[76]
push.v self.timer
pushi.e 210
cmp.i.v GT
bf [78]

:[77]
push.v self.timer
pushi.e 230
cmp.i.v LT
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[81]
push.v self.timer
pushi.e 230
cmp.i.v GT
bf [83]

:[82]
push.v self.timer
pushi.e 250
cmp.i.v LT
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[86]
push.v self.timer
pushi.e 250
cmp.i.v EQ
bf [88]

:[87]
pushi.e 0
pop.v.i self.siner
pushi.e 5
pop.v.i self.sf

:[88]
push.v self.timer
pushi.e 250
cmp.i.v GT
bf [90]

:[89]
push.v self.timer
pushi.e 420
cmp.i.v LT
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.sf
push.d 0.02
add.d.v
pop.v.v self.sf

:[93]
push.v self.timer
pushi.e 420
cmp.i.v EQ
bf [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
push.v self.truetype
pushi.e 3
cmp.i.v EQ
bf [end]

:[96]
pushi.e 0
pop.v.i self.i

:[97]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [113]

:[98]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [102]

:[99]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pushenv [101]

:[100]
push.d 0.1
pop.v.d self.hspeed

:[101]
popenv [100]

:[102]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [106]

:[103]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pushenv [105]

:[104]
push.d -0.1
pop.v.d self.hspeed

:[105]
popenv [104]

:[106]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
call.i instance_exists(argc=1)
conv.v.b
bf [108]

:[107]
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.y

:[108]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pushenv [112]

:[109]
push.v self.aa
call.i abs(argc=1)
push.d 1.7
cmp.d.v LT
bf [111]

:[110]
push.v self.aa
push.d 1.02
mul.d.v
pop.v.v self.aa

:[111]
push.v self.x
push.v self.image_angle
pushi.e 85
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.image_angle
pushi.e 85
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[112]
popenv [109]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [97]

:[113]
push.v self.x
pushi.e 1000
cmp.i.v GT
bt [115]

:[114]
push.v self.x
pushi.e -400
cmp.i.v LT
b [116]

:[115]
push.e 1

:[116]
bf [end]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[end]