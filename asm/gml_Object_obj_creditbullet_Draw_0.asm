.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.stretch
pushi.e 0
cmp.i.v EQ
bf [8]

:[2]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.image_angle
push.v self.width
pushi.e 1
mul.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.image_angle
push.v self.width
pushi.e 1
mul.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yy
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
call.i lengthdir_x(argc=2)
pushi.e 18
mul.i.v
pop.v.v self.xx_off
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
call.i lengthdir_y(argc=2)
pushi.e 18
mul.i.v
pop.v.v self.yy_off
push.v self.hitted
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1705
conv.i.v
push.v self.y
push.v self.yy
push.d 0.8
mul.d.v
add.v.v
push.v self.x
push.v self.xx
push.d 0.8
mul.d.v
add.v.v
push.v self.y
push.v self.yy
push.d 0.8
mul.d.v
sub.v.v
push.v self.x
push.v self.xx
push.d 0.8
mul.d.v
sub.v.v
call.i collision_line(argc=7)
conv.v.b
bf [5]

:[4]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.hitted
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.text
push.v self.y
push.v self.yy_off
sub.v.v
push.v self.x
push.v self.xx_off
sub.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[8]
push.v self.stretch
pushi.e 1
cmp.i.v EQ
bf [19]

:[9]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.image_angle
push.v self.width
pushi.e 1
mul.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.image_angle
push.v self.width
pushi.e 1
mul.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 1
pop.v.i self.s_factor
push.v self.x
push.v self.xx
sub.v.v
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.v self.x
push.v self.xx
sub.v.v
call.i abs(argc=1)
pop.v.v self.s_loss
push.v self.width
push.v self.s_loss
sub.v.v
push.v self.width
div.v.v
pop.v.v self.s_factor

:[11]
push.v self.x
push.v self.xx
add.v.v
pushbltn.v self.room_width
cmp.v.v GT
bf [13]

:[12]
push.v self.x
push.v self.xx
add.v.v
pushbltn.v self.room_width
sub.v.v
call.i abs(argc=1)
pop.v.v self.s_loss
push.v self.width
push.v self.s_loss
sub.v.v
push.v self.width
div.v.v
pop.v.v self.s_factor

:[13]
push.v self.xx
push.v self.s_factor
mul.v.v
pop.v.v self.xx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
call.i lengthdir_x(argc=2)
pushi.e 18
mul.i.v
push.v self.s_factor
mul.v.v
pop.v.v self.xx_off
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
call.i lengthdir_y(argc=2)
pushi.e 18
mul.i.v
pop.v.v self.yy_off
push.v self.hitted
pushi.e 0
cmp.i.v EQ
bf [16]

:[14]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1705
conv.i.v
push.v self.y
push.v self.yy
push.d 0.8
mul.d.v
add.v.v
push.v self.x
push.v self.xx
push.d 0.8
mul.d.v
add.v.v
push.v self.y
push.v self.yy
push.d 0.8
mul.d.v
sub.v.v
push.v self.x
push.v self.xx
push.d 0.8
mul.d.v
sub.v.v
call.i collision_line(argc=7)
conv.v.b
bf [16]

:[15]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[16]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.hitted
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[18]
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
push.v self.s_factor
mul.v.i
push.v self.text
push.v self.y
push.v self.yy_off
sub.v.v
push.v self.x
push.v self.xx_off
sub.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[19]
push.v self.stretch
pushi.e 2
cmp.i.v EQ
bf [end]

:[20]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
pop.v.i self.s_factor
push.v self.stretchfactor
push.v self.width
div.v.v
pop.v.v self.s_factor
push.v self.image_angle
push.v self.width
pushi.e 1
mul.i.v
push.v self.s_factor
mul.v.v
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.image_angle
push.v self.width
pushi.e 1
mul.i.v
push.v self.s_factor
mul.v.v
call.i lengthdir_y(argc=2)
pop.v.v self.yy
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
call.i lengthdir_x(argc=2)
pushi.e 18
mul.i.v
pop.v.v self.xx_off
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 1
conv.i.v
call.i lengthdir_y(argc=2)
pushi.e 18
mul.i.v
pop.v.v self.yy_off
push.v self.hitted
pushi.e 0
cmp.i.v EQ
bf [23]

:[21]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1705
conv.i.v
push.v self.y
push.v self.yy
push.d 0.8
mul.d.v
add.v.v
push.v self.x
push.v self.xx
push.d 0.8
mul.d.v
add.v.v
push.v self.y
push.v self.yy
push.d 0.8
mul.d.v
sub.v.v
push.v self.x
push.v self.xx
push.d 0.8
mul.d.v
sub.v.v
call.i collision_line(argc=7)
conv.v.b
bf [23]

:[22]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[23]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.hitted
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[25]
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
push.v self.s_factor
mul.v.i
push.v self.text
push.v self.y
push.v self.yy_off
sub.v.v
push.v self.x
push.v self.xx_off
sub.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]