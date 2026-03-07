.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.sam
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.sim
push.v self.siner
push.d 2.5
div.d.v
call.i sin(argc=1)
pop.v.v self.som
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e -40
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
sub.v.i
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
sub.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 23
sub.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 463
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 40
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.i
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
sub.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 19
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 463
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.sam
neg.v
pushi.e 10
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.sam
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
pushi.e 465
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.sam
pushi.e 10
mul.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.sam
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
pushi.e 465
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 1.8
push.v self.sam
push.d 0.2
mul.d.v
sub.v.d
pushi.e 2
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.sam
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 34
sub.i.v
pushi.e 0
conv.i.v
pushi.e 464
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [2]

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
pushi.e 2
add.i.v
push.v self.sam
pushi.e 8
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 6
sub.i.v
push.v self.sam
add.v.v
pushi.e 0
conv.i.v
pushi.e 466
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [4]

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
pushi.e 2
add.i.v
push.v self.sam
pushi.e 8
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 6
sub.i.v
push.v self.sam
add.v.v
pushi.e 0
conv.i.v
pushi.e 467
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

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
pushi.e 4
add.i.v
push.v self.sam
pushi.e 10
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 2
add.i.v
push.v self.sim
add.v.v
pushi.e 0
conv.i.v
pushi.e 468
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.exist
pushi.e 1
add.i.v
pop.v.v self.exist
push.v self.exist
pushi.e 10
cmp.i.v LT
bf [10]

:[5]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 459
pop.v.i self.orbspr

:[7]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 460
pop.v.i self.orbspr

:[9]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.som
pushi.e 2
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 44
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
push.v self.orbspr
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.som
pushi.e 5
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 70
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
push.v self.orbspr
call.i draw_sprite_ext(argc=9)
popz.v

:[10]
push.v self.exist
pushi.e 10
cmp.i.v GTE
bf [21]

:[11]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 459
pop.v.i self.orbspr

:[13]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 460
pop.v.i self.orbspr

:[15]
push.v self.parent
conv.v.i
push.v [stacktop]self.stare1
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.som
pushi.e 2
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 44
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
push.v self.orbspr
call.i draw_sprite_ext(argc=9)
popz.v
b [18]

:[17]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.som
pushi.e 2
mul.i.v
push.v self.exist
div.v.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 44
sub.i.v
push.v self.siner
push.v self.exist
div.v.v
push.v self.orbspr
call.i draw_sprite_ext(argc=9)
popz.v

:[18]
push.v self.parent
conv.v.i
push.v [stacktop]self.stare2
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.som
pushi.e 5
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 70
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
push.v self.orbspr
call.i draw_sprite_ext(argc=9)
popz.v
b [21]

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.som
pushi.e 5
mul.i.v
push.v self.exist
div.v.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 70
add.i.v
push.v self.siner
push.v self.exist
div.v.v
push.v self.orbspr
call.i draw_sprite_ext(argc=9)
popz.v

:[21]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
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
pushi.e 2
add.i.v
pop.v.v self.x

:[end]