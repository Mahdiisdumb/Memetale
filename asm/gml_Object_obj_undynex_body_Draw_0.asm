.localvar 0 arguments

:[0]
push.v self.movetype
pushi.e 2
cmp.i.v EQ
bf [31]

:[1]
pushi.e 1
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.slashno
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e -104
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.facetype
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 35
sub.i.v
pop.i.v [stacktop]self.image_angle
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
sub.i.v
pop.i.v [stacktop]self.x
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 4
sub.i.v
pop.i.v [stacktop]self.y
push.v self.heady
pushi.e 2
sub.i.v
pop.v.v self.heady

:[6]
push.v self.slashno
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e -104
cmp.i.v LTE
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e -104
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.d 0.1
pop.v.d self.slashno

:[11]
push.v self.slashno
push.d 1.1
cmp.d.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.slashno
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[13]
push.v self.slashno
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.facetype
pushi.e 4
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
push.d 73.33333333333333
add.d.v
pop.i.v [stacktop]self.image_angle

:[15]
push.v self.slashno
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.v self.larm
conv.v.i
push.v [stacktop]self.xstart
push.v self.larm
conv.v.i
pop.v.v [stacktop]self.x
push.v self.larm
conv.v.i
push.v [stacktop]self.ystart
push.v self.larm
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 66
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 1365
conv.i.v
push.v self.larm
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.larm
conv.v.i
push.v [stacktop]self.x
pushi.e 180
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.slash
pushi.e 299
push.v self.slash
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.slash
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.slash
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1365
conv.i.v
push.v self.larm
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.larm
conv.v.i
push.v [stacktop]self.x
pushi.e 180
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.slash2
pushi.e 299
push.v self.slash2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.slash2
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.slash2
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 3
pop.v.i self.slashno

:[17]
push.v self.slashno
pushi.e 3
cmp.i.v EQ
bf [26]

:[18]
push.v self.heady
pushi.e 6
cmp.i.v LT
bf [20]

:[19]
push.v self.heady
pushi.e 3
add.i.v
pop.v.v self.heady

:[20]
push.v self.slash
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.slash2
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.slash2
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 24
add.i.v
pop.i.v [stacktop]self.y
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
push.d 0.5
add.d.v
pop.i.v [stacktop]self.image_angle
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e 70
cmp.i.v GT
bf [26]

:[21]
push.v self.slash
conv.v.i
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
push.v self.slash2
conv.v.i
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
pushi.e 4
pop.v.i self.slashno
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[26]
push.v self.slashno
pushi.e 5
cmp.i.v EQ
bf [31]

:[27]
push.v self.heady
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
push.v self.heady
pushi.e 1
sub.i.v
pop.v.v self.heady

:[29]
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 15
sub.i.v
pop.i.v [stacktop]self.image_angle
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e 6
cmp.i.v LTE
bf [31]

:[30]
pushi.e 0
pop.v.i self.heady
pushi.e 7
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 0
pop.v.i self.slashno
pushi.e 0
pop.v.i self.movetype
pushi.e 0
pop.v.i self.arm_v
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.visible

:[31]
push.v self.siner
push.d 1.4
add.d.v
pop.v.v self.siner
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i self.siner

:[33]
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.s_f
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.s_f2
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.s_f3
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 70
push.v self.s_f
pushi.e 15
mul.i.v
sub.v.i
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.s_f
pushi.e 3
mul.i.v
add.v.v
push.v self.heady
add.v.v
pushi.e 4
add.i.v
push.v self.x
pushi.e 85
add.i.v
pushi.e 0
conv.i.v
pushi.e 327
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
push.v self.y
pushi.e 164
add.i.v
push.v self.x
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
pushi.e 330
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.arm_v
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
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
push.v self.y
pushi.e 78
add.i.v
push.v self.s_f
pushi.e 5
mul.i.v
add.v.v
push.v self.x
pushi.e 64
add.i.v
push.v self.s_f
pushi.e 5
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 331
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[35]
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
push.v self.y
pushi.e 78
add.i.v
push.v self.s_f
pushi.e 6
mul.i.v
add.v.v
push.v self.s_f2
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 136
add.i.v
push.v self.s_f2
pushi.e 3
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 332
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.s_f
pushi.e 4
mul.i.v
neg.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 78
add.i.v
push.v self.s_f
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
pushi.e 328
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.s_f
pushi.e 2
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 122
add.i.v
push.v self.s_f
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
pushi.e 329
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.facetype
pushi.e 0
cmp.i.v EQ
bf [40]

:[36]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
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
push.v self.y
pushi.e 28
add.i.v
push.v self.s_f
pushi.e 2
mul.i.v
add.v.v
push.v self.heady
add.v.v
push.v self.x
pushi.e 100
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 322
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[38]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
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
push.v self.y
pushi.e 28
add.i.v
push.v self.s_f
pushi.e 2
mul.i.v
add.v.v
push.v self.heady
add.v.v
push.v self.x
pushi.e 100
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 324
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[40]
push.v self.facetype
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
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
push.v self.y
pushi.e 28
add.i.v
push.v self.s_f
pushi.e 2
mul.i.v
add.v.v
push.v self.heady
add.v.v
push.v self.x
pushi.e 100
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 325
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[42]
push.v self.facetype
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
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
push.v self.y
pushi.e 28
add.i.v
push.v self.s_f
pushi.e 2
mul.i.v
add.v.v
push.v self.heady
add.v.v
push.v self.x
pushi.e 100
add.i.v
pushglb.v global.faceemotion
pushi.e 323
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[44]
push.v self.facetype
pushi.e 0
cmp.i.v NEQ
bf [46]

:[45]
pushi.e 0
pop.v.i self.eyetimer

:[46]
push.v self.eyetimer
pushi.e 1
add.i.v
pop.v.v self.eyetimer
push.v self.eyetimer
pushi.e 10
cmp.i.v GTE
bf [49]

:[47]
push.d 1.5
push.v self.eyetimer
pushi.e 10
sub.i.v
pushi.e 20
conv.i.d
div.d.v
sub.v.d
push.i 16777215
conv.i.v
push.v self.s_f3
pushi.e 32
mul.i.v
neg.v
push.d 2.5
push.v self.eyetimer
pushi.e 10
sub.i.v
pushi.e 20
conv.i.d
div.d.v
sub.v.d
push.v self.eyetimer
pushi.e 10
sub.i.v
pushi.e 4
conv.i.d
div.d.v
push.v self.y
pushi.e 24
add.i.v
push.v self.s_f
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 110
add.i.v
pushi.e 0
conv.i.v
pushi.e 321
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.eyetimer
pushi.e 40
cmp.i.v GTE
bf [49]

:[48]
pushi.e 0
pop.v.i self.eyetimer

:[49]
push.v self.movetype
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.arm_v

:[51]
push.v self.shakify
pushi.e 0
cmp.i.v GT
bf [end]

:[52]
push.v self.xstart
push.v self.shakify
call.i random(argc=1)
add.v.v
push.v self.shakify
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shakify
call.i random(argc=1)
add.v.v
push.v self.shakify
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[end]