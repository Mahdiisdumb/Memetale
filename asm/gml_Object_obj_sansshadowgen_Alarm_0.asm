.localvar 0 arguments

:[0]
pushi.e 758
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.visible

:[2]
popenv [1]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushglb.v global.batmusic
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i self.shadow
pushi.e 385
pushi.e -5
pushi.e 3
pop.v.i [array]global.idealborder
push.v self.level
pushi.e 0
cmp.i.v EQ
bf [7]

:[3]
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
pop.v.v self.s_type
push.v self.prev_s
push.v self.s_type
cmp.v.v EQ
bf [5]

:[4]
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
pop.v.v self.s_type

:[5]
push.v self.prev_s
push.v self.s_type
cmp.v.v EQ
bf [7]

:[6]
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
pop.v.v self.s_type

:[7]
push.v self.level
pushi.e 1
cmp.i.v EQ
bf [12]

:[8]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=4)
pop.v.v self.s_type
push.v self.prev_s
push.v self.s_type
cmp.v.v EQ
bf [10]

:[9]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=4)
pop.v.v self.s_type

:[10]
push.v self.prev_s
push.v self.s_type
cmp.v.v EQ
bf [12]

:[11]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=4)
pop.v.v self.s_type

:[12]
push.v self.level
pushi.e 2
cmp.i.v EQ
bf [17]

:[13]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
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
call.i choose(argc=9)
pop.v.v self.s_type
push.v self.prev_s
push.v self.s_type
cmp.v.v EQ
bf [15]

:[14]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
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
call.i choose(argc=9)
pop.v.v self.s_type

:[15]
push.v self.prev_s
push.v self.s_type
cmp.v.v EQ
bf [17]

:[16]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
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
call.i choose(argc=9)
pop.v.v self.s_type

:[17]
push.v self.level
pushi.e 3
cmp.i.v EQ
bf [26]

:[18]
pushi.e 50
pop.v.i self.s_type
push.v self.prev_s
pushi.e 50
cmp.i.v EQ
bf [20]

:[19]
pushi.e 51
pop.v.i self.s_type

:[20]
push.v self.prev_s
pushi.e 51
cmp.i.v EQ
bf [22]

:[21]
pushi.e 52
pop.v.i self.s_type

:[22]
push.v self.prev_s
pushi.e 52
cmp.i.v EQ
bf [24]

:[23]
pushi.e 53
pop.v.i self.s_type

:[24]
push.v self.prev_s
pushi.e 53
cmp.i.v EQ
bf [26]

:[25]
pushi.e 54
pop.v.i self.s_type

:[26]
push.v self.s_type
pop.v.v self.prev_s
push.v self.shadow_num
push.v self.shadow_max
cmp.v.v GTE
bf [44]

:[27]
push.v self.level
pushi.e 3
cmp.i.v LT
bf [30]

:[28]
pushi.e 511
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 511
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[30]
pushi.e 320
pop.v.i 518.x
pushi.e 520
pushenv [32]

:[31]
pushi.e 0
pop.v.i self.attacked

:[32]
popenv [31]
pushi.e 758
pushenv [34]

:[33]
pushi.e 0
pop.v.i self.instaborder

:[34]
popenv [33]
pushi.e -1
pop.v.i self.s_type
pushi.e 3
pop.v.i global.mnfight
pushi.e 744
pushenv [36]

:[35]
pushi.e 1
pop.v.i self.movement

:[36]
popenv [35]
pushi.e 744
pushenv [38]

:[37]
pushi.e 0
pop.v.i self.jumpstage

:[38]
popenv [37]
pushi.e 744
pushenv [40]

:[39]
pushi.e 46
pop.v.i self.sprite_index

:[40]
popenv [39]
pushi.e 744
pushenv [42]

:[41]
pushi.e 0
pop.v.i self.speed

:[42]
popenv [41]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[43]
b [46]

:[44]
push.v self.level
pushi.e 3
cmp.i.v LT
bf [46]

:[45]
pushi.e 100
pushi.e 440
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v 518.x

:[46]
push.v self.shadow_num
pushi.e 1
add.i.v
pop.v.v self.shadow_num
push.v self.s_type
pushi.e 0
cmp.i.v EQ
bf [50]

:[47]
pushi.e 2
pop.v.i 744.movement
pushi.e 744
pushenv [49]

:[48]
pushi.e 2
pop.v.i self.jumpstage

:[49]
popenv [48]
pushi.e 52
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 120
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 520
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 5
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.y
pushi.e 0
conv.i.v
pushi.e 25
conv.i.v
pushi.e 8
conv.i.v
pushi.e 45
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 25
conv.i.v
pushi.e -8
conv.i.v
pushi.e 45
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 27
conv.i.v
pushi.e 8
conv.i.v
pushi.e 45
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 27
conv.i.v
pushi.e -8
conv.i.v
pushi.e 45
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 29
conv.i.v
pushi.e 8
conv.i.v
pushi.e 45
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 29
conv.i.v
pushi.e -8
conv.i.v
pushi.e 45
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 31
conv.i.v
pushi.e 8
conv.i.v
pushi.e 45
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 31
conv.i.v
pushi.e -8
conv.i.v
pushi.e 45
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
pushi.e 8
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
pushi.e -8
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 28
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[50]
push.v self.s_type
pushi.e 1
cmp.i.v EQ
bf [54]

:[51]
pushi.e 2
pop.v.i 744.movement
pushi.e 744
pushenv [53]

:[52]
pushi.e 2
pop.v.i self.jumpstage

:[53]
popenv [52]
pushi.e 52
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 120
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 520
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 5
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.y
pushi.e 1
conv.i.v
pushi.e 25
conv.i.v
pushi.e 8
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 25
conv.i.v
pushi.e -8
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 34
conv.i.v
pushi.e 8
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 34
conv.i.v
pushi.e -8
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 38
conv.i.v
pushi.e 8
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 38
conv.i.v
pushi.e -8
conv.i.v
pushi.e 100
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 35
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[54]
push.v self.s_type
pushi.e 2
cmp.i.v EQ
bf [69]

:[55]
pushi.e 2
pop.v.i 744.movement
pushi.e 744
pushenv [57]

:[56]
pushi.e 2
pop.v.i self.jumpstage

:[57]
popenv [56]
pushi.e 52
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 170
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 470
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 5
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.y
pushi.e 0
pop.v.i self.value
pushi.e 0
pop.v.i self.i

:[58]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [68]

:[59]
pushi.e 40
conv.i.v
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=3)
pop.v.v self.ht
pushi.e 0
pop.v.i self.xx
push.v self.i
pushi.e 0
cmp.i.v GT
bf [61]

:[60]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
pop.v.v self.xx

:[61]
pushi.e 0
conv.i.v
pushi.e 25
push.v self.i
pushi.e 22
mul.i.v
add.v.i
push.v self.value
add.v.v
pushi.e 6
push.v self.xx
add.v.i
push.v self.ht
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 25
push.v self.i
pushi.e 22
mul.i.v
add.v.i
push.v self.value
add.v.v
pushi.e -6
push.v self.xx
add.v.i
push.v self.ht
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 25
push.v self.i
pushi.e 22
mul.i.v
add.v.i
push.v self.value
add.v.v
pushi.e 6
push.v self.xx
add.v.i
push.v self.ht
pushi.e 24
add.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 25
push.v self.i
pushi.e 22
mul.i.v
add.v.i
push.v self.value
add.v.v
pushi.e -6
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
bf [63]

:[62]
push.v self.value
pushi.e 5
add.i.v
pop.v.v self.value

:[63]
push.v self.ht
pushi.e 40
cmp.i.v EQ
bf [65]

:[64]
push.v self.value
pushi.e 10
add.i.v
pop.v.v self.value

:[65]
push.v self.ht
pushi.e 60
cmp.i.v EQ
bf [67]

:[66]
push.v self.value
pushi.e 20
add.i.v
pop.v.v self.value

:[67]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [58]

:[68]
pushi.e 58
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[69]
push.v self.s_type
pushi.e 3
cmp.i.v EQ
bf [76]

:[70]
pushi.e 2
pop.v.i 744.movement
pushi.e 744
pushenv [72]

:[71]
pushi.e 2
pop.v.i self.jumpstage

:[72]
popenv [71]
pushi.e 52
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 170
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 470
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 5
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.y
pushi.e 0
pop.v.i self.i

:[73]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [75]

:[74]
pushi.e 0
conv.i.v
pushi.e 25
push.v self.i
pushi.e 25
mul.i.v
add.v.i
pushi.e 5
conv.i.v
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 25
push.v self.i
pushi.e 25
mul.i.v
add.v.i
pushi.e -5
conv.i.v
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 25
push.v self.i
pushi.e 25
mul.i.v
add.v.i
pushi.e 5
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 25
push.v self.i
pushi.e 25
mul.i.v
add.v.i
pushi.e -5
conv.i.v
pushi.e 40
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [73]

:[75]
pushi.e 52
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[76]
push.v self.s_type
pushi.e 4
cmp.i.v EQ
bf [83]

:[77]
pushi.e 2
pop.v.i 744.movement
pushi.e 744
pushenv [79]

:[78]
pushi.e 2
pop.v.i self.jumpstage

:[79]
popenv [78]
pushi.e 52
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 120
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 520
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.sd
push.v self.sd
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v 744.x
b [82]

:[81]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.v.v 744.x

:[82]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 13
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 15
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 17
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 19
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 21
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 23
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 25
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 27
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 29
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 31
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 55
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 35
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 37
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 39
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 41
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 43
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 45
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 47
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 49
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 51
conv.i.v
pushi.e -12
push.v self.sd
mul.v.i
pushi.e 15
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 47
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[83]
push.v self.s_type
pushi.e 5
cmp.i.v EQ
bf [90]

:[84]
pushi.e 2
pop.v.i 744.movement
pushi.e 744
pushenv [86]

:[85]
pushi.e 2
pop.v.i self.jumpstage

:[86]
popenv [85]
pushi.e 52
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.vspeed
pushi.e 120
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 520
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v 744.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 90
sub.i.v
pop.v.v 744.y
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.d
pushi.e 2
conv.i.v
pushi.e 27
conv.i.v
pushi.e 8
push.v self.d
mul.v.i
pushi.e 75
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 42
conv.i.v
pushi.e -8
push.v self.d
mul.v.i
pushi.e 65
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 70
conv.i.v
call.i scr_hplat(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 8
add.i.v
pop.i.v [stacktop]self.x
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
call.i scr_hplat(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 8
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
pop.v.i self.i

:[87]
push.v self.i
pushi.e 30
cmp.i.v LT
bf [89]

:[88]
pushi.e 502
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 16
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [87]

:[89]
pushi.e 45
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[90]
push.v self.s_type
pushi.e 6
cmp.i.v EQ
bf [108]

:[91]
pushi.e 1
pop.v.i 744.movement
pushi.e 698
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hwd
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hht
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
sub.i.v
pop.v.v 744.y
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.chance
push.v self.chance
pushi.e 0
cmp.i.v EQ
bf [99]

:[92]
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
push.v self.hht
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e -90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
push.v self.hht
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 0
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
push.v self.hwd
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 180
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
push.v self.hwd
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 18
push.v self.laser_d
sub.v.i
pop.v.v 499.pause
pushi.e 8
pop.v.i 499.terminal
pushi.e 499
pushenv [94]

:[93]
push.v self.idealx
pop.v.v self.x

:[94]
popenv [93]
pushi.e 499
pushenv [96]

:[95]
push.v self.idealy
pop.v.v self.y

:[96]
popenv [95]
pushi.e 499
pushenv [98]

:[97]
push.v self.idealrot
pop.v.v self.image_angle

:[98]
popenv [97]

:[99]
push.v self.chance
pushi.e 1
cmp.i.v EQ
bf [107]

:[100]
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 45
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e -45
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 135
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e -135
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 20
push.v self.laser_d
sub.v.i
pop.v.v 499.pause
pushi.e 8
pop.v.i 499.terminal
pushi.e 499
pushenv [102]

:[101]
push.v self.idealx
pop.v.v self.x

:[102]
popenv [101]
pushi.e 499
pushenv [104]

:[103]
push.v self.idealy
pop.v.v self.y

:[104]
popenv [103]
pushi.e 499
pushenv [106]

:[105]
push.v self.idealrot
pop.v.v self.image_angle

:[106]
popenv [105]

:[107]
pushi.e 37
push.v self.laser_d
sub.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[108]
push.v self.s_type
pushi.e 7
cmp.i.v EQ
bf [117]

:[109]
pushi.e 1
pop.v.i 744.movement
pushi.e 698
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hwd
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hht
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
sub.i.v
pop.v.v 744.y
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.dd
push.v self.dd
pushi.e -1
cmp.i.v EQ
bf [111]

:[110]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.idealborder
pushi.e 60
add.i.v
pop.i.v [array]global.idealborder

:[111]
push.v self.dd
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pop.i.v [array]global.idealborder

:[113]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
pushi.e 0
pop.v.i self.i

:[114]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [116]

:[115]
pushi.e 2
conv.i.v
pushi.e 16
push.v self.i
pushi.e 2
mul.i.v
add.v.i
pushi.e 10
push.v self.dd
mul.v.i
pushi.e 105
push.v self.i
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 28
mul.i.v
push.v self.rr
mul.v.v
sub.v.i
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 3
mul.i.v
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.siner
pushi.e 0
conv.i.v
pushi.e 16
push.v self.i
pushi.e 2
mul.i.v
add.v.i
pushi.e 10
push.v self.dd
mul.v.i
pushi.e 60
push.v self.i
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 28
mul.i.v
push.v self.rr
mul.v.v
sub.v.i
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 3
mul.i.v
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [114]

:[116]
pushi.e 52
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[117]
push.v self.s_type
pushi.e 8
cmp.i.v EQ
bf [127]

:[118]
pushi.e 2
pop.v.i 744.movement
pushi.e 744
pushenv [120]

:[119]
pushi.e 2
pop.v.i self.jumpstage

:[120]
popenv [119]
pushi.e 52
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 120
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 520
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 110
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.sd
push.v self.sd
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pop.v.v 744.x
b [123]

:[122]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
add.i.v
pop.v.v 744.x

:[123]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.y
pushi.e 0
pop.v.i self.i

:[124]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [126]

:[125]
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
pushi.e 19
mul.i.v
add.v.i
pushi.e 4
push.v self.sd
mul.v.i
pushi.e 20
conv.i.v
call.i scr_sbo(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
pushi.e 19
mul.i.v
add.v.i
pushi.e -4
push.v self.sd
mul.v.i
pushi.e 28
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [124]

:[126]
pushi.e 57
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[127]
push.v self.s_type
pushi.e 50
cmp.i.v EQ
bf [131]

:[128]
pushi.e 2
pop.v.i 744.movement
pushi.e 744
pushenv [130]

:[129]
pushi.e 2
pop.v.i self.jumpstage

:[130]
popenv [129]
pushi.e 52
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.vspeed
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hwd
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hht
push.v self.hwd
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.y
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 0
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 18
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 50
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 2
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 18
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 50
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 27
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[131]
push.v self.s_type
pushi.e 51
cmp.i.v EQ
bf [133]

:[132]
pushi.e 12
pop.v.i 744.movement
pushi.e 697
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.speed
pushi.e -2
pop.v.i 744.vspeed
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hwd
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hht
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 15
add.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
add.i.v
pop.v.v 744.y
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 2
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 19
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 50
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 3
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 19
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 50
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 27
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[133]
push.v self.s_type
pushi.e 52
cmp.i.v EQ
bf [135]

:[134]
pushi.e 0
pop.v.i 744.speed
pushi.e 11
pop.v.i 744.movement
pushi.e 695
pop.v.i 744.sprite_index
pushi.e 2
pop.v.i 744.hspeed
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hwd
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hht
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v 744.y
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 0
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 19
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 50
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 1
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 19
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 50
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 27
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[135]
push.v self.s_type
pushi.e 53
cmp.i.v EQ
bf [end]

:[136]
pushi.e 0
pop.v.i 744.speed
pushi.e 13
pop.v.i 744.movement
pushi.e 696
pop.v.i 744.sprite_index
pushi.e -2
pop.v.i 744.hspeed
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hwd
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hht
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.hht
pushi.e 8
sub.i.v
cmp.v.v EQ
pop.v.b 744.y
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 3
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 19
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 10
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.retain
pushi.e 50
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 22
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 518
pushenv [138]

:[137]
pushi.e 320
pop.v.i self.x
pushi.e 49
pop.v.i self.lac
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[138]
popenv [137]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]