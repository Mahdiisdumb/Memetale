.localvar 0 arguments

:[0]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.anim
pushi.e 0
pop.v.i self.anim2
pushi.e 0
pop.v.i self.sfactor
pushi.e 0
pop.v.i self.siner
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 6
add.i.v
pop.v.v self.x

:[2]
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim
push.v self.anim
pushi.e 250
cmp.i.v GT
bf [6]

:[3]
push.v self.sfactor
pushi.e 1
cmp.i.v LT
bf [5]

:[4]
push.v self.sfactor
push.d 0.05
add.d.v
pop.v.v self.sfactor

:[5]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[6]
push.v self.anim
pushi.e 140
cmp.i.v GT
bf [8]

:[7]
push.v self.anim
pushi.e 180
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
push.v self.anim2
pushi.e 1
add.i.v
pop.v.v self.anim2
push.v self.anim2
pushi.e 18
cmp.i.v GT
bf [12]

:[11]
pushi.e 200
pop.v.i self.anim

:[12]
push.v self.anim
pushi.e 220
cmp.i.v GT
bf [14]

:[13]
push.v self.anim
pushi.e 280
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [18]

:[16]
push.v self.anim2
pushi.e 1
add.i.v
pop.v.v self.anim2
push.v self.anim2
pushi.e 33
cmp.i.v GTE
bf [18]

:[17]
pushi.e 300
pop.v.i self.anim

:[18]
push.v self.anim
pushi.e 480
cmp.i.v GT
bf [23]

:[19]
push.v self.sfactor
pushi.e 0
cmp.i.v GT
bf [21]

:[20]
push.v self.sfactor
push.d 0.07
sub.d.v
pop.v.v self.sfactor

:[21]
push.v self.anim2
pushi.e 1
sub.i.v
pop.v.v self.anim2
push.v self.anim2
pushi.e 0
cmp.i.v LTE
bf [23]

:[22]
pushi.e 0
pop.v.i self.sfactor
pushi.e 0
pop.v.i self.anim2
pushi.e 0
pop.v.i self.anim

:[23]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 1.8
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.2
mul.d.v
push.v self.sfactor
mul.v.v
add.v.d
pushi.e 2
conv.i.v
push.v self.y
pushi.e 64
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
push.v self.sfactor
mul.v.v
add.v.v
push.v self.x
pushi.e 8
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.v self.sfactor
mul.v.v
add.v.v
push.v self.anim2
pushi.e 3
conv.i.d
div.d.v
pushi.e 499
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
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
push.v self.sfactor
mul.v.v
add.v.d
pushi.e 2
conv.i.v
push.v self.y
pushi.e 84
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.v self.sfactor
mul.v.v
add.v.v
push.v self.x
pushi.e 30
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
push.v self.sfactor
mul.v.v
add.v.v
push.v self.anim2
pushi.e 3
conv.i.d
div.d.v
pushi.e 498
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 1.9
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.2
mul.d.v
push.v self.sfactor
mul.v.v
sub.v.d
pushi.e -2
conv.i.v
push.v self.y
pushi.e 64
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
push.v self.sfactor
mul.v.v
sub.v.v
push.v self.x
pushi.e 92
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.v self.sfactor
mul.v.v
sub.v.v
push.v self.anim2
pushi.e 3
conv.i.d
div.d.v
pushi.e 499
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
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
push.v self.sfactor
mul.v.v
sub.v.d
pushi.e -2
conv.i.v
push.v self.y
pushi.e 84
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.v self.sfactor
mul.v.v
sub.v.v
push.v self.x
pushi.e 70
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
push.v self.sfactor
mul.v.v
sub.v.v
push.v self.anim2
pushi.e 3
conv.i.d
div.d.v
pushi.e 498
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
push.v self.x
push.v self.anim2
pushi.e 3
conv.i.d
div.d.v
pushi.e 500
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]