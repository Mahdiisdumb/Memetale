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
push.i 16711680
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 85
add.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 85
sub.i.v
call.i draw_ellipse_color(argc=7)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 255
conv.i.v
pushi.e 120
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
mul.i.v
sub.v.i
pushi.e 120
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
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
push.i 16711935
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 85
add.i.v
push.v self.op
add.v.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 105
sub.i.v
push.v self.op
add.v.v
call.i draw_ellipse_color(argc=7)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 200
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
pushi.e 230
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.blend2

:[8]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [17]

:[9]
pushi.e 67
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [13]

:[10]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 2
pop.v.i self.flash
b [13]

:[12]
pushi.e 0
pop.v.i self.flash
push.i 8421504
pop.v.i self.blend2

:[13]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [17]

:[14]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.flash
b [17]

:[16]
pushi.e 0
pop.v.i self.flash
push.i 8421504
pop.v.i self.image_blend

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 13
cmp.i.v LT
bf [30]

:[19]
push.v self.x
push.v self.i
pushi.e 49
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 85
mul.i.v
add.v.v
pop.v.v self.offx
push.v self.y
push.v self.i
pushi.e 3
sub.i.v
push.d 2.2
div.d.v
call.i cos(argc=1)
pushi.e 40
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
bf [21]

:[20]
push.v self.offs
pushi.e 1
sub.i.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.offs
b [22]

:[21]
pushi.e 0
pop.v.i self.offs

:[22]
push.v self.i
pushi.e -12
mul.i.v
pushi.e 330
sub.i.v
pop.v.v self.offv
push.v self.i
pushi.e 5
cmp.i.v GT
bf [24]

:[23]
push.v self.i
pushi.e -20
mul.i.v
pushi.e 310
sub.i.v
pop.v.v self.offv

:[24]
push.v self.i
pushi.e 7
cmp.i.v GT
bf [26]

:[25]
push.v self.i
pushi.e -22
mul.i.v
pushi.e 310
sub.i.v
pop.v.v self.offv

:[26]
pushglb.v global.soul_rescue
pushi.e 3
cmp.i.v LT
bf [28]

:[27]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.offv
pushi.e 1
push.v self.offs
add.v.i
push.v self.i
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
sub.v.v
pushi.e 1
push.v self.offs
add.v.i
push.v self.offy
push.v self.offx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [29]

:[28]
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
push.v self.offv
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.offy
push.v self.offx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[29]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[30]
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 13
cmp.i.v LT
bf [end]

:[32]
push.v self.x
push.v self.i
pushi.e 49
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 85
mul.i.v
sub.v.v
push.v self.op
add.v.v
pop.v.v self.offx2
push.v self.y
push.v self.i
pushi.e 3
sub.i.v
push.d 2.2
div.d.v
call.i cos(argc=1)
pushi.e 40
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
bf [34]

:[33]
push.v self.offs2
pushi.e 1
sub.i.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.offs2
b [35]

:[34]
pushi.e 0
pop.v.i self.offs2

:[35]
push.v self.i
pushi.e 12
mul.i.v
push.v self.magicfactor
add.v.v
pop.v.v self.offv2
push.v self.i
pushi.e 5
cmp.i.v GT
bf [37]

:[36]
push.v self.i
pushi.e 30
mul.i.v
push.v self.magicfactor2
add.v.v
pop.v.v self.offv2

:[37]
push.v self.i
pushi.e 7
cmp.i.v GT
bf [39]

:[38]
push.v self.i
pushi.e 20
mul.i.v
push.v self.magicfactor3
add.v.v
pop.v.v self.offv2

:[39]
pushglb.v global.soul_rescue
pushi.e 4
cmp.i.v LT
bf [41]

:[40]
pushi.e 1
conv.i.v
push.v self.blend2
push.v self.offv2
pushi.e 1
push.v self.offs2
add.v.i
push.v self.i
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
sub.v.v
pushi.e -1
push.v self.offs2
sub.v.i
push.v self.offy2
push.v self.offx2
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [42]

:[41]
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
push.v self.offv2
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.offy2
push.v self.offx2
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[42]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [31]

:[end]