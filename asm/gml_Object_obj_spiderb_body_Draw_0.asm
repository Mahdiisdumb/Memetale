.localvar 0 arguments

:[0]
pushi.e 760
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v 760.y
pushi.e 240
cmp.i.v LT
bf [3]

:[2]
push.v self.ystart
pushi.e 4
sub.i.v
pushi.e 240
push.v 760.y
sub.v.i
sub.v.v
pop.v.v self.y
b [4]

:[3]
push.v self.ystart
pop.v.v self.y

:[4]
push.v self.hurt
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 62
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.siner
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.eye

:[6]
push.v self.pauser
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.eye
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.eye

:[8]
push.v self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v self.heady
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 25
mul.i.v
pop.v.v self.hairrot
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 6
mul.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 86
add.i.v
pushi.e 26
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
pushi.e 14
add.i.v
pushi.e 0
conv.i.v
pushi.e 445
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
pushi.e -2
conv.i.v
push.v self.y
pushi.e 86
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
pushi.e 42
add.i.v
pushi.e 0
conv.i.v
pushi.e 446
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 86
add.i.v
pushi.e 26
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
pushi.e 78
add.i.v
pushi.e 0
conv.i.v
pushi.e 445
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
pushi.e 86
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
pushi.e 50
add.i.v
pushi.e 0
conv.i.v
pushi.e 446
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.hairrot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.heady
push.d 1.02
mul.d.v
pushi.e 18
add.i.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 0
conv.i.v
pushi.e 447
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.hairrot
neg.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.heady
push.d 1.02
mul.d.v
pushi.e 18
add.i.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 447
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
push.v self.heady
push.v self.x
pushi.e 0
conv.i.v
pushi.e 448
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
pushi.e 162
add.i.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 443
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.arm
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
pushi.e 1
pop.v.i self.arm

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
pushi.e 8
sub.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 26
add.i.v
push.v self.arm
pushi.e 441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
neg.v
pushi.e 8
add.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 64
add.i.v
push.v self.arm
pushi.e 441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 24
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 104
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 22
sub.i.v
pushi.e 0
conv.i.v
pushi.e 440
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
pushi.e 116
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 438
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 439
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 24
mul.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 104
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 114
add.i.v
pushi.e 0
conv.i.v
pushi.e 440
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
pushi.e -2
conv.i.v
push.v self.y
pushi.e 116
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 0
conv.i.v
pushi.e 438
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 0
conv.i.v
pushi.e 439
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [21]

:[15]
push.v self.sinert
pushi.e 55
cmp.i.v LT
bf [19]

:[16]
push.v self.pour
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[18]
pushi.e 1
pop.v.i self.pour
b [20]

:[19]
push.v self.sinert
pushi.e 1
sub.i.v
pop.v.v self.sinert

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 36
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 104
add.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 22
sub.i.v
pushi.e 0
conv.i.v
pushi.e 440
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
pushi.e 116
add.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 438
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 439
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 36
mul.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 104
add.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 114
add.i.v
pushi.e 0
conv.i.v
pushi.e 440
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
pushi.e -2
conv.i.v
push.v self.y
pushi.e 116
add.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 0
conv.i.v
pushi.e 438
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 0
conv.i.v
pushi.e 439
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[21]
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
pushi.e 114
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 444
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
pushi.e 92
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 28
add.i.v
pushi.e 0
conv.i.v
pushi.e 442
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [44]

:[23]
push.v self.anim
pushi.e 0
push.v self.i
pushi.e 5
mul.i.v
add.v.i
cmp.v.v GT
bf [25]

:[24]
push.v self.anim
pushi.e 7
push.v self.i
pushi.e 5
mul.i.v
add.v.i
cmp.v.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.eye
push.d 0.5
add.d.v
pop.i.v [array]self.eye

:[28]
push.v self.anim
pushi.e 12
push.v self.i
pushi.e 5
mul.i.v
add.v.i
cmp.v.v GT
bf [30]

:[29]
push.v self.anim
pushi.e 16
push.v self.i
pushi.e 5
mul.i.v
add.v.i
cmp.v.v LT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.eye
pushi.e 1
sub.i.v
pop.i.v [array]self.eye

:[33]
push.v self.anim
pushi.e 70
cmp.i.v GT
bf [35]

:[34]
push.v self.anim
pushi.e 77
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.eye
push.d 0.5
add.d.v
pop.i.v [array]self.eye

:[38]
push.v self.anim
pushi.e 88
cmp.i.v GT
bf [40]

:[39]
push.v self.anim
pushi.e 95
cmp.i.v LT
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.eye
push.d 0.5
sub.d.v
pop.i.v [array]self.eye

:[43]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[44]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
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
push.v self.heady
pushi.e 42
add.i.v
push.v self.x
pushi.e 24
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.eye
pushi.e 449
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
push.v self.heady
pushi.e 32
add.i.v
push.v self.x
pushi.e 30
add.i.v
pushi.e -1
pushi.e 1
push.v [array]self.eye
pushi.e 451
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
push.v self.heady
pushi.e 26
add.i.v
push.v self.x
pushi.e 42
add.i.v
pushi.e -1
pushi.e 2
push.v [array]self.eye
pushi.e 453
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
pushi.e -2
conv.i.v
push.v self.heady
pushi.e 32
add.i.v
push.v self.x
pushi.e 62
add.i.v
pushi.e -1
pushi.e 3
push.v [array]self.eye
pushi.e 451
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
pushi.e -2
conv.i.v
push.v self.heady
pushi.e 42
add.i.v
push.v self.x
pushi.e 68
add.i.v
pushi.e -1
pushi.e 4
push.v [array]self.eye
pushi.e 449
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[46]
push.v self.hurt
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
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
push.v self.heady
pushi.e 42
add.i.v
push.v self.x
pushi.e 24
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.eye
pushi.e 450
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
push.v self.heady
pushi.e 32
add.i.v
push.v self.x
pushi.e 30
add.i.v
pushi.e -1
pushi.e 1
push.v [array]self.eye
pushi.e 452
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
push.v self.heady
pushi.e 26
add.i.v
push.v self.x
pushi.e 42
add.i.v
pushi.e -1
pushi.e 2
push.v [array]self.eye
pushi.e 454
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
pushi.e -2
conv.i.v
push.v self.heady
pushi.e 32
add.i.v
push.v self.x
pushi.e 62
add.i.v
pushi.e -1
pushi.e 3
push.v [array]self.eye
pushi.e 452
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
pushi.e -2
conv.i.v
push.v self.heady
pushi.e 42
add.i.v
push.v self.x
pushi.e 68
add.i.v
pushi.e -1
pushi.e 4
push.v [array]self.eye
pushi.e 450
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[48]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[50]
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim
push.v self.anim
pushi.e 110
cmp.i.v GT
bf [52]

:[51]
pushi.e 0
pop.v.i self.anim

:[52]
pushi.e 760
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[53]
push.v self.purple
pushi.e 0
cmp.i.v GT
bf [end]

:[54]
pushi.e -5
pop.v.i self.depth
push.v self.purple
pop.v.v self.purple2
push.v self.purple2
push.v 762.y
push.v 760.y
sub.v.v
cmp.v.v GT
bf [62]

:[55]
push.v self.purpletime
pushi.e 0
cmp.i.v EQ
bf [61]

:[56]
push.v self.parent
conv.v.i
pushenv [58]

:[57]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[58]
popenv [57]
pushi.e 1
pop.v.i self.purpletime
push.v self.parent
conv.v.i
pushenv [60]

:[59]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
popenv [59]

:[61]
push.v 762.y
push.v 760.y
sub.v.v
pop.v.v self.purple2

:[62]
push.v self.purple
pushi.e 125
cmp.i.v GT
bf [64]

:[63]
push.v self.mode
pushi.e 1
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[67]
push.i 8388736
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.purple
pushi.e 160
cmp.i.v GT
bf [70]

:[68]
pushi.e 1
push.v self.purple
pushi.e 160
sub.i.v
pushi.e 40
conv.i.d
div.d.v
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
push.v self.purple
pushi.e 160
sub.i.v
pushi.e 40
conv.i.d
div.d.v
sub.v.i
push.d 0.1
cmp.d.v LT
bf [70]

:[69]
pushi.e 5
pop.v.i self.depth

:[70]
push.v self.purple
pushi.e 210
cmp.i.v GT
bf [72]

:[71]
pushi.e 0
pop.v.i self.purple
pushi.e 5
pop.v.i self.depth

:[72]
push.v 762.y
pushi.e 2
add.i.v
push.v 761.x
pushi.e 2
add.i.v
push.v 762.y
push.v self.purple2
sub.v.v
push.v 759.x
pushi.e 2
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]