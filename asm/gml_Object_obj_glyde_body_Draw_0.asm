.localvar 0 arguments

:[0]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
pushi.e 72
sub.i.v
push.v self.image_index
pushi.e 255
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
b [end]

:[2]
push.v self.dsiner
pushi.e 1
add.i.v
pop.v.v self.dsiner
push.v self.siner
push.v self.dsiner
pushi.e 24
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.siner
push.v self.ystart
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.g
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.gg
push.v self.attackmode
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 8421504
pop.v.i self.image_blend
b [5]

:[4]
push.i 16777215
pop.v.i self.image_blend

:[5]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 1.7
push.v self.g
push.d 0.3
mul.d.v
sub.v.d
pushi.e 2
conv.i.v
push.v self.y
pushi.e 106
add.i.v
push.v self.g
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 46
add.i.v
pushi.e 0
conv.i.v
pushi.e 258
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
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
pushi.e 256
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 1.8
push.v self.g
push.d 0.2
mul.d.v
sub.v.d
push.d 1.95
push.v self.g
push.d 0.05
mul.d.v
sub.v.d
push.v self.y
pushi.e 174
add.i.v
push.v self.x
pushi.e 82
add.i.v
pushi.e 0
conv.i.v
pushi.e 257
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 20
push.v self.gg
pushi.e 20
mul.i.v
sub.v.i
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 54
add.i.v
push.v self.gg
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 261
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.sh
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.sh_timer
push.v self.sh_speed
add.v.v
pop.v.v self.sh_timer
push.v self.sh_timer
pushi.e 1
cmp.i.v GT
bf [end]

:[7]
push.v self.sh_timer
pushi.e 6
cmp.i.v GTE
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 20
push.v self.gg
pushi.e 20
mul.i.v
sub.v.i
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.gg
pushi.e 10
mul.i.v
add.v.v
pushi.e 8
sub.i.v
push.v self.x
pushi.e 72
add.i.v
push.v self.gg
pushi.e 8
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 259
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.sh_timer
pushi.e 1
sub.i.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 4
cmp.i.v LT
bf [11]

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 20
push.v self.gg
pushi.e 20
mul.i.v
sub.v.i
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.gg
pushi.e 10
mul.i.v
add.v.v
pushi.e 8
sub.i.v
push.v self.x
pushi.e 72
add.i.v
push.v self.gg
pushi.e 8
mul.i.v
add.v.v
push.v self.sh_timer
pushi.e 1
sub.i.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 264
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
push.v self.diff
pushi.e 1
cmp.i.v LT
bf [13]

:[12]
pushi.e 1
pop.v.i self.diff

:[13]
push.v self.sh_timer
pushi.e 12
cmp.i.v GTE
bf [end]

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
push.v self.diff
cmp.v.v LT
bf [17]

:[16]
pushi.e 226
conv.i.v
push.v self.y
push.v self.gg
pushi.e 10
mul.i.v
add.v.v
pushi.e 8
sub.i.v
push.v self.x
pushi.e 72
add.i.v
push.v self.gg
pushi.e 8
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bl
pushi.e 300
push.v self.i
pushi.e 1
add.i.v
push.v self.diff
div.v.v
pushi.e 60
mul.i.v
sub.v.i
pushi.e 1
conv.i.d
push.v self.diff
div.v.d
pushi.e 60
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.bl
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[17]
pushi.e -1
pop.v.i self.sh_timer

:[end]