.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 250
conv.i.v
pushi.e 190
conv.i.v
push.v self.siner
pushi.e 11
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.col
pushi.e 250
conv.i.v
pushi.e 190
conv.i.v
push.v self.siner
pushi.e 3
add.i.v
pushi.e 11
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.col2
pushi.e 250
conv.i.v
pushi.e 140
conv.i.v
push.v self.siner
pushi.e 5
add.i.v
pushi.e 11
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.col3
push.v self.timer
push.v self.beamtime
cmp.v.v EQ
bf [6]

:[1]
pushi.e 0
pop.v.i self.hits
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e -2000
pop.v.i 756.depth
pushi.e -1000
pop.v.i self.depth
pushi.e -2100
pop.v.i 744.depth
pushi.e 0
pop.v.i self.shaken
pushi.e 751
pushi.e -1
pushi.e 0
pop.v.i [array]self.menu
push.v 751.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.menux
push.v 751.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuy
pushi.e 753
pushi.e -1
pushi.e 1
pop.v.i [array]self.menu
push.v 753.x
pushi.e -1
pushi.e 1
pop.v.v [array]self.menux
push.v 753.y
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuy
pushi.e 755
pushi.e -1
pushi.e 2
pop.v.i [array]self.menu
push.v 755.x
pushi.e -1
pushi.e 2
pop.v.v [array]self.menux
push.v 755.y
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuy
push.d 0.8
pop.v.d self.svol1
pushi.e 0
pop.v.i self.svol2
pushi.e 1
conv.i.v
push.v self.svol1
push.v self.beamsfx
call.i caster_play(argc=3)
pop.v.v self.s1
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.beamsfx2
call.i caster_loop(argc=3)
pop.v.v self.s2
push.d 0.7
pop.v.d self.ar
pushi.e 60
pop.v.i self.bw
push.v self.range
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 220
pop.v.i self.bw

:[3]
push.v self.range
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 120
pop.v.i self.bw

:[5]
push.v self.bw
pop.v.v self.mbw
pushi.e 0
pop.v.i self.bw

:[6]
push.v self.timer
push.v self.beamtime
cmp.v.v GT
bf [50]

:[7]
push.v self.timer
push.v self.beamtime
pushi.e 6
add.i.v
cmp.v.v LT
bf [9]

:[8]
push.v self.bw
push.v self.mbw
pushi.e 5
conv.i.d
div.d.v
add.v.v
pop.v.v self.bw

:[9]
push.v self.bw
pushi.e 0
cmp.i.v GT
bf [50]

:[10]
push.v self.svol2
push.d 0.8
cmp.d.v LT
bf [12]

:[11]
push.v self.svol2
push.d 0.05
add.d.v
pop.v.v self.svol2

:[12]
push.v self.svol2
push.v self.s2
call.i caster_set_volume(argc=2)
popz.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.mbw
pushi.e 5
conv.i.d
div.d.v
mul.v.v
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
pop.v.v self.ob
push.v self.ar
call.i draw_set_alpha(argc=1)
popz.v
push.v self.home
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
push.v self.col2
push.v self.col2
push.v self.col
pushbltn.v self.room_height
pushi.e 10
add.i.v
push.v self.x
push.v self.bw
sub.v.v
push.v self.ob
sub.v.v
pushbltn.v self.room_height
pushi.e 10
add.i.v
push.v self.x
push.v self.bw
add.v.v
push.v self.ob
add.v.v
push.v self.y
push.v self.x
call.i draw_triangle_color(argc=10)
popz.v
pushi.e 0
conv.i.v
push.v self.col2
push.v self.col2
push.v self.col
pushbltn.v self.room_height
pushi.e 10
add.i.v
push.v self.x
push.v self.bw
sub.v.v
push.v self.ob
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushbltn.v self.room_height
pushi.e 10
add.i.v
push.v self.x
push.v self.bw
add.v.v
push.v self.ob
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y
push.v self.x
call.i draw_triangle_color(argc=10)
popz.v
pushi.e 0
conv.i.v
push.v self.col3
push.v self.col3
push.v self.col
pushbltn.v self.room_height
pushi.e 10
add.i.v
push.v self.x
push.v self.bw
sub.v.v
push.v self.ob
add.v.v
pushbltn.v self.room_height
pushi.e 10
add.i.v
push.v self.x
push.v self.bw
add.v.v
push.v self.ob
sub.v.v
push.v self.y
push.v self.x
call.i draw_triangle_color(argc=10)
popz.v
push.v self.ar
push.v self.col
pushi.e 0
conv.i.v
pushi.e 7
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 3.75
mul.d.v
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
pushi.e 7
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 3.75
mul.d.v
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2502
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.ar
push.v self.col
pushi.e 0
conv.i.v
pushi.e 6
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.5
mul.d.v
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
pushi.e 6
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.5
mul.d.v
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2502
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.ar
push.v self.col2
pushi.e 0
conv.i.v
pushi.e 5
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
pushi.e 5
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2502
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.home
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushbltn.v self.mouse_x
pop.v.v self.targetx
pushbltn.v self.mouse_y
pop.v.v self.targety
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.tt
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.tt2
push.v self.col2
push.v self.col
push.v self.bw
push.v self.ob
pushi.e 2
mul.i.v
add.v.v
push.v self.y
push.v self.tt2
add.v.v
push.v self.x
push.v self.tt
add.v.v
push.v self.y
push.v self.x
call.i draw_line_width_color(argc=7)
popz.v
push.v self.col2
push.v self.col
push.v self.bw
push.v self.ob
add.v.v
push.v self.y
push.v self.tt2
add.v.v
push.v self.x
push.v self.tt
add.v.v
push.v self.y
push.v self.x
call.i draw_line_width_color(argc=7)
popz.v
push.v self.col3
push.v self.col
push.v self.bw
push.v self.y
push.v self.tt2
add.v.v
push.v self.x
push.v self.tt
add.v.v
push.v self.y
push.v self.x
call.i draw_line_width_color(argc=7)
popz.v
push.v self.mbw
pushi.e 60
conv.i.d
div.d.v
pop.v.v self.factor
push.v self.ar
push.v self.col
pushi.e 0
conv.i.v
pushi.e 7
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.factor
mul.v.v
pushi.e 7
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.factor
mul.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2502
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.ar
push.v self.col
pushi.e 0
conv.i.v
pushi.e 6
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.factor
mul.v.v
pushi.e 6
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.factor
mul.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2502
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.ar
push.v self.col2
pushi.e 0
conv.i.v
pushi.e 5
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.factor
mul.v.v
pushi.e 5
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
push.v self.bw
push.v self.mbw
div.v.v
mul.v.v
push.v self.factor
mul.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2502
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.last
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.timer
pushi.e 120
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i self.shaken
push.v self.bw
pushi.e 100
add.i.v
pop.v.v self.bw
push.v self.mbw
pushi.e 80
add.i.v
pop.v.v self.mbw
push.d 1.3
conv.d.v
push.v self.s2
call.i caster_set_pitch(argc=2)
popz.v
pushi.e 188
conv.i.v
pushi.e 50
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 0
pop.v.i global.msc
push.s "obj_lastbeam_230"@15039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 88
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e -2000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -2200
push.v self.blconwd
conv.v.i
pop.v.i [stacktop]self.depth

:[21]
push.v self.timer
pushi.e 190
cmp.i.v EQ
bt [23]

:[22]
push.v self.timer
pushi.e 340
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [31]

:[25]
push.v self.last
pushi.e 0
cmp.i.v GT
bf [31]

:[26]
push.v self.blcon
conv.v.i
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
push.v self.blconwd
conv.v.i
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]

:[31]
push.v self.last
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
push.v self.timer
pushi.e 240
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 2
pop.v.i self.shaken
push.v self.bw
pushi.e 400
add.i.v
pop.v.v self.bw
push.v self.mbw
pushi.e 260
add.i.v
pop.v.v self.mbw
push.d 1.8
conv.d.v
push.v self.s2
call.i caster_set_pitch(argc=2)
popz.v
pushi.e 188
conv.i.v
pushi.e 50
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 0
pop.v.i global.msc
push.s "obj_lastbeam_255"@15041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 88
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e -2000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -2200
push.v self.blconwd
conv.v.i
pop.v.i [stacktop]self.depth

:[36]
push.v self.shaken
pushi.e 1
cmp.i.v EQ
bf [40]

:[37]
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [40]

:[39]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menux
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menu
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuy
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menu
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [38]

:[40]
push.v self.shaken
pushi.e 2
cmp.i.v EQ
bf [45]

:[41]
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [44]

:[43]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menu
conv.v.i
dup.i 0
push.v [stacktop]self.vspeed
push.d 0.5
add.d.v
pop.i.v [stacktop]self.vspeed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menu
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.i.v [stacktop]self.image_angle
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [42]

:[44]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.bmenucoord
pushi.e 3
pop.v.i global.mercy

:[45]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.timer
push.v self.beamtime
pushi.e 80
add.i.v
push.v self.last
add.v.v
cmp.v.v GT
bf [50]

:[46]
push.v self.svol2
pushi.e 0
cmp.i.v GT
bf [48]

:[47]
push.v self.svol2
push.d 0.1
sub.d.v
pop.v.v self.svol2

:[48]
push.v self.svol2
push.v self.s2
call.i caster_set_volume(argc=2)
popz.v
push.v self.bw
push.v self.mbw
pushi.e 12
conv.i.d
div.d.v
sub.v.v
pop.v.v self.bw
push.v self.ar
push.d 0.04
sub.d.v
pop.v.v self.ar
push.v self.bw
pushi.e 0
cmp.i.v LTE
bf [50]

:[49]
push.v self.s2
call.i caster_stop(argc=1)
popz.v
pushi.e 3
pop.v.i global.mnfight
push.s "obj_lastbeam_296"@15042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i instance_destroy(argc=0)
popz.v

:[50]
call.i scr_binfowrite(argc=0)
popz.v

:[end]