.localvar 0 arguments

:[0]
push.v self.s3
pushi.e 1
add.i.v
pop.v.v self.s3
pushi.e 0
pop.v.i self.q
push.v self.s2
push.d 0.08
add.d.v
pop.v.v self.s2
push.v self.num
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[1]
push.v self.q
pushi.e 360
mul.i.v
push.v self.num
div.v.v
call.i degtorad(argc=1)
pop.v.v self.greg
pushi.e -1
push.v self.q
conv.v.i
push.v [array]self.kid
conv.v.i
push.v [stacktop]self.shot
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
push.v self.greg
push.v self.s2
add.v.v
call.i sin(argc=1)
push.v self.sf2
mul.v.v
add.v.v
pushi.e 14
sub.i.v
pushi.e -1
push.v self.q
conv.v.i
push.v [array]self.kid
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.greg
push.v self.s2
add.v.v
call.i cos(argc=1)
push.v self.sf2
mul.v.v
add.v.v
pushi.e 15
sub.i.v
pushi.e -1
push.v self.q
conv.v.i
push.v [array]self.kid
conv.v.i
pop.v.v [stacktop]self.y

:[3]
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[4]
popz.i
push.v self.movetype
pushi.e 0
cmp.i.v EQ
bf [9]

:[5]
push.v self.xstart
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.s
push.v self.sp
div.v.v
pushi.e 2
mul.i.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.shake
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s

:[7]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.memx
push.v self.shake
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.shake
sub.v.v
pop.v.v self.x
push.v self.memy
push.v self.shake
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.shake
sub.v.v
pop.v.v self.y
push.v self.shake
pushi.e 1
sub.i.v
pop.v.v self.shake

:[9]
push.v self.lightning_timer
pushi.e 1
add.i.v
pop.v.v self.lightning_timer
push.v self.lightning_timer
pushi.e 40
cmp.i.v GT
bf [11]

:[10]
push.v self.lightning_timer
pushi.e 50
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.ddir
push.d 0.5
pop.v.d self.image_speed

:[14]
push.v self.lightning_timer
pushi.e 50
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[16]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.09
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 0
push.v self.i
pushi.e 360
mul.i.v
pushi.e 11
conv.i.d
div.d.v
add.v.i
push.v self.ddir
add.v.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [16]

:[17]
popz.i

:[18]
push.v self.lightning_timer
pushi.e 56
cmp.i.v EQ
bf [22]

:[19]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [21]

:[20]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.09
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 0
push.v self.i
push.d 0.5
add.d.v
pushi.e 360
mul.i.v
pushi.e 11
conv.i.d
div.d.v
add.v.i
push.v self.ddir
add.v.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [20]

:[21]
popz.i

:[22]
push.v self.lightning_timer
pushi.e 62
cmp.i.v EQ
bf [26]

:[23]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[24]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.09
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 0
push.v self.i
pushi.e 360
mul.i.v
pushi.e 11
conv.i.d
div.d.v
add.v.i
push.v self.ddir
add.v.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [24]

:[25]
popz.i

:[26]
push.v self.lightning_timer
pushi.e 68
cmp.i.v EQ
bf [30]

:[27]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [29]

:[28]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.09
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 0
push.v self.i
push.d 0.5
add.d.v
pushi.e 360
mul.i.v
pushi.e 11
conv.i.d
div.d.v
add.v.i
push.v self.ddir
add.v.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [28]

:[29]
popz.i

:[30]
push.v self.movetype
pushi.e 99
cmp.i.v GT
bf [46]

:[31]
push.v self.lightning_timer
pushi.e 100
cmp.i.v GT
bf [33]

:[32]
push.v self.lightning_timer
pushi.e 145
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.v self.s2
push.d 0.1
sub.d.v
pop.v.v self.s2
pushi.e 0
pop.v.i self.s3
push.v self.sf2
pushi.e 9
add.i.v
pop.v.v self.sf2

:[36]
push.v self.lightning_timer
pushi.e 145
cmp.i.v EQ
bf [40]

:[37]
pushi.e 0
pop.v.i self.q
push.v self.num
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [39]

:[38]
pushi.e 1
pushi.e -1
push.v self.q
conv.v.i
push.v [array]self.kid
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [38]

:[39]
popz.i

:[40]
push.v self.lightning_timer
pushi.e 145
cmp.i.v GT
bf [42]

:[41]
push.v self.lightning_timer
pushi.e 300
cmp.i.v LT
b [43]

:[42]
push.e 0

:[43]
bf [46]

:[44]
push.v self.s2
push.d 0.1
sub.d.v
pop.v.v self.s2
pushi.e 0
pop.v.i self.s3
push.v self.sf2
pushi.e 8
sub.i.v
pop.v.v self.sf2
push.v self.sf2
pushi.e 35
cmp.i.v LT
bf [46]

:[45]
pushi.e 30
pop.v.i self.sf2
pushi.e 40
pop.v.i self.lightning_timer

:[46]
push.v self.movetype
pushi.e 99
cmp.i.v EQ
bf [75]

:[47]
push.v self.lightning_timer
pushi.e 110
cmp.i.v EQ
bf [51]

:[48]
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [50]

:[49]
pushi.e 1365
conv.i.v
pushi.e 100
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bb
pushi.e 537
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [49]

:[50]
popz.i

:[51]
push.v self.lightning_timer
pushi.e 110
cmp.i.v GT
bf [53]

:[52]
push.v self.lightning_timer
pushi.e 125
cmp.i.v LT
b [54]

:[53]
push.e 0

:[54]
bf [61]

:[55]
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [60]

:[56]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
push.v [stacktop]self.visible
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pop.v.i [stacktop]self.visible
b [59]

:[58]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pop.v.i [stacktop]self.visible

:[59]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [56]

:[60]
popz.i

:[61]
push.v self.lightning_timer
pushi.e 125
cmp.i.v EQ
bf [75]

:[62]
pushi.e 35
pop.v.i self.lightning_timer
pushi.e 0
pop.v.i self.i
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=7)
pop.v.v self.fs
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=7)
pop.v.v self.fs0
push.v self.fs
push.v self.fs0
cmp.v.v EQ
bf [64]

:[63]
push.v self.fs
pushi.e 1
add.i.v
pop.v.v self.fs

:[64]
push.v self.fs
pushi.e 6
cmp.i.v GT
bf [66]

:[65]
pushi.e 0
pop.v.i self.fs

:[66]
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [74]

:[67]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pushenv [69]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[69]
popenv [68]
pushi.e 446
conv.i.v
pushi.e 100
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.br
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
pop.v.i [stacktop]self.friction
pushi.e 5
conv.i.v
push.d 4.5
conv.d.v
pushi.e 4
conv.i.v
call.i choose(argc=3)
pop.v.v self.v
push.v self.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.i
push.v self.fs
cmp.v.v EQ
bf [71]

:[70]
pushi.e 6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
pop.v.i [stacktop]self.vspeed

:[71]
push.v self.i
push.v self.fs0
cmp.v.v EQ
bf [73]

:[72]
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
pop.v.i [stacktop]self.vspeed

:[73]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [67]

:[74]
popz.i

:[75]
push.v self.lightning_timer
pushi.e 95
cmp.i.v EQ
bf [77]

:[76]
push.v self.movetype
pushi.e 99
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 433
conv.i.v
pushi.e -20
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.mt
pushi.e 3
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 200
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.early
pushi.e 433
conv.i.v
pushi.e -20
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 25
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mt
pushi.e 3
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 200
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.early
pushi.e 2
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.type

:[80]
push.v self.lightning_timer
pushi.e 110
cmp.i.v EQ
bf [82]

:[81]
pushi.e 417
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[82]
push.v self.lightning_timer
pushi.e 140
cmp.i.v EQ
bf [84]

:[83]
pushi.e 418
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[84]
push.v self.lightning_timer
pushi.e 160
cmp.i.v EQ
bf [86]

:[85]
pushi.e 20
pop.v.i self.lightning_timer

:[86]
push.v self.life
push.d 1.25
sub.d.v
pop.v.v self.life

:[end]