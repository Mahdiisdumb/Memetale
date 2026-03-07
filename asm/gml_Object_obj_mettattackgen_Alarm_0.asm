.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.gil
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.gir
pushi.e 25
pop.v.i self.fff
pushglb.v global.attacktype
pop.v.v self.type
push.v self.type
pushi.e 100
cmp.i.v EQ
bf [2]

:[1]
pushi.e 90
pop.v.i global.turntimer

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[3]
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[4]
pushi.e 443
conv.i.v
pushi.e 120
conv.i.v
pushi.e 240
push.v self.i
pushi.e 24
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.bl
pushi.e 4
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[5]
popz.i
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[6]
pushi.e 443
conv.i.v
pushi.e 80
conv.i.v
pushi.e 240
push.v self.i
pushi.e 24
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.bl
pushi.e 4
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [6]

:[7]
popz.i
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[8]
pushi.e 443
conv.i.v
pushi.e 40
conv.i.v
pushi.e 240
push.v self.i
pushi.e 24
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.bl
pushi.e 4
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [8]

:[9]
popz.i

:[10]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [18]

:[11]
pushi.e 0
pop.v.i self.i
pushi.e 9
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[12]
pushi.e 443
conv.i.v
pushi.e 120
conv.i.v
pushi.e 220
push.v self.i
pushi.e 24
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.bl
pushi.e 4
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 20
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.sf
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [12]

:[13]
popz.i
pushi.e 0
pop.v.i self.i
pushi.e 9
dup.i 0
push.i 0
cmp.i.i LTE
bt [15]

:[14]
pushi.e 443
conv.i.v
pushi.e 60
conv.i.v
pushi.e 220
push.v self.i
pushi.e 24
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.bl
pushi.e 4
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e -20
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.sf
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [14]

:[15]
popz.i
pushi.e 0
pop.v.i self.i
pushi.e 9
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[16]
pushi.e 443
conv.i.v
pushi.e 0
conv.i.v
pushi.e 220
push.v self.i
pushi.e 24
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.bl
pushi.e 20
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 4
push.v self.bl
conv.v.i
pop.v.i [stacktop]self.vspeed
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
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [26]

:[19]
pushi.e 0
pop.v.i self.i
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[20]
pushi.e 438
conv.i.v
pushi.e 200
push.v self.i
pushi.e 80
mul.i.v
sub.v.i
pushi.e 216
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [22]

:[21]
pushi.e 25
pop.v.i self.sf
pushi.e 15
pop.v.i self.sp
pushi.e 2
pop.v.i self.vspeed
pushi.e 60
pop.v.i self.yseg

:[22]
popenv [21]
pushi.e 439
conv.i.v
pushi.e 160
push.v self.i
pushi.e 80
mul.i.v
sub.v.i
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [24]

:[23]
pushi.e 20
pop.v.i self.sf
pushi.e 12
pop.v.i self.sp
pushi.e 2
pop.v.i self.vspeed
pushi.e 40
pop.v.i self.yseg

:[24]
popenv [23]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [20]

:[25]
popz.i

:[26]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [40]

:[27]
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [33]

:[28]
pushi.e 440
conv.i.v
pushi.e 180
push.v self.i
pushi.e 40
mul.i.v
sub.v.i
pushi.e 96
pushi.e 24
push.v self.i
mul.v.i
add.v.i
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [30]

:[29]
pushi.e 60
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[30]
popenv [29]
pushi.e 441
conv.i.v
pushi.e 180
push.v self.i
pushi.e 40
mul.i.v
sub.v.i
pushi.e 312
pushi.e 24
push.v self.i
mul.v.i
add.v.i
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [32]

:[31]
pushi.e 60
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[32]
popenv [31]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [28]

:[33]
popz.i
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [39]

:[34]
pushi.e 440
conv.i.v
pushi.e 20
push.v self.i
pushi.e 50
mul.i.v
sub.v.i
pushi.e 144
pushi.e 24
push.v self.i
mul.v.i
sub.v.i
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [36]

:[35]
pushi.e 60
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[36]
popenv [35]
pushi.e 441
conv.i.v
pushi.e 20
push.v self.i
pushi.e 50
mul.i.v
sub.v.i
pushi.e 360
pushi.e 24
push.v self.i
mul.v.i
sub.v.i
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [38]

:[37]
pushi.e 60
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[38]
popenv [37]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [34]

:[39]
popz.i
pushi.e 0
pop.v.i 441.on
pushi.e 0
pop.v.i 440.on

:[40]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [52]

:[41]
pushi.e 0
pop.v.i self.i
pushi.e 440
conv.i.v
pushi.e 140
conv.i.v
pushi.e 202
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [43]

:[42]
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[43]
popenv [42]
pushi.e 441
conv.i.v
pushi.e 40
conv.i.v
pushi.e 212
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [45]

:[44]
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[45]
popenv [44]
pushi.e 441
conv.i.v
pushi.e 10
conv.i.v
pushi.e 212
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [47]

:[46]
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.c

:[47]
popenv [46]
pushi.e 440
conv.i.v
pushi.e -100
conv.i.v
pushi.e 202
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [49]

:[48]
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[49]
popenv [48]
pushi.e 440
conv.i.v
pushi.e -130
conv.i.v
pushi.e 202
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [51]

:[50]
pushi.e 2
pop.v.i self.c
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[51]
popenv [50]
pushi.e 0
pop.v.i self.i
pushi.e 1
pop.v.i 441.on
pushi.e 1
pop.v.i 440.on

:[52]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [58]

:[53]
pushi.e 443
conv.i.v
pushi.e 20
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 120
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 40
conv.i.v
pushi.e 264
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 100
conv.i.v
pushi.e 264
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 200
conv.i.v
pushi.e 264
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 0
conv.i.v
pushi.e 288
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 80
conv.i.v
pushi.e 288
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 140
conv.i.v
pushi.e 288
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 20
conv.i.v
pushi.e 312
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 60
conv.i.v
pushi.e 312
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 180
conv.i.v
pushi.e 312
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 40
conv.i.v
pushi.e 336
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 120
conv.i.v
pushi.e 336
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 220
conv.i.v
pushi.e 336
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 60
conv.i.v
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 160
conv.i.v
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 0
conv.i.v
pushi.e 384
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 80
conv.i.v
pushi.e 384
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
conv.i.v
pushi.e 200
conv.i.v
pushi.e 384
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 60
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 180
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 0
conv.i.v
pushi.e 264
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 160
conv.i.v
pushi.e 264
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 40
conv.i.v
pushi.e 288
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 100
conv.i.v
pushi.e 312
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 60
conv.i.v
pushi.e 336
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 160
conv.i.v
pushi.e 336
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 0
conv.i.v
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 100
conv.i.v
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 40
conv.i.v
pushi.e 384
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e 140
conv.i.v
pushi.e 384
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 443
pushenv [55]

:[54]
pushi.e 2
pop.v.i self.vspeed
push.v self.y
pushi.e 200
sub.i.v
pop.v.v self.y

:[55]
popenv [54]
pushi.e 446
pushenv [57]

:[56]
pushi.e 2
pop.v.i self.vspeed
push.v self.y
pushi.e 200
sub.i.v
pop.v.v self.y

:[57]
popenv [56]

:[58]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [79]

:[59]
pushi.e 0
pop.v.i self.j
pushi.e 16
dup.i 0
push.i 0
cmp.i.i LTE
bt [74]

:[60]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.g
pushi.e -1
pushi.e 0
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.g
pushi.e -1
pushi.e 1
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.g
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.g
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b2
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b3
pushi.e 0
pop.v.i self.bm
pushi.e 0
pop.v.i self.i

:[61]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [73]

:[62]
push.v self.b
push.v self.i
cmp.v.v EQ
bt [68]

:[63]
push.v self.b2
push.v self.i
cmp.v.v EQ
bt [68]

:[64]
push.v self.b3
push.v self.i
cmp.v.v EQ
bf [66]

:[65]
push.v self.bm
pushi.e 3
cmp.i.v LT
b [67]

:[66]
push.e 0

:[67]
b [69]

:[68]
push.e 1

:[69]
bf [71]

:[70]
push.v self.bm
pushi.e 1
add.i.v
pop.v.v self.bm
pushi.e 446
conv.i.v
pushi.e 0
push.v self.j
pushi.e 45
mul.i.v
sub.v.i
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [72]

:[71]
pushi.e 443
conv.i.v
pushi.e 0
push.v self.j
pushi.e 45
mul.i.v
sub.v.i
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[72]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [61]

:[73]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [60]

:[74]
popz.i
pushi.e 446
pushenv [76]

:[75]
push.v self.vspeed
push.d 0.5
conv.d.v
call.i random(argc=1)
push.d 0.2
sub.d.v
add.v.v
pop.v.v self.vspeed

:[76]
popenv [75]
pushi.e 443
pushenv [78]

:[77]
push.v self.vspeed
push.d 0.5
conv.d.v
call.i random(argc=1)
push.d 0.2
sub.d.v
add.v.v
pop.v.v self.vspeed

:[78]
popenv [77]

:[79]
push.v self.type
pushi.e 8
cmp.i.v EQ
bf [85]

:[80]
pushi.e 0
pop.v.i self.j
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [82]

:[81]
pushi.e 446
conv.i.v
pushi.e -100
push.v self.j
pushi.e 240
mul.i.v
sub.v.i
push.v 744.x
call.i instance_create(argc=3)
popz.v
pushi.e 446
conv.i.v
pushi.e -100
push.v self.j
pushi.e 240
mul.i.v
sub.v.i
pushi.e 120
add.i.v
push.v 744.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [81]

:[82]
popz.i
pushi.e 446
pushenv [84]

:[83]
push.v self.vspeed
pushi.e 2
add.i.v
pop.v.v self.vspeed

:[84]
popenv [83]

:[85]
push.v self.type
pushi.e 9
cmp.i.v EQ
bf [91]

:[86]
pushi.e 0
pop.v.i self.j
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [88]

:[87]
pushi.e 446
conv.i.v
pushi.e -100
push.v self.j
pushi.e 150
mul.i.v
sub.v.i
push.v 744.x
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [87]

:[88]
popz.i
pushi.e 446
pushenv [90]

:[89]
push.v self.vspeed
pushi.e 3
add.i.v
pop.v.v self.vspeed

:[90]
popenv [89]

:[91]
push.v self.type
pushi.e 10
cmp.i.v EQ
bf [107]

:[92]
pushi.e 0
pop.v.i self.j
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [106]

:[93]
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
call.i choose(argc=5)
pop.v.v self.bm1
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
call.i choose(argc=5)
pop.v.v self.bm2
push.v self.bm2
push.v self.bm1
cmp.v.v EQ
bf [95]

:[94]
push.v self.bm2
pushi.e 1
add.i.v
pop.v.v self.bm2

:[95]
pushi.e 0
pop.v.i self.i

:[96]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [105]

:[97]
push.v self.bm1
push.v self.i
cmp.v.v EQ
bt [100]

:[98]
push.v self.bm2
push.v self.i
cmp.v.v EQ
bt [100]

:[99]
push.v self.j
push.v self.i
cmp.v.v EQ
b [101]

:[100]
push.e 1

:[101]
bf [103]

:[102]
pushi.e 446
conv.i.v
pushi.e 0
push.v self.j
pushi.e 260
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [104]

:[103]
pushi.e 443
conv.i.v
pushi.e 0
push.v self.j
pushi.e 260
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[104]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [96]

:[105]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [93]

:[106]
popz.i
push.v 446.vspeed
pushi.e 8
add.i.v
pop.v.v 446.vspeed
push.v 443.vspeed
pushi.e 8
add.i.v
pop.v.v 443.vspeed
pushi.e 436
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[107]
push.v self.type
pushi.e 11
cmp.i.v EQ
bf [114]

:[108]
pushi.e 0
pop.v.i self.j
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [113]

:[109]
pushi.e 0
pop.v.i self.i

:[110]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [112]

:[111]
pushi.e 444
conv.i.v
pushi.e 0
push.v self.j
pushi.e 150
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
push.v self.i
mul.v.i
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [110]

:[112]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [109]

:[113]
popz.i
pushi.e 4
pop.v.i 444.vspeed

:[114]
push.v self.type
pushi.e 12
cmp.i.v EQ
bf [123]

:[115]
pushi.e 0
pop.v.i self.j
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [120]

:[116]
pushi.e 0
pop.v.i self.i

:[117]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [119]

:[118]
pushi.e 445
conv.i.v
pushi.e 0
push.v self.j
pushi.e 200
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
push.v self.i
mul.v.i
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [117]

:[119]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [116]

:[120]
popz.i
pushi.e 0
pop.v.i self.j
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [122]

:[121]
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
call.i choose(argc=5)
pop.v.v self.ch
pushi.e 434
conv.i.v
pushi.e 0
push.v self.j
pushi.e 50
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.ch
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
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
call.i choose(argc=5)
pop.v.v self.ch2
pushi.e 434
conv.i.v
pushi.e 0
push.v self.j
pushi.e 75
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.ch2
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [121]

:[122]
popz.i
pushi.e 4
pop.v.i 445.vspeed

:[123]
push.v self.type
pushi.e 13
cmp.i.v EQ
bf [130]

:[124]
pushi.e 0
pop.v.i self.j
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [129]

:[125]
pushi.e 0
pop.v.i self.i

:[126]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [128]

:[127]
pushi.e 432
conv.i.v
pushi.e 0
push.v self.j
pushi.e 120
mul.i.v
sub.v.i
push.v self.i
pushi.e 40
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 150
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [126]

:[128]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [125]

:[129]
popz.i

:[130]
push.v self.type
pushi.e 14
cmp.i.v EQ
bf [137]

:[131]
pushi.e 0
pop.v.i self.j
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [136]

:[132]
pushi.e 0
pop.v.i self.i

:[133]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [135]

:[134]
pushi.e 432
conv.i.v
pushi.e 0
push.v self.j
pushi.e 150
mul.i.v
sub.v.i
push.v self.i
pushi.e 50
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 150
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [133]

:[135]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [132]

:[136]
popz.i

:[137]
push.v self.type
pushi.e 15
cmp.i.v EQ
bf [147]

:[138]
pushi.e 0
pop.v.i self.i

:[139]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [141]

:[140]
pushi.e 433
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
push.v self.i
mul.v.i
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [139]

:[141]
pushi.e 0
pop.v.i self.i

:[142]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [144]

:[143]
pushi.e 433
conv.i.v
pushi.e -125
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 25
push.v self.i
pushi.e 1
add.i.v
mul.v.i
sub.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [142]

:[144]
pushi.e 0
pop.v.i self.i

:[145]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [147]

:[146]
pushi.e 433
conv.i.v
pushi.e -250
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
push.v self.i
mul.v.i
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [145]

:[147]
push.v self.type
pushi.e 16
cmp.i.v EQ
bf [157]

:[148]
pushi.e 0
pop.v.i self.i

:[149]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [151]

:[150]
pushi.e 433
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
push.v self.i
mul.v.i
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [149]

:[151]
pushi.e 0
pop.v.i self.i

:[152]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [154]

:[153]
pushi.e 433
conv.i.v
pushi.e -125
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 25
push.v self.i
pushi.e 1
add.i.v
mul.v.i
sub.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [152]

:[154]
pushi.e 0
pop.v.i self.i

:[155]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [157]

:[156]
pushi.e 433
conv.i.v
pushi.e -250
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
push.v self.i
mul.v.i
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [155]

:[157]
push.v self.type
pushi.e 26
cmp.i.v EQ
bf [166]

:[158]
pushi.e 140
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.j
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [163]

:[159]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.g
pushi.e -1
pushi.e 0
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.g
pushi.e -1
pushi.e 1
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.g
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.g
pushi.e 0
pop.v.i self.i

:[160]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [162]

:[161]
pushi.e 443
conv.i.v
pushi.e 0
push.v self.j
pushi.e 95
mul.i.v
sub.v.i
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 100
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [160]

:[162]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [159]

:[163]
popz.i
pushi.e 443
pushenv [165]

:[164]
pushi.e 8
conv.i.v
call.i random(argc=1)
pop.v.v self.s
pushi.e 3
pop.v.i self.sf
pushi.e 4
pop.v.i self.sp
push.v self.vspeed
pushi.e 2
add.i.v
pop.v.v self.vspeed

:[165]
popenv [164]

:[166]
push.v self.type
pushi.e 27
cmp.i.v EQ
bf [178]

:[167]
pushi.e 165
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [169]

:[168]
pushi.e 443
conv.i.v
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e 4
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [168]

:[169]
popz.i
pushi.e 438
conv.i.v
pushi.e 30
conv.i.v
push.v self.gil
pushi.e 50
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [171]

:[170]
pushi.e 1
pop.v.i self.sf
pushi.e 1
pop.v.i self.sp
pushi.e 4
pop.v.i self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 999
pop.v.i self.ysegi

:[171]
popenv [170]
pushi.e 0
pop.v.i self.i
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [173]

:[172]
pushi.e 443
conv.i.v
pushi.e -120
conv.i.v
push.v self.gir
pushi.e 25
sub.i.v
push.v self.i
pushi.e 25
mul.i.v
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e 4
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [172]

:[173]
popz.i
pushi.e 439
conv.i.v
pushi.e -120
conv.i.v
push.v self.gir
pushi.e 75
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [175]

:[174]
pushi.e 1
pop.v.i self.sf
pushi.e 1
pop.v.i self.sp
pushi.e 4
pop.v.i self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 999
pop.v.i self.ysegi

:[175]
popenv [174]
pushi.e 438
conv.i.v
pushi.e -250
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [177]

:[176]
pushi.e 1
pop.v.i self.sf
pushi.e 1
pop.v.i self.sp
pushi.e 4
pop.v.i self.vspeed
pushi.e 70
pop.v.i self.ysegi

:[177]
popenv [176]

:[178]
push.v self.type
pushi.e 28
cmp.i.v EQ
bf [188]

:[179]
pushi.e 160
pop.v.i global.turntimer
pushi.e 438
conv.i.v
pushi.e -25
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [181]

:[180]
pushi.e 4
pop.v.i self.sf
pushi.e 3
pop.v.i self.sp
pushi.e 4
pop.v.i self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 40
pop.v.i self.ysegi

:[181]
popenv [180]
pushi.e 439
conv.i.v
pushi.e -125
conv.i.v
push.v self.gir
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [183]

:[182]
pushi.e 4
pop.v.i self.sf
pushi.e 3
pop.v.i self.sp
pushi.e 4
pop.v.i self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 40
pop.v.i self.ysegi

:[183]
popenv [182]
pushi.e 0
pop.v.i self.i
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [185]

:[184]
pushi.e 443
conv.i.v
pushi.e -230
conv.i.v
push.v self.gil
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e 4
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [184]

:[185]
popz.i
pushi.e 446
conv.i.v
pushi.e -230
conv.i.v
push.v self.gil
pushi.e 75
add.i.v
call.i instance_create(argc=3)
pop.v.v self.pl
pushi.e 4
push.v self.pl
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [187]

:[186]
pushi.e 443
conv.i.v
pushi.e -230
conv.i.v
push.v self.gil
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e 4
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [186]

:[187]
popz.i

:[188]
push.v self.type
pushi.e 29
cmp.i.v EQ
bf [212]

:[189]
pushi.e 150
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.j
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [205]

:[190]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.g
pushi.e -1
pushi.e 0
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.g
pushi.e -1
pushi.e 1
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.g
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.g
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b2
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b3
pushi.e 0
pop.v.i self.bm
pushi.e 0
pop.v.i self.i

:[191]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [204]

:[192]
push.v self.b
push.v self.i
cmp.v.v EQ
bt [197]

:[193]
push.v self.b2
push.v self.i
cmp.v.v EQ
bf [195]

:[194]
push.v self.bm
pushi.e 3
cmp.i.v LT
b [196]

:[195]
push.e 0

:[196]
b [198]

:[197]
push.e 1

:[198]
bf [200]

:[199]
push.v self.bm
pushi.e 1
add.i.v
pop.v.v self.bm
pushi.e 446
conv.i.v
pushi.e 0
push.v self.j
pushi.e 85
mul.i.v
sub.v.i
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [203]

:[200]
push.v self.b3
push.v self.i
cmp.v.v EQ
bf [202]

:[201]
pushi.e 434
conv.i.v
pushi.e 0
push.v self.j
pushi.e 85
mul.i.v
sub.v.i
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [203]

:[202]
pushi.e 443
conv.i.v
pushi.e 0
push.v self.j
pushi.e 85
mul.i.v
sub.v.i
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[203]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [191]

:[204]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [190]

:[205]
popz.i
pushi.e 446
pushenv [207]

:[206]
push.v self.vspeed
push.d 0.6
conv.d.v
call.i random(argc=1)
pushi.e 1
add.i.v
add.v.v
pop.v.v self.vspeed

:[207]
popenv [206]
pushi.e 443
pushenv [209]

:[208]
push.v self.vspeed
push.d 0.6
conv.d.v
call.i random(argc=1)
pushi.e 1
add.i.v
add.v.v
pop.v.v self.vspeed

:[209]
popenv [208]
pushi.e 434
pushenv [211]

:[210]
push.v self.vspeed
push.d 0.6
conv.d.v
call.i random(argc=1)
pushi.e 1
add.i.v
add.v.v
pop.v.v self.vspeed

:[211]
popenv [210]

:[212]
push.v self.type
pushi.e 99
cmp.i.v EQ
bf [222]

:[213]
pushi.e 438
conv.i.v
pushi.e -25
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [215]

:[214]
pushi.e 4
pop.v.i self.sf
pushi.e 3
pop.v.i self.sp
pushi.e 4
pop.v.i self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 40
pop.v.i self.ysegi

:[215]
popenv [214]
pushi.e 439
conv.i.v
pushi.e -150
conv.i.v
push.v self.gir
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [217]

:[216]
pushi.e 4
pop.v.i self.sf
pushi.e 3
pop.v.i self.sp
pushi.e 4
pop.v.i self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 40
pop.v.i self.ysegi

:[217]
popenv [216]
pushi.e 0
pop.v.i self.j
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [221]

:[218]
pushi.e 0
pop.v.i self.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [220]

:[219]
pushi.e 434
conv.i.v
pushi.e 0
push.v self.j
pushi.e 50
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.gir
push.v self.gil
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.lt
push.d -0.5
push.d 0.25
push.v self.i
mul.v.d
add.v.d
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.1
sub.d.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.hspeed
push.d 1.5
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.1
sub.d.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.vspeed
push.d -0.05
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [219]

:[220]
popz.i
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [218]

:[221]
popz.i

:[222]
push.v self.type
pushi.e 30
cmp.i.v EQ
bf [224]

:[223]
pushi.e 200
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i
pushi.e 440
conv.i.v
pushi.e 60
conv.i.v
push.v self.gil
pushi.e 45
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 0
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 80
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 441
conv.i.v
pushi.e -80
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 0
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 80
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 440
conv.i.v
pushi.e -240
conv.i.v
push.v self.gil
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 1
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 30
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 441
conv.i.v
pushi.e -240
conv.i.v
push.v self.gil
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 1
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 30
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 440
conv.i.v
pushi.e -380
conv.i.v
push.v self.gil
pushi.e 140
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 1
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 30
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 441
conv.i.v
pushi.e -380
conv.i.v
push.v self.gil
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 1
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 30
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 4
pop.v.i 440.vspeed
pushi.e 4
pop.v.i 441.vspeed

:[224]
push.v self.type
pushi.e 31
cmp.i.v EQ
bf [230]

:[225]
pushi.e 190
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [227]

:[226]
pushi.e 432
conv.i.v
pushi.e -50
push.v self.i
pushi.e 70
mul.i.v
sub.v.i
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.mf
pushi.e 432
conv.i.v
pushi.e -50
push.v self.i
pushi.e 70
mul.i.v
sub.v.i
push.v self.gir
pushi.e 25
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mf
pushi.e 5
pop.v.i 432.vspeed
pushi.e 2
pop.v.i 432.type
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [226]

:[227]
popz.i
pushi.e 0
pop.v.i self.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [229]

:[228]
pushi.e 446
conv.i.v
pushi.e -50
push.v self.i
mul.v.i
push.v self.gil
pushi.e 25
add.i.v
push.v self.gir
push.v self.gil
sub.v.v
pushi.e 75
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bl
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [228]

:[229]
popz.i

:[230]
push.v self.type
pushi.e 32
cmp.i.v EQ
bf [232]

:[231]
pushi.e 210
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i
pushi.e 440
conv.i.v
pushi.e 60
conv.i.v
push.v self.gil
pushi.e 45
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 0
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 60
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 440
conv.i.v
pushi.e 20
conv.i.v
push.v self.gil
pushi.e 45
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 0
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 60
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 440
conv.i.v
pushi.e -20
conv.i.v
push.v self.gil
pushi.e 45
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 0
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 60
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 441
conv.i.v
pushi.e -200
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 0
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 60
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 441
conv.i.v
pushi.e -240
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 0
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 60
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 441
conv.i.v
pushi.e -280
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
pushi.e 0
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 60
push.v self.ll
conv.v.i
pop.v.i [stacktop]self.sf
push.d 3.3
pop.v.d 440.vspeed
push.d 3.3
pop.v.d 441.vspeed
pushi.e 443
conv.i.v
pushi.e -175
conv.i.v
push.v self.gil
pushi.e 75
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ks
push.d 3.3
push.v self.ks
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 20
push.v self.ks
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 10
push.v self.ks
conv.v.i
pop.v.i [stacktop]self.sp
pushi.e 443
conv.i.v
pushi.e -50
conv.i.v
push.v self.gil
pushi.e 75
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ks
push.d 3.3
push.v self.ks
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 20
push.v self.ks
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 10
push.v self.ks
conv.v.i
pop.v.i [stacktop]self.sp
pushi.e 443
conv.i.v
pushi.e -150
conv.i.v
push.v self.gil
pushi.e 75
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ks
push.d 3.3
push.v self.ks
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 20
push.v self.ks
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 10
push.v self.ks
conv.v.i
pop.v.i [stacktop]self.sp
pushi.e 443
conv.i.v
pushi.e -75
conv.i.v
push.v self.gil
pushi.e 75
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ks
push.d 3.3
push.v self.ks
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 20
push.v self.ks
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 10
push.v self.ks
conv.v.i
pop.v.i [stacktop]self.sp

:[232]
push.v self.type
pushi.e 33
cmp.i.v EQ
bf [242]

:[233]
pushi.e 190
pop.v.i global.turntimer
pushi.e 438
conv.i.v
pushi.e -25
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [235]

:[234]
pushi.e 20
pop.v.i self.sf
pushi.e 7
pop.v.i self.sp
push.d 3.5
pop.v.d self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 40
pop.v.i self.ysegi

:[235]
popenv [234]
pushi.e 439
conv.i.v
pushi.e -235
conv.i.v
push.v self.gir
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [237]

:[236]
pushi.e 20
pop.v.i self.sf
pushi.e 7
pop.v.i self.sp
push.d 3.5
pop.v.d self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 40
pop.v.i self.ysegi

:[237]
popenv [236]
pushi.e 0
pop.v.i self.j
pushi.e 1
dup.i 0
push.i 0
cmp.i.i LTE
bt [241]

:[238]
pushi.e 0
pop.v.i self.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [240]

:[239]
pushi.e 432
conv.i.v
pushi.e -80
conv.i.v
push.v self.gil
pushi.e 25
add.i.v
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.lt
push.d 3.5
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 80
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.early
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [239]

:[240]
popz.i
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [238]

:[241]
popz.i

:[242]
push.v self.type
pushi.e 34
cmp.i.v EQ
bf [244]

:[243]
pushi.e 90
pop.v.i global.turntimer
pushi.e 410
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[244]
push.v self.type
pushi.e 35
cmp.i.v EQ
bf [246]

:[245]
pushi.e 600
pop.v.i global.turntimer
pushi.e 422
conv.i.v
pushi.e 162
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bossheart

:[246]
push.v self.type
pushi.e 36
cmp.i.v EQ
bf [253]

:[247]
pushi.e 250
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.specialtimer
pushi.e 0
pop.v.i self.j
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [252]

:[248]
pushi.e 0
pop.v.i self.i

:[249]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [251]

:[250]
pushi.e 432
conv.i.v
pushi.e 0
push.v self.j
pushi.e 90
mul.i.v
sub.v.i
push.v self.i
pushi.e 30
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 150
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.km
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [249]

:[251]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [248]

:[252]
popz.i
push.v 432.vspeed
pushi.e 1
add.i.v
pop.v.v 432.vspeed

:[253]
push.v self.type
pushi.e 37
cmp.i.v EQ
bf [255]

:[254]
pushi.e 270
pop.v.i global.turntimer
pushi.e 427
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e 308
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ds
push.v 744.x
pushi.e 7
add.i.v
pop.v.v 744.x
push.v 744.y
pushi.e 10
add.i.v
pop.v.v 744.y
pushi.e 0
push.v self.ds
conv.v.i
pop.v.i [stacktop]self.diff

:[255]
push.v self.type
pushi.e 38
cmp.i.v EQ
bf [258]

:[256]
pushi.e 193
pop.v.i global.turntimer
pushi.e 427
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e 308
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ds
push.v 744.x
pushi.e 7
add.i.v
pop.v.v 744.x
push.v 744.y
pushi.e 10
add.i.v
pop.v.v 744.y
pushi.e 1
push.v self.ds
conv.v.i
pop.v.i [stacktop]self.diff
pushi.e -5
pushi.e 0
push.v [array]global.specialdam
pushi.e 1
cmp.i.v GT
bf [258]

:[257]
pushi.e 0
push.v self.ds
conv.v.i
pop.v.i [stacktop]self.diff
pushi.e 270
pop.v.i global.turntimer

:[258]
push.v self.type
pushi.e 39
cmp.i.v EQ
bf [263]

:[259]
pushi.e 210
pop.v.i global.turntimer
pushi.e 2
pop.v.i self.specialtimer
pushi.e 0
pop.v.i self.j
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
pop.v.v self.oo
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [261]

:[260]
pushi.e 446
conv.i.v
pushi.e -200
push.v self.j
pushi.e 260
mul.i.v
sub.v.i
push.v self.oo
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e 1
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 446
conv.i.v
pushi.e -200
push.v self.j
pushi.e 260
mul.i.v
sub.v.i
pushi.e 120
add.i.v
push.v self.oo
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e 2
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.side
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [260]

:[261]
popz.i
pushi.e 446
pushenv [262]

:[262]
popenv [262]

:[263]
push.v self.type
pushi.e 40
cmp.i.v EQ
bf [270]

:[264]
pushi.e 160
pop.v.i global.turntimer
pushi.e 2
pop.v.i self.specialtimer
pushi.e 0
pop.v.i self.j
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
pop.v.v self.oo
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [266]

:[265]
pushi.e 446
conv.i.v
pushi.e -200
push.v self.j
pushi.e 260
mul.i.v
sub.v.i
push.v self.oo
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e 1
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 446
conv.i.v
pushi.e -200
push.v self.j
pushi.e 260
mul.i.v
sub.v.i
pushi.e 120
add.i.v
push.v self.oo
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e 2
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.side
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [265]

:[266]
popz.i
pushi.e 446
pushenv [269]

:[267]
pushi.e -5
pushi.e 1
push.v [array]global.specialdam
pushi.e 2
cmp.i.v LT
bf [269]

:[268]
push.v self.vspeed
pushi.e 2
add.i.v
pop.v.v self.vspeed
push.v self.vspeed
pushi.e 1
add.i.v
pop.v.v self.vspeed

:[269]
popenv [267]

:[270]
push.v self.type
pushi.e 41
cmp.i.v EQ
bf [272]

:[271]
pushi.e 110
pop.v.i global.turntimer
pushi.e 416
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
call.i instance_create(argc=3)
popz.v

:[272]
push.v self.type
pushi.e 42
cmp.i.v EQ
bf [274]

:[273]
pushi.e 600
pop.v.i global.turntimer
pushi.e 423
conv.i.v
pushi.e 162
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bossheart

:[274]
push.v self.type
pushi.e 99
cmp.i.v EQ
bf [286]

:[275]
pushi.e 180
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i
pushi.e 440
conv.i.v
pushi.e 140
conv.i.v
pushi.e 202
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [277]

:[276]
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[277]
popenv [276]
pushi.e 441
conv.i.v
pushi.e 40
conv.i.v
pushi.e 212
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [279]

:[278]
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[279]
popenv [278]
pushi.e 441
conv.i.v
pushi.e 10
conv.i.v
pushi.e 212
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [281]

:[280]
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.c

:[281]
popenv [280]
pushi.e 440
conv.i.v
pushi.e -100
conv.i.v
pushi.e 202
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [283]

:[282]
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[283]
popenv [282]
pushi.e 440
conv.i.v
pushi.e -130
conv.i.v
pushi.e 202
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [285]

:[284]
pushi.e 2
pop.v.i self.c
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed

:[285]
popenv [284]
pushi.e 0
pop.v.i self.i
pushi.e 1
pop.v.i 441.on
pushi.e 1
pop.v.i 440.on

:[286]
push.v self.type
pushi.e 43
cmp.i.v EQ
bf [302]

:[287]
pushi.e 200
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.j
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [301]

:[288]
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
call.i choose(argc=5)
pop.v.v self.bm1
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
call.i choose(argc=5)
pop.v.v self.bm2
push.v self.bm2
push.v self.bm1
cmp.v.v EQ
bf [290]

:[289]
push.v self.bm2
pushi.e 1
add.i.v
pop.v.v self.bm2

:[290]
pushi.e 0
pop.v.i self.i

:[291]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [300]

:[292]
push.v self.bm1
push.v self.i
cmp.v.v EQ
bt [295]

:[293]
push.v self.bm2
push.v self.i
cmp.v.v EQ
bt [295]

:[294]
push.v self.j
push.v self.i
cmp.v.v EQ
b [296]

:[295]
push.e 1

:[296]
bf [298]

:[297]
pushi.e 446
conv.i.v
pushi.e 0
push.v self.j
pushi.e 180
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [299]

:[298]
pushi.e 443
conv.i.v
pushi.e 0
push.v self.j
pushi.e 180
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[299]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [291]

:[300]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [288]

:[301]
popz.i
push.v 446.vspeed
pushi.e 3
add.i.v
pop.v.v 446.vspeed
push.v 443.vspeed
pushi.e 3
add.i.v
pop.v.v 443.vspeed
pushi.e 436
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rw
pushi.e 10
push.v self.rw
conv.v.i
pop.v.i [stacktop]self.maxrw

:[302]
push.v self.type
pushi.e 44
cmp.i.v EQ
bf [319]

:[303]
pushi.e 220
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.j
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [317]

:[304]
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
call.i choose(argc=5)
pop.v.v self.bm1
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
call.i choose(argc=5)
pop.v.v self.bm2
push.v self.bm2
push.v self.bm1
cmp.v.v EQ
bf [306]

:[305]
push.v self.bm2
pushi.e 1
add.i.v
pop.v.v self.bm2

:[306]
pushi.e 0
pop.v.i self.i

:[307]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [316]

:[308]
push.v self.bm1
push.v self.i
cmp.v.v EQ
bt [311]

:[309]
push.v self.bm2
push.v self.i
cmp.v.v EQ
bt [311]

:[310]
push.v self.j
push.v self.i
cmp.v.v EQ
b [312]

:[311]
push.e 1

:[312]
bf [314]

:[313]
pushi.e 446
conv.i.v
pushi.e -60
push.v self.j
pushi.e 250
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [315]

:[314]
pushi.e 443
conv.i.v
pushi.e -60
push.v self.j
pushi.e 250
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[315]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [307]

:[316]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [304]

:[317]
popz.i
push.v 446.vspeed
pushi.e 6
add.i.v
pop.v.v 446.vspeed
push.v 443.vspeed
pushi.e 6
add.i.v
pop.v.v 443.vspeed
pushi.e 436
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rw
pushi.e -5
pushi.e 2
push.v [array]global.specialdam
pushi.e 2
cmp.i.v GT
bf [319]

:[318]
pushi.e 10
push.v self.rw
conv.v.i
pop.v.i [stacktop]self.maxrw
push.v 446.vspeed
pushi.e 1
sub.i.v
pop.v.v 446.vspeed
push.v 443.vspeed
pushi.e 1
sub.i.v
pop.v.v 443.vspeed

:[319]
push.v self.type
pushi.e 45
cmp.i.v EQ
bf [340]

:[320]
pushi.e 165
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.j
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [335]

:[321]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.g
pushi.e -1
pushi.e 0
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.g
pushi.e -1
pushi.e 1
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.g
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.g
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b2
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b3
pushi.e 0
pop.v.i self.bm
pushi.e 0
pop.v.i self.i

:[322]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [334]

:[323]
push.v self.b
push.v self.i
cmp.v.v EQ
bt [329]

:[324]
push.v self.b2
push.v self.i
cmp.v.v EQ
bt [329]

:[325]
push.v self.b3
push.v self.i
cmp.v.v EQ
bf [327]

:[326]
push.v self.bm
pushi.e 3
cmp.i.v LT
b [328]

:[327]
push.e 0

:[328]
b [330]

:[329]
push.e 1

:[330]
bf [332]

:[331]
push.v self.bm
pushi.e 1
add.i.v
pop.v.v self.bm
pushi.e 446
conv.i.v
pushi.e 0
push.v self.j
pushi.e 45
mul.i.v
sub.v.i
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [333]

:[332]
pushi.e 443
conv.i.v
pushi.e 0
push.v self.j
pushi.e 45
mul.i.v
sub.v.i
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[333]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [322]

:[334]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [321]

:[335]
popz.i
pushi.e 446
pushenv [337]

:[336]
push.v self.vspeed
pushi.e 1
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
push.d 0.2
sub.d.v
add.v.v
pop.v.v self.vspeed

:[337]
popenv [336]
pushi.e 443
pushenv [339]

:[338]
push.v self.vspeed
pushi.e 1
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
push.d 0.2
sub.d.v
add.v.v
pop.v.v self.vspeed

:[339]
popenv [338]

:[340]
push.v self.type
pushi.e 46
cmp.i.v EQ
bf [361]

:[341]
pushi.e 140
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.j
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [356]

:[342]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.g
pushi.e -1
pushi.e 0
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.g
pushi.e -1
pushi.e 1
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.g
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.g
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b2
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b3
pushi.e 0
pop.v.i self.bm
pushi.e 0
pop.v.i self.i

:[343]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [355]

:[344]
push.v self.b
push.v self.i
cmp.v.v EQ
bt [350]

:[345]
push.v self.b2
push.v self.i
cmp.v.v EQ
bt [350]

:[346]
push.v self.b3
push.v self.i
cmp.v.v EQ
bf [348]

:[347]
push.v self.bm
pushi.e 3
cmp.i.v LT
b [349]

:[348]
push.e 0

:[349]
b [351]

:[350]
push.e 1

:[351]
bf [353]

:[352]
push.v self.bm
pushi.e 1
add.i.v
pop.v.v self.bm
pushi.e 446
conv.i.v
pushi.e 0
push.v self.j
pushi.e 54
mul.i.v
sub.v.i
pushi.e 25
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [354]

:[353]
pushi.e 443
conv.i.v
pushi.e 0
push.v self.j
pushi.e 54
mul.i.v
sub.v.i
pushi.e 25
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[354]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [343]

:[355]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [342]

:[356]
popz.i
pushi.e 446
pushenv [358]

:[357]
push.v self.vspeed
push.d 2.5
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.2
sub.d.v
add.v.v
pop.v.v self.vspeed

:[358]
popenv [357]
pushi.e 443
pushenv [360]

:[359]
push.v self.vspeed
push.d 2.5
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.2
sub.d.v
add.v.v
pop.v.v self.vspeed

:[360]
popenv [359]

:[361]
push.v self.type
pushi.e 47
cmp.i.v EQ
bf [372]

:[362]
pushi.e 200
pop.v.i global.turntimer
pushi.e 2
pop.v.i self.specialtimer
pushi.e 0
pop.v.i self.j
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v 744.x
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [368]

:[363]
pushi.e 25
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=2)
pop.v.v self.ch
pushi.e 446
conv.i.v
pushi.e -100
push.v self.j
pushi.e 180
mul.i.v
sub.v.i
push.v 744.x
push.v self.ch
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bb
push.v self.ch
pushi.e 5
cmp.i.v EQ
bf [365]

:[364]
pushi.e 1
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.side

:[365]
push.v self.ch
pushi.e 25
cmp.i.v EQ
bf [367]

:[366]
pushi.e 2
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.side

:[367]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [363]

:[368]
popz.i
pushi.e 446
pushenv [371]

:[369]
push.v self.vspeed
pushi.e 3
add.i.v
pop.v.v self.vspeed
pushi.e -5
pushi.e 1
push.v [array]global.specialdam
pushi.e 3
cmp.i.v GT
bf [371]

:[370]
push.v self.vspeed
pushi.e 1
sub.i.v
pop.v.v self.vspeed

:[371]
popenv [369]

:[372]
push.v self.type
pushi.e 48
cmp.i.v EQ
bf [374]

:[373]
pushi.e 700
pop.v.i global.turntimer
pushi.e 424
conv.i.v
pushi.e 162
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bossheart

:[374]
push.v self.type
pushi.e 49
cmp.i.v EQ
bf [376]

:[375]
pushi.e 800
pop.v.i global.turntimer
pushi.e 425
conv.i.v
pushi.e 232
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bossheart

:[376]
push.v self.type
pushi.e 50
cmp.i.v EQ
bf [384]

:[377]
pushi.e 170
pop.v.i global.turntimer
pushi.e 438
conv.i.v
pushi.e -25
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [379]

:[378]
pushi.e 300
conv.i.v
call.i random(argc=1)
pop.v.v self.s
pushi.e 50
pop.v.i self.sf
pushi.e 10
pop.v.i self.sp
push.d 4.5
pop.v.d self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 80
pop.v.i self.ysegi

:[379]
popenv [378]
pushi.e 439
conv.i.v
pushi.e -185
conv.i.v
push.v self.gir
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [381]

:[380]
pushi.e 300
conv.i.v
call.i random(argc=1)
pop.v.v self.s
pushi.e 50
pop.v.i self.sf
pushi.e 10
pop.v.i self.sp
push.d 4.5
pop.v.d self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 80
pop.v.i self.ysegi

:[381]
popenv [380]
pushi.e 438
conv.i.v
pushi.e -345
conv.i.v
push.v self.gil
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [383]

:[382]
pushi.e 300
conv.i.v
call.i random(argc=1)
pop.v.v self.s
pushi.e 50
pop.v.i self.sf
pushi.e 10
pop.v.i self.sp
push.d 4.5
pop.v.d self.vspeed
pushi.e 999
pop.v.i self.yseg
pushi.e 80
pop.v.i self.ysegi

:[383]
popenv [382]
pushi.e 0
pop.v.i self.j

:[384]
push.v self.type
pushi.e 51
cmp.i.v EQ
bf [386]

:[385]
pushi.e 160
pop.v.i global.turntimer
pushi.e 427
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 308
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ds
pushi.e 2
push.v self.ds
conv.v.i
pop.v.i [stacktop]self.diff

:[386]
push.v self.type
pushi.e 52
cmp.i.v EQ
bf [407]

:[387]
pushi.e 150
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.j
pushi.e 9
dup.i 0
push.i 0
cmp.i.i LTE
bt [402]

:[388]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.g
pushi.e -1
pushi.e 0
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.g
pushi.e -1
pushi.e 1
push.v [array]self.g
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.g
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.g
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b2
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.b3
pushi.e 0
pop.v.i self.bm
pushi.e 0
pop.v.i self.i

:[389]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [401]

:[390]
push.v self.b
push.v self.i
cmp.v.v EQ
bt [396]

:[391]
push.v self.b2
push.v self.i
cmp.v.v EQ
bt [396]

:[392]
push.v self.b3
push.v self.i
cmp.v.v EQ
bf [394]

:[393]
push.v self.bm
pushi.e 3
cmp.i.v LT
b [395]

:[394]
push.e 0

:[395]
b [397]

:[396]
push.e 1

:[397]
bf [399]

:[398]
push.v self.bm
pushi.e 1
add.i.v
pop.v.v self.bm
pushi.e 446
conv.i.v
pushi.e 0
push.v self.j
pushi.e 45
mul.i.v
sub.v.i
pushi.e 25
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [400]

:[399]
pushi.e 443
conv.i.v
pushi.e 0
push.v self.j
pushi.e 45
mul.i.v
sub.v.i
pushi.e 25
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.g
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[400]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [389]

:[401]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [388]

:[402]
popz.i
pushi.e 446
pushenv [404]

:[403]
push.v self.vspeed
pushi.e 1
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
push.d 0.2
sub.d.v
add.v.v
pop.v.v self.vspeed

:[404]
popenv [403]
pushi.e 443
pushenv [406]

:[405]
push.v self.vspeed
pushi.e 1
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
push.d 0.2
sub.d.v
add.v.v
pop.v.v self.vspeed

:[406]
popenv [405]

:[407]
push.v self.type
pushi.e 53
cmp.i.v EQ
bf [417]

:[408]
pushi.e 200
pop.v.i global.turntimer
pushi.e 2
pop.v.i self.specialtimer
pushi.e 0
pop.v.i self.j
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v 744.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
pop.v.v self.oo
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [414]

:[409]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.ch
pushi.e 446
conv.i.v
pushi.e -100
push.v self.j
pushi.e 170
mul.i.v
sub.v.i
push.v self.oo
push.v self.ch
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bb
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [411]

:[410]
pushi.e 1
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.side

:[411]
push.v self.ch
pushi.e 20
cmp.i.v EQ
bf [413]

:[412]
pushi.e 2
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.side

:[413]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [409]

:[414]
popz.i
pushi.e 446
pushenv [416]

:[415]
push.v self.vspeed
push.d 3.5
add.d.v
pop.v.v self.vspeed

:[416]
popenv [415]

:[417]
push.v self.type
pushi.e 54
cmp.i.v EQ
bf [424]

:[418]
pushi.e 250
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.specialtimer
pushi.e 0
pop.v.i self.j
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [423]

:[419]
pushi.e 0
pop.v.i self.i

:[420]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [422]

:[421]
pushi.e 432
conv.i.v
pushi.e 0
push.v self.j
pushi.e 120
mul.i.v
sub.v.i
push.v self.i
pushi.e 40
mul.i.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 150
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.f
push.v self.f
conv.v.i
dup.i 0
push.v [stacktop]self.vspeed
push.d 0.5
add.d.v
pop.i.v [stacktop]self.vspeed
pushi.e 434
conv.i.v
pushi.e 0
push.v self.j
pushi.e 120
mul.i.v
sub.v.i
push.v self.i
pushi.e 40
mul.i.v
sub.v.v
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 150
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.t
push.v self.t
conv.v.i
dup.i 0
push.v [stacktop]self.direction
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 10
sub.i.v
add.v.v
pop.i.v [stacktop]self.direction
push.v self.t
conv.v.i
dup.i 0
push.v [stacktop]self.vspeed
pushi.e 2
add.i.v
pop.i.v [stacktop]self.vspeed
push.d -0.02
push.v self.t
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [420]

:[422]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [419]

:[423]
popz.i

:[424]
push.v self.type
pushi.e 55
cmp.i.v EQ
bf [438]

:[425]
pushi.e 170
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [431]

:[426]
pushi.e 440
conv.i.v
pushi.e 180
push.v self.i
pushi.e 40
mul.i.v
sub.v.i
pushi.e 96
pushi.e 24
push.v self.i
mul.v.i
add.v.i
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [428]

:[427]
pushi.e 60
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
push.d 2.8
pop.v.d self.vspeed

:[428]
popenv [427]
pushi.e 441
conv.i.v
pushi.e 180
push.v self.i
pushi.e 40
mul.i.v
sub.v.i
pushi.e 312
pushi.e 24
push.v self.i
mul.v.i
add.v.i
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [430]

:[429]
pushi.e 60
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
push.d 2.8
pop.v.d self.vspeed

:[430]
popenv [429]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [426]

:[431]
popz.i
pushi.e 0
pop.v.i self.i
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [437]

:[432]
pushi.e 440
conv.i.v
pushi.e 20
push.v self.i
pushi.e 50
mul.i.v
sub.v.i
pushi.e 144
pushi.e 24
push.v self.i
mul.v.i
sub.v.i
call.i instance_create(argc=3)
pop.v.v self.ll
push.v self.ll
conv.v.i
pushenv [434]

:[433]
pushi.e 60
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
push.d 2.8
pop.v.d self.vspeed

:[434]
popenv [433]
pushi.e 441
conv.i.v
pushi.e 20
push.v self.i
pushi.e 50
mul.i.v
sub.v.i
pushi.e 360
pushi.e 24
push.v self.i
mul.v.i
sub.v.i
call.i instance_create(argc=3)
pop.v.v self.rr
push.v self.rr
conv.v.i
pushenv [436]

:[435]
pushi.e 60
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
push.d 2.8
pop.v.d self.vspeed

:[436]
popenv [435]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [432]

:[437]
popz.i
pushi.e 0
pop.v.i 441.on
pushi.e 0
pop.v.i 440.on

:[438]
push.v self.type
pushi.e 56
cmp.i.v EQ
bf [end]

:[439]
pushi.e 260
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.j
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [453]

:[440]
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
call.i choose(argc=5)
pop.v.v self.bm1
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
call.i choose(argc=5)
pop.v.v self.bm2
push.v self.bm2
push.v self.bm1
cmp.v.v EQ
bf [442]

:[441]
push.v self.bm2
pushi.e 1
add.i.v
pop.v.v self.bm2

:[442]
pushi.e 0
pop.v.i self.i

:[443]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [452]

:[444]
push.v self.bm1
push.v self.i
cmp.v.v EQ
bt [447]

:[445]
push.v self.bm2
push.v self.i
cmp.v.v EQ
bt [447]

:[446]
push.v self.j
push.v self.i
cmp.v.v EQ
b [448]

:[447]
push.e 1

:[448]
bf [450]

:[449]
pushi.e 446
conv.i.v
pushi.e -100
push.v self.j
pushi.e 240
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
b [451]

:[450]
pushi.e 443
conv.i.v
pushi.e -100
push.v self.j
pushi.e 240
mul.i.v
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[451]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [443]

:[452]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [440]

:[453]
popz.i
push.v 446.vspeed
pushi.e 5
add.i.v
pop.v.v 446.vspeed
push.v 443.vspeed
pushi.e 5
add.i.v
pop.v.v 443.vspeed
pushi.e 436
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rw
pushi.e -40
push.v self.rw
conv.v.i
pop.v.i [stacktop]self.rew

:[end]