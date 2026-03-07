.localvar 0 arguments

:[0]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[2]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.i 16777215
pop.v.i self.image_blend
push.i 16777215
pop.v.i self.blend2

:[4]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16776960
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 30
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 70
sub.i.v
call.i draw_ellipse_color(argc=7)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 255
conv.i.v
pushi.e 230
conv.i.v
pushi.e 100
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 100
mul.i.v
sub.v.i
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[6]
push.v self.flash
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 4235519
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
push.v self.op
add.v.v
pushi.e 30
sub.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
push.v self.op
add.v.v
pushi.e 70
add.i.v
call.i draw_ellipse_color(argc=7)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 100
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 100
mul.i.v
sub.v.i
pushi.e 180
conv.i.v
pushi.e 230
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.blend2

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [17]

:[10]
push.v self.x
push.v self.i
pushi.e 45
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
add.v.v
push.v self.i
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.offx
push.v self.y
push.v self.i
pushi.e 45
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.i
push.v self.siner
add.v.v
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 8
mul.i.v
add.v.v
pop.v.v self.offy
push.v self.siner
push.v self.i
pushi.e 4
mul.i.v
add.v.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.offs
push.v self.offs
pushi.e 1
cmp.i.v GT
bf [12]

:[11]
push.v self.offs
pushi.e 1
sub.i.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.offs
b [13]

:[12]
pushi.e 0
pop.v.i self.offs

:[13]
pushglb.v global.soul_rescue
pushi.e 1
cmp.i.v LT
bf [15]

:[14]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.i
pushi.e 20
mul.i.v
pushi.e 30
add.i.v
pushi.e 1
push.v self.offs
add.v.i
pushi.e 1
push.v self.offs
add.v.i
push.v self.offy
push.v self.offx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [16]

:[15]
push.v self.y
push.v self.i
pushi.e 45
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.i
push.v self.siner
add.v.v
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v self.offy
pushi.e 0
pop.v.i self.offs
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e 30
add.i.v
pushi.e 1
push.v self.offs
add.v.i
pushi.e 1
push.v self.offs
add.v.i
push.v self.offy
push.v self.offx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [end]

:[19]
push.v self.x
push.v self.i
pushi.e 45
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
sub.v.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
push.v self.op
add.v.v
pop.v.v self.offx2
push.v self.y
push.v self.i
pushi.e 45
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.i
push.v self.siner
add.v.v
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 8
mul.i.v
add.v.v
pop.v.v self.offy2
push.v self.siner
push.v self.i
pushi.e 4
mul.i.v
add.v.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.offs2
push.v self.offs2
pushi.e 1
cmp.i.v GT
bf [21]

:[20]
push.v self.offs2
pushi.e 1
sub.i.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.offs2
b [22]

:[21]
pushi.e 0
pop.v.i self.offs2

:[22]
pushglb.v global.soul_rescue
pushi.e 2
cmp.i.v LT
bf [24]

:[23]
pushi.e 1
conv.i.v
push.v self.blend2
push.v self.i
pushi.e -20
mul.i.v
pushi.e 150
add.i.v
pushi.e 1
push.v self.offs2
add.v.i
pushi.e 1
push.v self.offs2
add.v.i
push.v self.offy2
push.v self.offx2
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [25]

:[24]
push.v self.y
push.v self.i
pushi.e 45
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.i
push.v self.siner
add.v.v
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v self.offy2
pushi.e 0
pop.v.i self.offs2
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
push.v self.i
pushi.e -20
mul.i.v
pushi.e 150
add.i.v
pushi.e 1
push.v self.offs2
add.v.i
pushi.e 1
push.v self.offs2
add.v.i
push.v self.offy2
push.v self.offx2
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[25]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[end]