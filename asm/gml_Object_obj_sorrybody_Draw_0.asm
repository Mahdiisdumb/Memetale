.localvar 0 arguments

:[0]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
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
pushi.e 64
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 604
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
pushi.e 128
add.i.v
push.v self.x
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
pushi.e 618
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
pushi.e 128
add.i.v
push.v self.x
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
pushi.e 618
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
pushi.e 0
conv.i.v
pushi.e 610
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 46
add.i.v
pushi.e 0
conv.i.v
pushi.e 610
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
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
push.v self.x
pushi.e 0
conv.i.v
pushi.e 608
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
pushi.e 12
add.i.v
push.v self.x
pushglb.v global.faceemotion
pushi.e 607
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
pushi.e 22
sub.i.v
push.v self.x
pushi.e 32
sub.i.v
pushi.e 0
conv.i.v
pushi.e 616
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
pushi.e 22
sub.i.v
push.v self.x
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
pushi.e 616
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
pushi.e 20
sub.i.v
push.v self.x
push.v self.hat
pushi.e 617
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
pushi.e 0
conv.i.v
pushi.e 614
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 46
add.i.v
pushi.e 0
conv.i.v
pushi.e 614
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
pushi.e 0
conv.i.v
pushi.e 611
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 46
add.i.v
pushi.e 0
conv.i.v
pushi.e 611
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [9]

:[8]
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
pushi.e 0
conv.i.v
pushi.e 611
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
pushi.e 28
add.i.v
push.v self.x
pushi.e 52
add.i.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 613
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.freeze
pushi.e 0
cmp.i.v EQ
bf [12]

:[10]
push.v self.back
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.pause
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [24]

:[14]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.intense
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[16]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.v self.y
pushi.e 88
add.i.v
push.v self.x
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 46
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 619
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
pushi.e 64
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 604
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
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
add.v.i
pushi.e 2
conv.i.v
push.v self.y
pushi.e 128
add.i.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 618
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
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
add.v.i
pushi.e -2
conv.i.v
push.v self.y
pushi.e 128
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 618
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 610
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 46
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 610
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[18]
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
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 608
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
pushi.e 12
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushglb.v global.faceemotion
pushi.e 607
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
pushi.e 22
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
pushi.e 32
sub.i.v
pushi.e 0
conv.i.v
pushi.e 616
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
pushi.e 22
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
pushi.e 616
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
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
push.v self.x
push.v self.hat
pushi.e 617
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 614
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 46
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 614
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[20]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [22]

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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 611
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 46
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 611
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[22]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [24]

:[23]
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 611
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
pushi.e 28
add.i.v
push.v self.x
pushi.e 52
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 613
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
push.v self.back
pushi.e 1
cmp.i.v EQ
bf [122]

:[25]
push.v self.tailsiner
pushi.e 1
push.v self.tail_t
add.v.i
add.v.v
pop.v.v self.tailsiner
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.intense
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[27]
push.v self.armtype
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 44
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 610
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
pushi.e 32
add.i.v
push.v self.x
pushi.e 46
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 610
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[29]
push.v self.armtype
pushi.e 1
cmp.i.v EQ
bf [53]

:[30]
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 22
mul.i.v
pop.v.v self.arm_a
pushi.e 612
pop.v.i self.armspr
push.v self.arm_a
pushi.e -16
cmp.i.v LTE
bf [39]

:[31]
pushi.e 615
pop.v.i self.armspr
push.v self.madetrash
pushi.e 0
cmp.i.v EQ
bf [39]

:[32]
pushi.e 1
pop.v.i self.madetrash
push.v self.diff
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [34]

:[33]
pushi.e 457
conv.i.v
push.v self.y
pushi.e 32
add.i.v
pushi.e 8
add.i.v
push.v self.arm_a
add.v.v
push.v self.x
pushi.e 54
sub.i.v
push.v self.arm_a
add.v.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [33]

:[34]
popz.i
pushi.e 459
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[35]
push.v 459.myplot
pushi.e 5
cmp.i.v GTE
bf [39]

:[36]
pushi.e 457
pushenv [38]

:[37]
pushi.e -1
pop.v.i self.stop

:[38]
popenv [37]

:[39]
push.v self.arm_a
pushi.e 0
cmp.i.v GT
bf [41]

:[40]
pushi.e 0
pop.v.i self.madetrash

:[41]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 15
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
add.i.v
pushi.e 20
add.i.v
push.v self.arm_a
add.v.v
push.v self.x
pushi.e 20
sub.i.v
push.v self.arm_a
add.v.v
pushi.e 0
conv.i.v
push.v self.armspr
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 24
push.v self.siner
add.v.i
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 22
mul.i.v
pop.v.v self.arm_b
pushi.e 612
pop.v.i self.armspr
push.v self.arm_b
pushi.e -16
cmp.i.v LTE
bf [50]

:[42]
pushi.e 615
pop.v.i self.armspr
push.v self.madetrash_b
pushi.e 0
cmp.i.v EQ
bf [50]

:[43]
pushi.e 1
pop.v.i self.madetrash_b
push.v self.diff
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [45]

:[44]
pushi.e 457
conv.i.v
push.v self.y
pushi.e 32
add.i.v
pushi.e 8
add.i.v
push.v self.arm_b
add.v.v
push.v self.x
pushi.e 54
add.i.v
push.v self.arm_b
sub.v.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [44]

:[45]
popz.i
pushi.e 459
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [50]

:[46]
push.v 459.myplot
pushi.e 5
cmp.i.v GTE
bf [50]

:[47]
pushi.e 457
pushenv [49]

:[48]
pushi.e -1
pop.v.i self.stop

:[49]
popenv [48]

:[50]
push.v self.arm_b
pushi.e 0
cmp.i.v GT
bf [52]

:[51]
pushi.e 0
pop.v.i self.madetrash_b

:[52]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 12
push.v self.siner
add.v.i
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 15
mul.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 32
add.i.v
pushi.e 20
add.i.v
push.v self.arm_b
add.v.v
push.v self.x
pushi.e 22
add.i.v
push.v self.arm_b
sub.v.v
pushi.e 0
conv.i.v
push.v self.armspr
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
push.v self.y
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
push.v self.x
push.v self.hat
pushi.e 617
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
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 609
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
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
add.v.i
pushi.e 2
conv.i.v
push.v self.y
pushi.e 128
add.i.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 618
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
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
add.v.i
pushi.e -2
conv.i.v
push.v self.y
pushi.e 128
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 618
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
pushi.e 22
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
pushi.e 32
sub.i.v
pushi.e 0
conv.i.v
pushi.e 616
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
pushi.e 22
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
pushi.e 616
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
pushi.e 64
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 605
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.tailtype
pushi.e 0
cmp.i.v EQ
bf [65]

:[54]
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.7
mul.d.v
pop.v.v self.minpull
push.v self.minpull
pushi.e 0
cmp.i.v GT
bf [56]

:[55]
push.v self.minpull
push.d 0.3
add.d.v
pop.v.v self.minpull

:[56]
push.v self.minpull
pushi.e 0
cmp.i.v LT
bf [58]

:[57]
push.v self.minpull
push.d 0.3
sub.d.v
pop.v.v self.minpull

:[58]
pushi.e 0
pop.v.i self.i

:[59]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [65]

:[60]
push.v self.minpull
pushi.e 0
cmp.i.v GTE
bf [62]

:[61]
pushi.e -1
pop.v.i self.g

:[62]
push.v self.minpull
pushi.e 0
cmp.i.v LT
bf [64]

:[63]
pushi.e 1
pop.v.i self.g

:[64]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.minpull
push.v self.i
push.d 0.04
mul.d.v
push.v self.g
mul.v.v
add.v.v
push.v self.y
pushi.e 82
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 620
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [59]

:[65]
push.v self.tailtype
pushi.e 1
cmp.i.v EQ
bf [119]

:[66]
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
pop.v.v self.rot
pushi.e 1
pop.v.i self.cut
push.v self.rot
pushi.e 46
cmp.i.v GTE
bt [68]

:[67]
push.v self.rot
pushi.e -46
cmp.i.v LTE
b [69]

:[68]
push.e 1

:[69]
bf [71]

:[70]
push.d 0.5
pop.v.d self.cut

:[71]
push.v self.rot
pushi.e 49
cmp.i.v GTE
bt [73]

:[72]
push.v self.rot
pushi.e -49
cmp.i.v LTE
b [74]

:[73]
push.e 1

:[74]
bf [76]

:[75]
push.d 0.25
pop.v.d self.cut

:[76]
push.v self.rot
pushi.e 52
cmp.i.v GTE
bt [78]

:[77]
push.v self.rot
pushi.e -52
cmp.i.v LTE
b [79]

:[78]
push.e 1

:[79]
bf [81]

:[80]
pushi.e 0
pop.v.i self.cut

:[81]
push.v self.extend
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.v self.extend
mul.v.v
sub.v.v
push.v self.cut
mul.v.v
pop.v.v self.add
push.v self.rot
call.i abs(argc=1)
pushi.e 58
cmp.i.v LT
bf [89]

:[82]
pushi.e 1
conv.i.v
push.v self.ch_color
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
pushi.e 2
push.v self.add
add.v.i
pushi.e 2
push.v self.add
pushi.e 4
conv.i.d
div.d.v
sub.v.i
push.v self.y
pushi.e 42
add.i.v
push.v self.add
pushi.e 15
mul.i.v
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 621
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.add
pushi.e 15
mul.i.v
sub.v.v
push.v self.rot
pushi.e 90
sub.i.v
pushi.e 130
pushi.e 60
push.v self.add
mul.v.i
add.v.i
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.rot
pushi.e 90
sub.i.v
pushi.e 130
pushi.e 60
push.v self.add
mul.v.i
add.v.i
call.i lengthdir_x(argc=2)
add.v.v
push.v self.y
pushi.e 42
add.i.v
push.v self.add
pushi.e 15
mul.i.v
sub.v.v
push.v self.x
call.i collision_line(argc=7)
conv.v.b
bf [84]

:[83]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[84]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.add
pushi.e 15
mul.i.v
sub.v.v
push.v self.rot
pushi.e 90
sub.i.v
pushi.e 130
pushi.e 60
push.v self.add
mul.v.i
add.v.i
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.rot
pushi.e 90
sub.i.v
pushi.e 130
pushi.e 60
push.v self.add
mul.v.i
add.v.i
call.i lengthdir_x(argc=2)
add.v.v
pushi.e 2
sub.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.add
pushi.e 15
mul.i.v
sub.v.v
push.v self.x
pushi.e 2
sub.i.v
call.i collision_line(argc=7)
conv.v.b
bf [86]

:[85]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[86]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.add
pushi.e 15
mul.i.v
sub.v.v
push.v self.rot
pushi.e 90
sub.i.v
pushi.e 130
pushi.e 60
push.v self.add
mul.v.i
add.v.i
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.rot
pushi.e 90
sub.i.v
pushi.e 130
pushi.e 60
push.v self.add
mul.v.i
add.v.i
call.i lengthdir_x(argc=2)
add.v.v
pushi.e 2
add.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.add
pushi.e 15
mul.i.v
sub.v.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_line(argc=7)
conv.v.b
bf [88]

:[87]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[88]
pushi.e 0
pop.v.i self.madech

:[89]
push.v self.rot
pushi.e 58
cmp.i.v GTE
bf [104]

:[90]
push.v self.madech
pushi.e 0
cmp.i.v EQ
bf [99]

:[91]
pushi.e 1
pop.v.i self.madech
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.ch
b [96]

:[93]
push.v self.ch
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.ch
b [96]

:[95]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.ch

:[96]
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
push.i 16754964
pop.v.i self.ch_color
b [99]

:[98]
push.i 4235519
pop.v.i self.ch_color

:[99]
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.i 16754964
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.ch_color2

:[101]
push.v self.ch
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.i 4235519
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.ch_color2

:[103]
pushi.e 1
conv.i.v
push.v self.ch_color2
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
pushi.e 60
sub.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 44
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 620
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[104]
push.v self.rot
pushi.e -58
cmp.i.v LTE
bf [119]

:[105]
push.v self.madech
pushi.e 0
cmp.i.v EQ
bf [114]

:[106]
pushi.e 1
pop.v.i self.madech
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.ch
b [111]

:[108]
push.v self.ch
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.ch
b [111]

:[110]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.ch

:[111]
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
push.i 16754964
pop.v.i self.ch_color
b [114]

:[113]
push.i 4235519
pop.v.i self.ch_color

:[114]
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.i 16754964
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.ch_color2

:[116]
push.v self.ch
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.i 4235519
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.ch_color2

:[118]
pushi.e 1
conv.i.v
push.v self.ch_color2
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
pushi.e 60
add.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
push.v self.tailsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 44
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 620
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[119]
push.v self.o_o
pushi.e 0
cmp.i.v EQ
bf [121]

:[120]
pushi.e 1
pop.v.i self.o_o
b [122]

:[121]
pushi.e 0
pop.v.i self.o_o

:[122]
push.v self.shimmy
pushi.e 1
cmp.i.v EQ
bf [end]

:[123]
push.v self.x
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
add.v.v
pop.v.v self.x

:[end]