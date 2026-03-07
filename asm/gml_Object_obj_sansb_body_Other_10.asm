.localvar 0 arguments

:[0]
pushi.e 520
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.timer_on

:[2]
popenv [1]
push.v self.a_type
pushi.e 0
cmp.i.v EQ
bf [6]

:[3]
pushi.e 200
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e 6
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e -6
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e -6
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.v self.a_type
pushi.e 1
cmp.i.v EQ
bf [15]

:[7]
pushi.e 190
pop.v.i global.turntimer
push.v self.hell
pushi.e 1
cmp.i.v EQ
bf [12]

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 18
mul.i.v
add.v.i
pushi.e 8
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 18
mul.i.v
add.v.i
pushi.e -8
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 18
mul.i.v
add.v.i
pushi.e 8
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 18
mul.i.v
add.v.i
pushi.e -8
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[11]
b [15]

:[12]
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [15]

:[14]
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 19
mul.i.v
add.v.i
pushi.e 7
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 19
mul.i.v
add.v.i
pushi.e -7
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 19
mul.i.v
add.v.i
pushi.e 7
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 19
mul.i.v
add.v.i
pushi.e -7
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[15]
push.v self.a_type
pushi.e 2
cmp.i.v EQ
bf [31]

:[16]
pushi.e 240
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.value
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [31]

:[18]
pushi.e 60
conv.i.v
pushi.e 40
conv.i.v
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=4)
pop.v.v self.ht
pushi.e 0
pop.v.i self.xx
push.v self.i
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
pop.v.v self.xx

:[20]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.xx

:[22]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [24]

:[23]
push.v self.xx
push.d 0.5
mul.d.v
pop.v.v self.xx

:[24]
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 25
mul.i.v
add.v.i
push.v self.value
add.v.v
pushi.e 7
push.v self.xx
add.v.i
push.v self.ht
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 25
mul.i.v
add.v.i
push.v self.value
add.v.v
pushi.e -7
push.v self.xx
add.v.i
push.v self.ht
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 25
mul.i.v
add.v.i
push.v self.value
add.v.v
pushi.e 7
push.v self.xx
add.v.i
push.v self.ht
pushi.e 24
add.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 25
mul.i.v
add.v.i
push.v self.value
add.v.v
pushi.e -7
push.v self.xx
add.v.i
push.v self.ht
pushi.e 24
add.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.ht
pushi.e 30
cmp.i.v EQ
bf [26]

:[25]
push.v self.value
pushi.e 5
add.i.v
pop.v.v self.value

:[26]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [28]

:[27]
push.v self.value
pushi.e 10
add.i.v
pop.v.v self.value

:[28]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [30]

:[29]
push.v self.value
pushi.e 20
add.i.v
pop.v.v self.value

:[30]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[31]
push.v self.a_type
pushi.e 3
cmp.i.v EQ
bf [35]

:[32]
pushi.e 190
pop.v.i global.turntimer
push.v self.hell
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
conv.i.v
pushi.e 25
conv.i.v
pushi.e -12
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 32
conv.i.v
pushi.e -12
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 47
conv.i.v
pushi.e -12
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 54
conv.i.v
pushi.e -12
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 69
conv.i.v
pushi.e -12
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 76
conv.i.v
pushi.e -12
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 105
conv.i.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 117
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 127
conv.i.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 139
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 149
conv.i.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 161
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
b [35]

:[34]
pushi.e 1
conv.i.v
pushi.e 25
conv.i.v
pushi.e -10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 32
conv.i.v
pushi.e -10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 47
conv.i.v
pushi.e -10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 54
conv.i.v
pushi.e -10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 69
conv.i.v
pushi.e -10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 76
conv.i.v
pushi.e -10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 105
conv.i.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 117
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 127
conv.i.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 139
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 149
conv.i.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 161
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v

:[35]
push.v self.a_type
pushi.e 5
cmp.i.v EQ
bf [39]

:[36]
pushi.e 230
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i

:[37]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [39]

:[38]
pushi.e 0
conv.i.v
pushi.e 65
push.v self.i
pushi.e 19
mul.i.v
add.v.i
pushi.e 4
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 65
push.v self.i
pushi.e 19
mul.i.v
add.v.i
pushi.e -4
conv.i.v
pushi.e 28
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [37]

:[39]
push.v self.a_type
pushi.e 6
cmp.i.v EQ
bf [41]

:[40]
pushi.e 250
pop.v.i global.turntimer
pushi.e 41
conv.i.v
pushi.e 60
conv.i.v
pushi.e 4
conv.i.v
pushi.e 30
conv.i.v
call.i scr_bwall(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 70
conv.i.v
pushi.e 4
conv.i.v
pushi.e 40
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 120
conv.i.v
pushi.e 5
conv.i.v
pushi.e 40
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 160
conv.i.v
pushi.e 6
conv.i.v
pushi.e 40
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 160
conv.i.v
pushi.e 7
conv.i.v
pushi.e 90
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 162
conv.i.v
pushi.e 7
conv.i.v
pushi.e 90
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 164
conv.i.v
pushi.e 7
conv.i.v
pushi.e 90
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 222
conv.i.v
pushi.e 9
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v

:[41]
push.v self.a_type
pushi.e 7
cmp.i.v EQ
bf [43]

:[42]
pushi.e 290
pop.v.i global.turntimer
pushi.e 58
conv.i.v
pushi.e 60
conv.i.v
pushi.e -4
conv.i.v
pushi.e 30
conv.i.v
call.i scr_bwall(argc=4)
popz.v
pushi.e 25
conv.i.v
pushi.e 70
conv.i.v
pushi.e -5
conv.i.v
pushi.e 40
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 90
conv.i.v
pushi.e -5
conv.i.v
pushi.e 70
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 25
conv.i.v
pushi.e 95
conv.i.v
pushi.e -5
conv.i.v
pushi.e 90
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 25
conv.i.v
pushi.e 110
conv.i.v
pushi.e -5
conv.i.v
pushi.e 40
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 25
conv.i.v
pushi.e 150
conv.i.v
pushi.e -5
conv.i.v
pushi.e 60
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 148
conv.i.v
pushi.e -5
conv.i.v
pushi.e 90
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 25
conv.i.v
pushi.e 170
conv.i.v
pushi.e -5
conv.i.v
pushi.e 50
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 168
conv.i.v
pushi.e -5
conv.i.v
pushi.e 80
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 25
conv.i.v
pushi.e 190
conv.i.v
pushi.e -5
conv.i.v
pushi.e 70
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 188
conv.i.v
pushi.e -5
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 15
conv.i.v
pushi.e 230
conv.i.v
pushi.e -2
conv.i.v
pushi.e 90
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 240
conv.i.v
pushi.e -8
conv.i.v
pushi.e 110
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 260
conv.i.v
pushi.e 3
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v

:[43]
push.v self.a_type
pushi.e 8
cmp.i.v EQ
bf [45]

:[44]
pushi.e 240
pop.v.i global.turntimer
pushi.e 515
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.plat
pushi.e 1
push.v self.plat
conv.v.i
pop.v.i [stacktop]self.type

:[45]
push.v self.a_type
pushi.e 9
cmp.i.v EQ
bf [47]

:[46]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.idealborder
pushi.e 200
sub.i.v
pop.i.v [array]global.idealborder
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.idealborder
pushi.e 60
add.i.v
pop.i.v [array]global.idealborder
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pop.i.v [array]global.idealborder
pushi.e 514
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[47]
push.v self.a_type
pushi.e 10
cmp.i.v EQ
bf [52]

:[48]
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.movement
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 200
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e 220
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 420
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
push.v self.hell
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
sub.i.v
pushi.e -40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 100
add.i.v
pushi.e 720
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -8
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -110
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 730
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
sub.i.v
pushi.e -190
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 5
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
add.i.v
pushi.e 870
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -8
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -310
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 900
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
sub.i.v
pushi.e -700
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
add.i.v
pushi.e 1290
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -650
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 1180
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[50]
push.v self.hell
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
sub.i.v
pushi.e -40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 100
add.i.v
pushi.e 720
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -8
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -110
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 760
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
sub.i.v
pushi.e -190
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 5
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
add.i.v
pushi.e 870
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -8
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -310
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 900
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
sub.i.v
pushi.e -660
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
add.i.v
pushi.e 1290
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -650
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 1180
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -960
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 90
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 1510
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[52]
push.v self.a_type
pushi.e 11
cmp.i.v EQ
bf [54]

:[53]
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.movement
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 200
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e 270
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 470
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
sub.i.v
pushi.e -40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 100
add.i.v
pushi.e 770
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -250
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 630
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
sub.i.v
pushi.e -190
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 100
add.i.v
pushi.e 1120
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -500
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e 880
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[54]
push.v self.a_type
pushi.e 12
cmp.i.v EQ
bf [56]

:[55]
pushi.e 240
pop.v.i global.turntimer
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.movement
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 200
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e 120
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 520
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e 519
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 1
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.type

:[56]
push.v self.a_type
pushi.e 13
cmp.i.v EQ
bf [58]

:[57]
pushi.e 240
pop.v.i global.turntimer
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.movement
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 200
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e 120
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 520
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e 519
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.type

:[58]
push.v self.a_type
pushi.e 14
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1
pop.v.i self.fac

:[60]
push.v self.a_type
pushi.e 15
cmp.i.v EQ
bf [62]

:[61]
pushi.e 250
pop.v.i global.turntimer
pushi.e 515
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dplat
pushi.e 2
push.v self.dplat
conv.v.i
pop.v.i [stacktop]self.type

:[62]
push.v self.a_type
pushi.e 16
cmp.i.v EQ
bf [64]

:[63]
pushi.e 240
pop.v.i global.turntimer
pushi.e 515
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dplat
pushi.e 3
push.v self.dplat
conv.v.i
pop.v.i [stacktop]self.type

:[64]
push.v self.a_type
pushi.e 17
cmp.i.v EQ
bf [66]

:[65]
pushi.e 220
pop.v.i global.turntimer
pushi.e 50
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
call.i scr_bwall(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e -5
conv.i.v
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
call.i scr_bwall(argc=4)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 70
sub.i.v
pop.v.v 744.y
pushi.e 1
pop.v.i 744.vspeed
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 1
push.v self.bone
conv.v.i
pop.v.i [stacktop]self.jud
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 150
sub.i.v
pop.i.v [stacktop]self.x
push.v 744.x
pushi.e 150
sub.i.v
pop.v.v 744.x
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 260
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -4
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 125
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 260
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -4
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 180
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e 5
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 95
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 180
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e 5
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -3
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 105
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -3
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed

:[66]
push.v self.a_type
pushi.e 18
cmp.i.v EQ
bf [68]

:[67]
pushi.e 220
pop.v.i global.turntimer
pushi.e 50
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
call.i scr_bwall(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e -5
conv.i.v
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
call.i scr_bwall(argc=4)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 70
sub.i.v
pop.v.v 744.y
pushi.e 1
pop.v.i 744.vspeed
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e 1
push.v self.bone
conv.v.i
pop.v.i [stacktop]self.jud
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 150
sub.i.v
pop.i.v [stacktop]self.x
push.v 744.x
pushi.e 150
sub.i.v
pop.v.v 744.x
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 260
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -3
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 105
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 260
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -3
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 170
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 260
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -3
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 180
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e 4
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 90
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 180
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e 4
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -3
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 105
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -3
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 504
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 170
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lb
pushi.e -3
push.v self.lb
conv.v.i
pop.v.i [stacktop]self.vspeed

:[68]
push.v self.a_type
pushi.e 19
cmp.i.v EQ
bf [72]

:[69]
pushi.e 0
pop.v.i self.test_timer
pushi.e 1
pop.v.i self.test_timer_on
pushi.e 4
pop.v.i self.lac
pushi.e 520
pushenv [71]

:[70]
pushi.e 0
pop.v.i self.timer_on

:[71]
popenv [70]

:[72]
push.v self.a_type
pushi.e 20
cmp.i.v EQ
bf [76]

:[73]
pushi.e 0
pop.v.i 744.speed
pushi.e 520
pushenv [75]

:[74]
pushi.e 0
pop.v.i self.timer_on

:[75]
popenv [74]
pushi.e 270
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 370
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 100
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 42
add.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 42
add.i.v
pop.v.v 744.y
pushi.e 1
pop.v.i 744.movement
pushi.e 698
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i self.mk_c_timer
pushi.e 1
pop.v.i self.mk_c

:[76]
push.v self.a_type
pushi.e 21
cmp.i.v EQ
bf [111]

:[77]
pushi.e 210
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.vtotal

:[78]
push.v self.vtotal
pushi.e 150
cmp.i.v LT
bf [111]

:[79]
pushi.e 60
conv.i.v
pushi.e 40
conv.i.v
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=4)
pop.v.v self.ht
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.down
push.v self.i
pushi.e 0
cmp.i.v GT
bf [81]

:[80]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
pop.v.v self.xx

:[81]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [83]

:[82]
pushi.e 0
pop.v.i self.xx
pushi.e 1
pop.v.i self.down

:[83]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [85]

:[84]
pushi.e 0
pop.v.i self.xx

:[85]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [94]

:[86]
push.v self.ht
pushi.e 20
cmp.i.v EQ
bf [88]

:[87]
push.v self.vtotal
pushi.e 7
add.i.v
pop.v.v self.vtotal

:[88]
push.v self.ht
pushi.e 30
cmp.i.v EQ
bf [90]

:[89]
push.v self.vtotal
pushi.e 9
add.i.v
pop.v.v self.vtotal

:[90]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [92]

:[91]
push.v self.vtotal
pushi.e 16
add.i.v
pop.v.v self.vtotal

:[92]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [94]

:[93]
push.v self.vtotal
pushi.e 22
add.i.v
pop.v.v self.vtotal

:[94]
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e -1
pop.v.i self.xx

:[96]
pushi.e 0
conv.i.v
pushi.e 32
push.v self.vtotal
add.v.i
pushi.e 8
push.v self.xx
add.v.i
push.v self.ht
call.i scr_sbo(argc=4)
popz.v
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
pushi.e 1
pop.v.i self.xx

:[98]
pushi.e 0
conv.i.v
pushi.e 32
push.v self.vtotal
add.v.i
pushi.e -8
push.v self.xx
add.v.i
push.v self.ht
call.i scr_sbo(argc=4)
popz.v
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e -1
pop.v.i self.xx

:[100]
pushi.e 2
conv.i.v
pushi.e 32
push.v self.vtotal
add.v.i
pushi.e 8
push.v self.xx
add.v.i
push.v self.ht
pushi.e 24
add.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 1
pop.v.i self.xx

:[102]
pushi.e 2
conv.i.v
pushi.e 32
push.v self.vtotal
add.v.i
pushi.e -8
push.v self.xx
add.v.i
push.v self.ht
pushi.e 24
add.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.ht
pushi.e 20
cmp.i.v EQ
bf [104]

:[103]
push.v self.vtotal
pushi.e 12
add.i.v
pop.v.v self.vtotal

:[104]
push.v self.ht
pushi.e 30
cmp.i.v EQ
bf [106]

:[105]
push.v self.vtotal
pushi.e 13
add.i.v
pop.v.v self.vtotal

:[106]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [108]

:[107]
push.v self.vtotal
pushi.e 16
add.i.v
pop.v.v self.vtotal

:[108]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [110]

:[109]
push.v self.vtotal
pushi.e 22
add.i.v
pop.v.v self.vtotal

:[110]
b [78]

:[111]
push.v self.a_type
pushi.e 22
cmp.i.v EQ
bf [115]

:[112]
pushi.e 180
pop.v.i global.turntimer
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.movement
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 76
add.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 76
add.i.v
pop.v.v 744.y
pushi.e 0
pop.v.i self.i

:[113]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [115]

:[114]
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 300
sub.i.v
push.v self.i
pushi.e 216
push.v self.i
pushi.e 3
mul.i.v
sub.v.i
mul.v.v
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 10
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 300
add.i.v
push.v self.i
pushi.e 216
push.v self.i
pushi.e 3
mul.i.v
sub.v.i
mul.v.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -10
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [113]

:[115]
push.v self.a_type
pushi.e 23
cmp.i.v EQ
bf [end]

:[116]
pushi.e 210
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.vtotal

:[117]
push.v self.vtotal
pushi.e 150
cmp.i.v LT
bf [end]

:[118]
pushi.e 60
conv.i.v
pushi.e 40
conv.i.v
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=4)
pop.v.v self.ht
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.down
push.v self.i
pushi.e 0
cmp.i.v GT
bf [120]

:[119]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
pop.v.v self.xx

:[120]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [122]

:[121]
pushi.e 0
pop.v.i self.xx
pushi.e 1
pop.v.i self.down

:[122]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [124]

:[123]
pushi.e 0
pop.v.i self.xx

:[124]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [133]

:[125]
push.v self.ht
pushi.e 20
cmp.i.v EQ
bf [127]

:[126]
push.v self.vtotal
pushi.e 9
add.i.v
pop.v.v self.vtotal

:[127]
push.v self.ht
pushi.e 30
cmp.i.v EQ
bf [129]

:[128]
push.v self.vtotal
pushi.e 11
add.i.v
pop.v.v self.vtotal

:[129]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [131]

:[130]
push.v self.vtotal
pushi.e 19
add.i.v
pop.v.v self.vtotal

:[131]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [133]

:[132]
push.v self.vtotal
pushi.e 25
add.i.v
pop.v.v self.vtotal

:[133]
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
pushi.e -1
pop.v.i self.xx

:[135]
pushi.e 0
conv.i.v
pushi.e 32
push.v self.vtotal
add.v.i
pushi.e 8
push.v self.xx
add.v.i
push.v self.ht
call.i scr_sbo(argc=4)
popz.v
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
pushi.e 1
pop.v.i self.xx

:[137]
pushi.e 0
conv.i.v
pushi.e 32
push.v self.vtotal
add.v.i
pushi.e -8
push.v self.xx
add.v.i
push.v self.ht
call.i scr_sbo(argc=4)
popz.v
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
pushi.e -1
pop.v.i self.xx

:[139]
pushi.e 2
conv.i.v
pushi.e 32
push.v self.vtotal
add.v.i
pushi.e 8
push.v self.xx
add.v.i
push.v self.ht
pushi.e 24
add.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
pushi.e 1
pop.v.i self.xx

:[141]
pushi.e 2
conv.i.v
pushi.e 32
push.v self.vtotal
add.v.i
pushi.e -8
push.v self.xx
add.v.i
push.v self.ht
pushi.e 24
add.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.ht
pushi.e 20
cmp.i.v EQ
bf [143]

:[142]
push.v self.vtotal
pushi.e 15
add.i.v
pop.v.v self.vtotal

:[143]
push.v self.ht
pushi.e 30
cmp.i.v EQ
bf [145]

:[144]
push.v self.vtotal
pushi.e 17
add.i.v
pop.v.v self.vtotal

:[145]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [147]

:[146]
push.v self.vtotal
pushi.e 19
add.i.v
pop.v.v self.vtotal

:[147]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [149]

:[148]
push.v self.vtotal
pushi.e 25
add.i.v
pop.v.v self.vtotal

:[149]
b [117]

:[end]