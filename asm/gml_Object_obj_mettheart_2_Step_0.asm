.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.q
push.v self.s2
push.d 0.2
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
call.i instance_exists(argc=1)
conv.v.b
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
pushi.e 10
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
pushi.e 10
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
bf [20]

:[15]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [19]

:[16]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
push.v self.lt
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[17]
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

:[18]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [16]

:[19]
popz.i

:[20]
push.v self.lightning_timer
pushi.e 56
cmp.i.v EQ
bf [26]

:[21]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[22]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
push.v self.lt
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[23]
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

:[24]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [22]

:[25]
popz.i

:[26]
push.v self.lightning_timer
pushi.e 62
cmp.i.v EQ
bf [32]

:[27]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [31]

:[28]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
push.v self.lt
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[29]
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

:[30]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [28]

:[31]
popz.i

:[32]
push.v self.lightning_timer
push.i 94938249
cmp.i.v EQ
bf [38]

:[33]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [37]

:[34]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
push.v self.lt
call.i instance_exists(argc=1)
conv.v.b
bf [36]

:[35]
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

:[36]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [34]

:[37]
popz.i

:[38]
push.v self.lightning_timer
pushi.e 100
cmp.i.v GT
bf [40]

:[39]
push.v self.lightning_timer
pushi.e 145
cmp.i.v LT
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.v self.s2
push.d 0.17
sub.d.v
pop.v.v self.s2
push.v self.sf2
pushi.e 9
add.i.v
pop.v.v self.sf2

:[43]
push.v self.lightning_timer
pushi.e 145
cmp.i.v EQ
bf [49]

:[44]
pushi.e 0
pop.v.i self.q
push.v self.num
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [48]

:[45]
pushi.e -1
push.v self.q
conv.v.i
push.v [array]self.kid
conv.v.i
pushenv [47]

:[46]
pushi.e 1
pop.v.i self.visible

:[47]
popenv [46]
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [45]

:[48]
popz.i

:[49]
push.v self.lightning_timer
pushi.e 145
cmp.i.v GT
bf [51]

:[50]
push.v self.lightning_timer
pushi.e 300
cmp.i.v LT
b [52]

:[51]
push.e 0

:[52]
bf [55]

:[53]
push.v self.s2
push.d 0.15
sub.d.v
pop.v.v self.s2
push.v self.sf2
pushi.e 8
sub.i.v
pop.v.v self.sf2
push.v self.sf2
pushi.e 35
cmp.i.v LT
bf [55]

:[54]
pushi.e 30
pop.v.i self.sf2
pushi.e 40
pop.v.i self.lightning_timer

:[55]
push.v self.movetype
pushi.e 99
cmp.i.v EQ
bf [90]

:[56]
push.v self.lightning_timer
pushi.e 110
cmp.i.v EQ
bf [62]

:[57]
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [61]

:[58]
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
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pushenv [60]

:[59]
pushi.e 537
pop.v.i self.sprite_index

:[60]
popenv [59]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [58]

:[61]
popz.i

:[62]
push.v self.lightning_timer
pushi.e 110
cmp.i.v GT
bf [64]

:[63]
push.v self.lightning_timer
pushi.e 125
cmp.i.v LT
b [65]

:[64]
push.e 0

:[65]
bf [73]

:[66]
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [72]

:[67]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pushenv [71]

:[68]
push.v self.visible
pushi.e 0
cmp.i.v EQ
bf [70]

:[69]
pushi.e 1
pop.v.i self.visible
b [71]

:[70]
pushi.e 0
pop.v.i self.visible

:[71]
popenv [68]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [67]

:[72]
popz.i

:[73]
push.v self.lightning_timer
pushi.e 125
cmp.i.v EQ
bf [90]

:[74]
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
bf [76]

:[75]
push.v self.fs
pushi.e 1
add.i.v
pop.v.v self.fs

:[76]
push.v self.fs
pushi.e 6
cmp.i.v GT
bf [78]

:[77]
pushi.e 0
pop.v.i self.fs

:[78]
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [89]

:[79]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
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
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
pushenv [83]

:[82]
pushi.e 0
pop.v.i self.friction

:[83]
popenv [82]
pushi.e 5
conv.i.v
push.d 4.5
conv.d.v
pushi.e 4
conv.i.v
call.i choose(argc=3)
pop.v.v self.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
call.i instance_exists(argc=1)
conv.v.b
bf [88]

:[84]
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
bf [86]

:[85]
pushi.e 6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
pop.v.i [stacktop]self.vspeed

:[86]
push.v self.i
push.v self.fs0
cmp.v.v EQ
bf [88]

:[87]
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
pop.v.i [stacktop]self.vspeed

:[88]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [79]

:[89]
popz.i

:[90]
push.v self.lightning_timer
pushi.e 95
cmp.i.v EQ
bf [92]

:[91]
push.v self.movetype
pushi.e 99
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
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

:[95]
pushglb.v global.turntimer
pushi.e 5
cmp.i.v LT
bf [100]

:[96]
pushi.e 409
pushenv [99]

:[97]
push.v self.noarm
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[99]
popenv [97]

:[100]
push.v self.life
pushi.e 1
sub.i.v
pop.v.v self.life

:[end]