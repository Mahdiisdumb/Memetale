.localvar 0 arguments

:[0]
push.v self.flash
pushi.e 1
add.i.v
pop.v.v self.flash
push.v self.flash
pushi.e 2
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.flash

:[2]
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 120
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 120
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yy
push.v self.l_timer
pushi.e 1
sub.i.v
pop.v.v self.l_timer
push.v self.l_timer
pushi.e 0
cmp.i.v GT
bf [16]

:[3]
push.v self.sfx_t
call.i caster_is_playing(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sfx_t
call.i caster_loop(argc=3)
popz.v

:[5]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
push.v self.flash
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[9]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line(argc=4)
popz.v

:[11]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.image_angle
pushi.e 104
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 104
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line(argc=4)
popz.v
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line(argc=4)
popz.v
push.v self.image_angle
pushi.e 77
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 77
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line(argc=4)
popz.v

:[13]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.v self.image_angle
pushi.e 110
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 110
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line(argc=4)
popz.v
push.v self.image_angle
pushi.e 96
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 96
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line(argc=4)
popz.v
push.v self.image_angle
pushi.e 84
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 84
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line(argc=4)
popz.v
push.v self.image_angle
pushi.e 70
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 70
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line(argc=4)
popz.v

:[15]
b [18]

:[16]
push.v self.sfx_t
call.i caster_is_playing(argc=1)
conv.v.b
bf [18]

:[17]
push.v self.sfx_t
call.i caster_stop(argc=1)
popz.v

:[18]
push.v self.meter
pushi.e 1
cmp.i.v EQ
bf [24]

:[19]
push.v self.metercounter
pushi.e 1
add.i.v
pop.v.v self.metercounter
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [24]

:[21]
push.v self.metercounter
push.v self.i
cmp.v.v GT
bf [23]

:[22]
pushi.e 255
conv.i.v
pushi.e 180
conv.i.v
push.v self.metercounter
pushi.e 12
mul.i.v
push.v self.i
pushi.e 24
mul.i.v
sub.v.v
call.i make_color_hsv(argc=3)
pop.v.v self.mcolor
pushi.e 1
conv.i.v
push.v self.mcolor
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.i
pushi.e 2483
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[23]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [20]

:[24]
push.v self.blast
pushi.e 1
cmp.i.v EQ
bf [48]

:[25]
push.v self.bt
pushi.e 4
cmp.i.v GT
bf [27]

:[26]
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 3
conv.i.v
call.i random(argc=1)
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 3
conv.i.v
call.i random(argc=1)
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
b [28]

:[27]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[28]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
bf [30]

:[29]
pushi.e 4
pop.v.i self.image_index
b [31]

:[30]
pushi.e 5
pop.v.i self.image_index

:[31]
push.v self.metercounter
push.d 1.25
sub.d.v
pop.v.v self.metercounter
push.v self.thisx
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.thisy
pushi.e 15
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 16
sub.i.v
pop.v.v self.y
push.v self.x
push.v self.relx
sub.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.king
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.rely
sub.v.v
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 12
add.i.v
push.v self.king
conv.v.i
pop.v.v [stacktop]self.y
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 115
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 115
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yy
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
pushi.e 255
conv.i.v
pushi.e 180
conv.i.v
push.v self.btimer
pushi.e 18
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.mcolor1
pushi.e 255
conv.i.v
pushi.e 180
conv.i.v
push.v self.btimer
pushi.e 18
mul.i.v
pushi.e 60
add.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.mcolor2
push.v self.mcolor2
push.v self.mcolor1
push.v self.bt
push.v self.y
push.v self.yyy
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line_width_color(argc=7)
popz.v
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 90
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxa
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 90
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yya
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 100
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxb
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 100
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyb
push.v self.mcolor2
push.v self.mcolor1
push.v self.bt
pushi.e 2
conv.i.d
div.d.v
push.v self.y
push.v self.yya
add.v.v
push.v self.x
push.v self.xxa
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line_width_color(argc=7)
popz.v
push.v self.mcolor2
push.v self.mcolor1
push.v self.bt
push.d 1.5
div.d.v
push.v self.y
push.v self.yyb
add.v.v
push.v self.x
push.v self.xxb
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i draw_line_width_color(argc=7)
popz.v
push.v self.image_angle
pushi.e 1
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.nx_factor
push.v self.image_angle
pushi.e 1
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.ny_factor
push.v self.col_o
pushi.e 1
cmp.i.v EQ
bf [42]

:[32]
pushi.e 0
pop.v.i self.cl

:[33]
push.v self.cl
pushi.e 4
cmp.i.v LT
bf [37]

:[34]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.yyy
add.v.v
push.v self.ny_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.nx_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.ny_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.nx_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
call.i collision_line(argc=7)
conv.v.b
bf [36]

:[35]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[36]
push.v self.cl
pushi.e 1
add.i.v
pop.v.v self.cl
b [33]

:[37]
pushi.e 0
pop.v.i self.cl

:[38]
push.v self.cl
pushi.e 4
cmp.i.v LT
bf [42]

:[39]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.yyy
add.v.v
push.v self.ny_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.nx_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.ny_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.nx_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
call.i collision_line(argc=7)
conv.v.b
bf [41]

:[40]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[41]
push.v self.cl
pushi.e 1
add.i.v
pop.v.v self.cl
b [38]

:[42]
push.v self.col_o
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1
pop.v.i self.col_o
b [45]

:[44]
pushi.e 0
pop.v.i self.col_o

:[45]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 15
cmp.i.v GT
bf [48]

:[46]
push.v self.bt
pushi.e 3
sub.i.v
pop.v.v self.bt
push.v self.bt
pushi.e 3
cmp.i.v LT
bf [48]

:[47]
pushi.e 0
pop.v.i self.bt
pushi.e 0
pop.v.i self.blast
pushi.e 0
pop.v.i self.unhinge
pushi.e 0
pop.v.i self.meter

:[48]
push.v self.unhinge
pushi.e 1
cmp.i.v EQ
bf [51]

:[49]
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [51]

:[50]
pushi.e 5
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[51]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]