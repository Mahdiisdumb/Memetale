.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 1
add.i.v
pop.i.v [array]self.alarm
pushi.e 0
pop.v.i self.siner
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 60
add.i.v
pop.v.v self.x

:[2]
push.v self.anim_e
pushi.e 1
add.i.v
pop.v.v self.anim_e
push.v self.anim_e
pushi.e 30
cmp.i.v GT
bf [4]

:[3]
push.v self.anim_e
pushi.e 60
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.anim_e2
pushi.e 1
add.i.v
pop.v.v self.anim_e2

:[7]
push.v self.anim_e
pushi.e 180
cmp.i.v GT
bf [9]

:[8]
pushi.e 0
pop.v.i self.anim_e2
pushi.e 0
pop.v.i self.anim_e

:[9]
push.v self.anim_l
pushi.e 1
add.i.v
pop.v.v self.anim_l
push.v self.anim_l
pushi.e 60
cmp.i.v GTE
bf [11]

:[10]
push.v self.anim_l
pushi.e 120
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.v self.anim_l2
push.d 0.5
sub.d.v
pop.v.v self.anim_l2

:[14]
push.v self.anim_l
pushi.e 150
cmp.i.v GTE
bf [16]

:[15]
push.v self.anim_l
pushi.e 300
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [20]

:[18]
push.v self.anim_l2
pushi.e 6
add.i.v
pop.v.v self.anim_l2
push.v self.anim_l2
pushi.e 0
cmp.i.v GTE
bf [20]

:[19]
pushi.e 0
pop.v.i self.anim_l2
pushi.e 300
pop.v.i self.anim_l

:[20]
push.v self.anim_l
pushi.e 300
cmp.i.v GTE
bf [25]

:[21]
push.v self.anim_l2
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.anim_l3
pushi.e -3
pop.v.i self.anim_l2
b [25]

:[23]
pushi.e 0
pop.v.i self.anim_l2
push.v self.anim_l3
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.anim_l3

:[25]
push.v self.anim_l
pushi.e 310
cmp.i.v GT
bf [27]

:[26]
pushi.e 0
pop.v.i self.anim_l3
pushi.e 0
pop.v.i self.anim_l2
pushi.e 0
pop.v.i self.anim_l

:[27]
push.v self.anim_h
pushi.e 1
add.i.v
pop.v.v self.anim_h
push.v self.anim_h
pushi.e 50
cmp.i.v GT
bf [29]

:[28]
push.v self.anim_h
pushi.e 75
cmp.i.v LT
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.v self.anim_h2
pushi.e 1
add.i.v
pop.v.v self.anim_h2

:[32]
push.v self.anim_h
pushi.e 100
cmp.i.v GT
bf [34]

:[33]
pushi.e 0
pop.v.i self.anim_h

:[34]
push.v self.anim_m
pushi.e 1
add.i.v
pop.v.v self.anim_m
push.v self.anim_m
pushi.e 150
cmp.i.v GT
bf [36]

:[35]
push.v self.anim_m
pushi.e 180
cmp.i.v LT
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.anim_m2
pushi.e 1
add.i.v
pop.v.v self.anim_m2

:[39]
push.v self.anim_m
pushi.e 240
cmp.i.v GT
bf [41]

:[40]
push.v self.anim_m
pushi.e 270
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.v self.anim_m2
pushi.e 1
add.i.v
pop.v.v self.anim_m2

:[44]
push.v self.anim_m
pushi.e 300
cmp.i.v GT
bf [46]

:[45]
pushi.e 0
pop.v.i self.anim_m
pushi.e 0
pop.v.i self.anim_m2

:[46]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [53]

:[47]
push.v self.asleep
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 70
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 94
add.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.anim_e2
pushi.e 3
conv.i.d
div.d.v
pushi.e 478
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[49]
push.v self.asleep
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 70
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 94
add.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.anim_e2
pushi.e 3
conv.i.d
div.d.v
pushi.e 479
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[51]
push.v self.asleep
pushi.e 2
cmp.i.v EQ
bf [53]

:[52]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 70
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 94
add.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.anim_e2
pushi.e 3
conv.i.d
div.d.v
pushi.e 480
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[53]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 0
conv.i.v
pushi.e 488
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [59]

:[54]
push.v self.asleep
pushi.e 2
cmp.i.v NEQ
bf [56]

:[55]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 2
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 70
add.i.v
push.v self.anim_h2
pushi.e 4
conv.i.d
div.d.v
pushi.e 481
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
push.v self.asleep
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 2
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 70
add.i.v
pushi.e 0
conv.i.v
pushi.e 481
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[58]
b [60]

:[59]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 2
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 70
add.i.v
pushi.e 0
conv.i.v
pushi.e 482
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[60]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [68]

:[61]
push.v self.asleep
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 84
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 98
add.i.v
push.v self.anim_m2
pushi.e 6
conv.i.d
div.d.v
pushi.e 483
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[63]
push.v self.asleep
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 84
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 98
add.i.v
push.v self.anim_m2
pushi.e 6
conv.i.d
div.d.v
pushi.e 485
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[65]
push.v self.asleep
pushi.e 2
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 84
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 98
add.i.v
push.v self.anim_m2
pushi.e 6
conv.i.d
div.d.v
pushi.e 486
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[67]
b [69]

:[68]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 84
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 98
add.i.v
pushi.e 0
conv.i.v
pushi.e 484
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[69]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 96
add.i.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 64
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 487
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
push.v self.anim_l2
add.v.v
push.v self.offx
push.v self.x
add.v.v
push.v self.anim_l3
add.v.v
pushi.e 0
conv.i.v
pushi.e 477
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]