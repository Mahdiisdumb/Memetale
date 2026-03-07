.localvar 0 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
push.d 0.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[3]
push.v self.con
pushi.e 3
cmp.i.v LT
bf [5]

:[4]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.facey
pushi.e 6
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2510
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.facey
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2508
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.facescale
add.v.i
pushi.e 2
conv.i.v
push.v self.y
pushi.e 72
add.i.v
push.v self.facey
add.v.v
push.v self.x
pushi.e 88
add.i.v
pushi.e 0
conv.i.v
pushi.e 2511
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 248
add.i.v
push.v self.facey
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
pushi.e 104
add.i.v
pushi.e 0
conv.i.v
pushi.e 2509
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [7]

:[6]
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.gl
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.con

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
push.v self.facey
push.d 3.5
sub.d.v
pop.v.v self.facey
push.v self.facescale
push.d 0.2
sub.d.v
pop.v.v self.facescale
pushi.e 0
pop.v.i self.siner
push.v self.facescale
pushi.e -1
cmp.i.v LT
bf [10]

:[9]
push.d 1.9
pop.v.d self.con
pushi.e 75
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 100
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[10]
push.v self.con
push.d 1.9
cmp.d.v EQ
bf [12]

:[11]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.facey
push.v self.siner
push.d 1.5
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
add.v.v
pop.v.v self.facey
push.v self.facescale
push.v self.siner
push.d 1.5
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.v.v self.facescale

:[12]
push.v self.con
push.d 2.9
cmp.d.v EQ
bf [14]

:[13]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.gc
call.i caster_play(argc=3)
popz.v
pushi.e 3
pop.v.i self.con

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [50]

:[15]
push.v self.cc
pushi.e 80
cmp.i.v LT
bf [17]

:[16]
push.v self.cc
push.d 0.5
add.d.v
pop.v.v self.cc

:[17]
pushi.e 2512
pop.v.i self.sprite_index
push.v self.image_alpha
push.d 0.14
cmp.d.v GT
bf [19]

:[18]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha

:[19]
push.v self.dd
push.v self.cc
push.v self.bb
call.i scr_fx_waver_scanline(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
push.v self.image_alpha
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [22]

:[21]
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushbltn.v self.room_height
pushbltn.v self.room_width
call.i random(argc=1)
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
call.i draw_line_width_color(argc=7)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [20]

:[22]
pushi.e 0
pop.v.i self.i

:[23]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [25]

:[24]
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v self.room_width
call.i random(argc=1)
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
call.i draw_line_width_color(argc=7)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [23]

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [28]

:[27]
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushbltn.v self.room_height
call.i random(argc=1)
pushi.e 0
conv.i.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
call.i draw_line_width_color(argc=7)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[28]
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [31]

:[30]
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushbltn.v self.room_height
call.i random(argc=1)
pushbltn.v self.room_width
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
call.i draw_line_width_color(argc=7)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [29]

:[31]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v
push.v self.c_counter
pushi.e 180
sub.i.v
push.d 1.5
div.d.v
pop.v.v self.rad
push.v self.rad
pushi.e 20
cmp.i.v LT
bf [33]

:[32]
pushi.e 20
pop.v.i self.rad

:[33]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.rad
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
call.i draw_circle(argc=4)
popz.v
push.v self.c_counter
pushi.e 295
cmp.i.v LT
bf [36]

:[34]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.rad
pushi.e 5
sub.i.v
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
call.i collision_circle(argc=6)
conv.v.b
bf [36]

:[35]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[36]
push.v self.c_counter
pushi.e 180
cmp.i.v LT
bf [40]

:[37]
pushi.e 744
pushenv [39]

:[38]
pushi.e 232
conv.i.v
pushi.e 312
conv.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.pd
push.v self.pd
pushi.e 1
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.ldrx
push.v self.pd
pushi.e 1
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.ldry
push.v self.x
push.v self.ldrx
add.v.v
pop.v.v self.x
push.v self.y
push.v self.ldry
add.v.v
pop.v.v self.y

:[39]
popenv [38]

:[40]
push.v self.c_counter
pushi.e 180
cmp.i.v GT
bf [44]

:[41]
pushi.e 744
pushenv [43]

:[42]
pushi.e 232
conv.i.v
pushi.e 312
conv.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.pd
push.v self.pd
pushi.e 2
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.ldrx
push.v self.pd
pushi.e 2
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.ldry
push.v self.x
push.v self.ldrx
add.v.v
pop.v.v self.x
push.v self.y
push.v self.ldry
add.v.v
pop.v.v self.y

:[43]
popenv [42]

:[44]
push.v self.c_counter
pushi.e 1
add.i.v
pop.v.v self.c_counter
push.v self.c_counter
pushi.e 180
cmp.i.v GT
bf [50]

:[45]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.c_counter
pushi.e 180
sub.i.v
pushi.e 60
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.c_counter
pushi.e 180
sub.i.v
push.d 1.5
div.d.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
call.i draw_circle(argc=4)
popz.v
push.v self.c_counter
pushi.e 210
sub.i.v
pushi.e 80
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.c_counter
pushi.e 275
cmp.i.v GT
bf [47]

:[46]
push.v 744.image_alpha
push.d 0.05
sub.d.v
pop.v.v 744.image_alpha

:[47]
push.v self.c_counter
pushi.e 320
cmp.i.v GT
bf [50]

:[48]
push.v self.gl
call.i caster_free(argc=1)
popz.v
push.v self.gc
call.i caster_free(argc=1)
popz.v
pushi.e 570
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [50]

:[49]
pushi.e 10
pop.v.i 570.gonercon
call.i instance_destroy(argc=0)
popz.v

:[50]
push.v 744.x
pushi.e 0
cmp.i.v LT
bf [52]

:[51]
pushi.e 0
pop.v.i 744.x

:[52]
push.v 744.x
pushbltn.v self.room_width
pushi.e 16
sub.i.v
cmp.v.v GT
bf [54]

:[53]
pushbltn.v self.room_width
pushi.e 16
sub.i.v
pop.v.v 744.x

:[54]
push.v 744.y
pushi.e 0
cmp.i.v LT
bf [56]

:[55]
pushi.e 0
pop.v.i 744.y

:[56]
push.v 744.y
pushbltn.v self.room_height
pushi.e 16
sub.i.v
cmp.v.v GT
bf [end]

:[57]
pushbltn.v self.room_height
pushi.e 16
sub.i.v
pop.v.v 744.y

:[end]