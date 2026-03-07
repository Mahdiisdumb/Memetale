.localvar 0 arguments

:[0]
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
push.v self.arm1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 110
add.i.v
pushi.e 0
conv.i.v
pushi.e 376
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
push.v self.arm2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 120
add.i.v
pushi.e 0
conv.i.v
pushi.e 376
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pushi.e 30
sub.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.hand
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 16
add.i.v
push.v self.x
pushi.e 140
add.i.v
pushi.e 0
conv.i.v
push.v self.hand2pic
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
push.v self.arm1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 10
sub.i.v
pushi.e 0
conv.i.v
pushi.e 376
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
push.v self.arm2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 376
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.hand
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 16
add.i.v
push.v self.x
pushi.e 10
sub.i.v
pushi.e 0
conv.i.v
push.v self.hand1pic
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
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.i
pushi.e 2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.i
push.v self.pantsy
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
pushi.e 64
add.i.v
pushi.e 0
conv.i.v
pushi.e 389
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
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.i
pushi.e 2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.i
push.v self.shoesy
push.v self.x
pushi.e 64
add.i.v
pushi.e 0
conv.i.v
pushi.e 382
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
push.v self.armory
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
push.v self.bodypic
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
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
push.v self.headpic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[2]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 28
add.i.v
pop.v.v self.x

:[4]
push.v self.shaker
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.pause
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.x

:[end]