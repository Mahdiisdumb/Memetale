.localvar 0 arguments
.localvar 1 gn 9782
.localvar 2 v 9786

:[0]
push.v self.attack
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 10
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1639
conv.i.v
push.v 1595.y
push.v 1595.x
call.i instance_create(argc=3)
popz.v
pushi.e 1639
conv.i.v
push.v 1595.y
push.v 1595.x
push.v 1595.op
add.v.v
call.i instance_create(argc=3)
popz.v

:[3]
push.v self.counter
pushi.e 20
cmp.i.v EQ
bf [7]

:[4]
pushi.e 1595
pushenv [6]

:[5]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]

:[7]
push.v self.counter
pushi.e 22
cmp.i.v GTE
bf [9]

:[8]
pushi.e 16
pop.v.i self.counter

:[9]
push.v self.attack
pushi.e 2
cmp.i.v EQ
bf [16]

:[10]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 14
cmp.i.v EQ
bf [14]

:[11]
pushi.e 1597
pushenv [13]

:[12]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
popenv [12]

:[14]
push.v self.counter
pushi.e 16
cmp.i.v GTE
bf [16]

:[15]
pushi.e 13
pop.v.i self.counter

:[16]
push.v self.attack
pushi.e 3
cmp.i.v EQ
bf [25]

:[17]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter2
pushi.e 1
add.i.v
pop.v.v self.counter2
push.v self.counter
pushi.e 20
cmp.i.v GT
bf [19]

:[18]
pushi.e 1644
conv.i.v
pushi.e 200
conv.i.v
pushi.e 110
pushi.e 400
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
popz.v

:[19]
push.v self.counter
pushi.e 40
cmp.i.v GT
bf [21]

:[20]
pushi.e 0
pop.v.i self.counter

:[21]
push.v self.counter2
pushi.e 90
cmp.i.v EQ
bf [25]

:[22]
pushi.e 1596
pushenv [24]

:[23]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[24]
popenv [23]
pushi.e -999
pop.v.i self.counter2

:[25]
push.v self.attack
pushi.e 4
cmp.i.v EQ
bf [31]

:[26]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter2
pushi.e 1
add.i.v
pop.v.v self.counter2
push.v self.counter2
pushi.e 90
cmp.i.v LT
bf [29]

:[27]
push.v self.counter
pushi.e 8
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1651
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[29]
push.v self.counter
pushi.e 16
cmp.i.v GTE
bf [31]

:[30]
pushi.e -5
pop.v.i self.counter

:[31]
push.v self.attack
pushi.e 5
cmp.i.v EQ
bf [41]

:[32]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter2
pushi.e 1
add.i.v
pop.v.v self.counter2
push.v self.counter2
pushi.e 100
cmp.i.v LT
bf [41]

:[33]
push.v self.counter
pushi.e 10
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1641
conv.i.v
pushi.e -100
conv.i.v
pushi.e 100
pushi.e 420
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e 1641
conv.i.v
pushi.e -100
conv.i.v
pushi.e 100
pushi.e 420
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
popz.v

:[35]
push.v self.counter
pushi.e 12
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1641
conv.i.v
pushi.e -100
conv.i.v
pushi.e -20
pushi.e 130
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v local.gn
pushi.e 16
pushloc.v local.gn
conv.v.i
pop.v.i [stacktop]self.vspeed

:[37]
push.v self.counter
pushi.e 14
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1641
conv.i.v
pushi.e -100
conv.i.v
pushbltn.v self.room_width
pushi.e 20
add.i.v
pushi.e 130
conv.i.v
call.i random(argc=1)
sub.v.v
call.i instance_create(argc=3)
popz.v

:[39]
push.v self.counter
pushi.e 18
cmp.i.v GTE
bf [41]

:[40]
pushi.e 9
pop.v.i self.counter

:[41]
push.v self.attack
pushi.e 6
cmp.i.v EQ
bf [48]

:[42]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 12
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1637
conv.i.v
pushi.e 140
conv.i.v
pushi.e 530
conv.i.v
call.i random(argc=1)
call.i instance_create(argc=3)
popz.v

:[44]
push.v self.counter
pushi.e 24
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1637
conv.i.v
pushi.e 140
conv.i.v
pushi.e 530
conv.i.v
call.i random(argc=1)
call.i instance_create(argc=3)
popz.v

:[46]
push.v self.counter
pushi.e 36
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1637
conv.i.v
pushi.e 140
conv.i.v
pushi.e 530
conv.i.v
call.i random(argc=1)
call.i instance_create(argc=3)
popz.v

:[48]
push.v self.attack
pushi.e 7
cmp.i.v EQ
bf [54]

:[49]
push.v self.counter2
pushi.e 1
add.i.v
pop.v.v self.counter2
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 100
cmp.i.v LT
bf [54]

:[50]
push.v self.counter
pushi.e 16
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1635
conv.i.v
pushi.e 200
pushi.e 280
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[52]
push.v self.counter
pushi.e 20
cmp.i.v GTE
bf [54]

:[53]
pushi.e 15
pop.v.i self.counter

:[54]
push.v self.attack
pushi.e 8
cmp.i.v EQ
bf [74]

:[55]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 2
cmp.i.v EQ
bf [74]

:[56]
pushi.e 1662
pushenv [58]

:[57]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[58]
popenv [57]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.v_side
push.v self.v_side
pushi.e 1
cmp.i.v EQ
bf [66]

:[59]
push.v self.leftarm
conv.v.i
push.v [stacktop]self.acon
pushi.e 0
cmp.i.v EQ
bf [63]

:[60]
push.v self.leftarm
conv.v.i
pushenv [62]

:[61]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[62]
popenv [61]
b [66]

:[63]
push.v self.rightarm
conv.v.i
pushenv [65]

:[64]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[65]
popenv [64]

:[66]
push.v self.v_side
pushi.e 0
cmp.i.v EQ
bf [74]

:[67]
push.v self.rightarm
conv.v.i
push.v [stacktop]self.acon
pushi.e 0
cmp.i.v EQ
bf [71]

:[68]
push.v self.rightarm
conv.v.i
pushenv [70]

:[69]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[70]
popenv [69]
b [74]

:[71]
push.v self.leftarm
conv.v.i
pushenv [73]

:[72]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[73]
popenv [72]

:[74]
push.v self.attack
pushi.e 9
cmp.i.v EQ
bf [80]

:[75]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 18
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1646
conv.i.v
pushi.e 140
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1646
conv.i.v
pushi.e 140
conv.i.v
pushi.e 530
conv.i.v
call.i instance_create(argc=3)
popz.v

:[77]
push.v self.counter
pushi.e 93
cmp.i.v GTE
bf [80]

:[78]
pushi.e 1646
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [80]

:[79]
pushi.e 3
pop.v.i 1646.con

:[80]
push.v self.attack
pushi.e 20
cmp.i.v EQ
bf [94]

:[81]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter2
pushi.e 1
add.i.v
pop.v.v self.counter2
push.v self.counter
pushi.e 20
cmp.i.v GT
bf [83]

:[82]
pushi.e 1644
conv.i.v
pushi.e 200
conv.i.v
pushi.e 110
pushi.e 400
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v local.v
pushi.e 1
pushloc.v local.v
conv.v.i
pop.v.i [stacktop]self.memorymode

:[83]
push.v self.counter
pushi.e 40
cmp.i.v GT
bf [85]

:[84]
pushi.e 0
pop.v.i self.counter

:[85]
push.v self.counter2
pushi.e 30
cmp.i.v EQ
bf [89]

:[86]
pushi.e 1591
pushenv [88]

:[87]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[88]
popenv [87]
pushglb.v global.my_hp
pop.v.v self.nowhp

:[89]
push.v self.counter2
pushi.e 70
cmp.i.v EQ
bf [94]

:[90]
pushglb.v global.my_hp
push.v self.nowhp
cmp.v.v GTE
bf [94]

:[91]
pushi.e 1591
pushenv [93]

:[92]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[93]
popenv [92]

:[94]
push.v self.attack
pushi.e 21
cmp.i.v EQ
bf [129]

:[95]
push.v self.counter2
pushi.e 15
cmp.i.v EQ
bf [97]

:[96]
push.v 1587.x
pop.v.v self.checkx1

:[97]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter2
pushi.e 1
add.i.v
pop.v.v self.counter2
push.v self.counter2
pushi.e 40
cmp.i.v LT
bf [104]

:[98]
push.v self.counter
pushi.e 14
cmp.i.v EQ
bf [102]

:[99]
pushi.e 1597
pushenv [101]

:[100]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[101]
popenv [100]

:[102]
push.v self.counter
pushi.e 16
cmp.i.v GTE
bf [104]

:[103]
pushi.e 13
pop.v.i self.counter

:[104]
push.v self.counter2
pushi.e 45
cmp.i.v EQ
bf [106]

:[105]
push.v 1587.x
pop.v.v self.checkx2

:[106]
push.v self.counter2
pushi.e 50
cmp.i.v GT
bf [108]

:[107]
push.v self.counter2
pushi.e 69
cmp.i.v LT
b [109]

:[108]
push.e 0

:[109]
bf [115]

:[110]
pushi.e 1644
conv.i.v
pushi.e 200
conv.i.v
pushi.e 110
pushi.e 400
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v local.v
push.v self.checkx2
push.v self.checkx1
cmp.v.v LT
bf [112]

:[111]
pushloc.v local.v
conv.v.i
dup.i 0
push.v [stacktop]self.direction
pushi.e 12
sub.i.v
pop.i.v [stacktop]self.direction

:[112]
push.v self.checkx2
push.v self.checkx1
cmp.v.v GT
bf [114]

:[113]
pushloc.v local.v
conv.v.i
dup.i 0
push.v [stacktop]self.direction
pushi.e 12
add.i.v
pop.i.v [stacktop]self.direction

:[114]
pushi.e 1
pushloc.v local.v
conv.v.i
pop.v.i [stacktop]self.memorymode

:[115]
push.v self.counter2
pushi.e 40
cmp.i.v EQ
bf [121]

:[116]
pushglb.v global.my_hp
pop.v.v self.nowhp
pushi.e 1591
pushenv [118]

:[117]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[118]
popenv [117]
pushi.e 1642
pushenv [120]

:[119]
pushi.e 1
pop.v.i self.memorymode

:[120]
popenv [119]

:[121]
push.v self.counter2
pushi.e 70
cmp.i.v EQ
bf [129]

:[122]
pushglb.v global.my_hp
push.v self.nowhp
cmp.v.v GTE
bf [126]

:[123]
pushi.e 1591
pushenv [125]

:[124]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[125]
popenv [124]

:[126]
pushi.e 1642
pushenv [128]

:[127]
pushi.e 0
pop.v.i self.memorymode

:[128]
popenv [127]

:[129]
push.v self.attack
pushi.e 22
cmp.i.v EQ
bf [137]

:[130]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter2
pushi.e 1
add.i.v
pop.v.v self.counter2
push.v self.counter2
pushi.e 70
cmp.i.v LT
bf [137]

:[131]
push.v self.counter
pushi.e 32
cmp.i.v EQ
bf [135]

:[132]
pushi.e 1597
pushenv [134]

:[133]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[134]
popenv [133]

:[135]
push.v self.counter
pushi.e 36
cmp.i.v GTE
bf [137]

:[136]
pushi.e 31
pop.v.i self.counter

:[137]
push.v self.attack
pushi.e 23
cmp.i.v EQ
bf [149]

:[138]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 30
cmp.i.v EQ
bf [140]

:[139]
pushi.e 1639
conv.i.v
push.v 1595.y
push.v 1595.x
call.i instance_create(argc=3)
popz.v
pushi.e 1639
conv.i.v
push.v 1595.y
push.v 1595.x
push.v 1595.op
add.v.v
call.i instance_create(argc=3)
popz.v

:[140]
push.v self.counter
pushi.e 40
cmp.i.v EQ
bf [142]

:[141]
push.v self.counter2
pushi.e 80
cmp.i.v LT
b [143]

:[142]
push.e 0

:[143]
bf [147]

:[144]
pushi.e 1595
pushenv [146]

:[145]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[146]
popenv [145]

:[147]
push.v self.counter
pushi.e 42
cmp.i.v GTE
bf [149]

:[148]
pushi.e 32
pop.v.i self.counter

:[149]
push.v self.attack
pushi.e 99
cmp.i.v EQ
bf [end]

:[150]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 2
cmp.i.v EQ
bf [end]

:[151]
pushi.e 1596
pushenv [153]

:[152]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[153]
popenv [152]

:[end]