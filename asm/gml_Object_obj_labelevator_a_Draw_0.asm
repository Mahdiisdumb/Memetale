.localvar 0 arguments
.localvar 1 yy 9526

:[0]
push.v self.blacktime
pushi.e 0
cmp.i.v EQ
bf [16]

:[1]
push.v self.dt
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1010
conv.i.v
pushi.e 1010
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
push.v self.vshake
push.v self.hshake
pushi.e 0
conv.i.v
push.v self.thispic
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.redsiner
pushi.e 1
push.v self.rs_speed
add.v.i
add.v.v
pop.v.v self.redsiner
push.v self.hyperboys
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.redsiner
pushi.e 1
push.v self.rs_speed
add.v.i
add.v.v
pop.v.v self.redsiner

:[5]
push.v self.shakevalue
call.i random(argc=1)
push.v self.shakevalue
call.i random(argc=1)
sub.v.v
pop.v.v self.hshake
push.v self.shakevalue
call.i random(argc=1)
push.v self.shakevalue
call.i random(argc=1)
sub.v.v
pop.v.v self.vshake
pushi.e 210
push.v self.redsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 45
mul.i.v
add.v.i
pushi.e 210
push.v self.redsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 45
mul.i.v
add.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend
push.v self.shakevalue
push.d 0.008
add.d.v
pop.v.v self.shakevalue
push.v self.rs_speed
push.d 0.01
add.d.v
pop.v.v self.rs_speed
push.v self.hyperboys
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.shakevalue
push.d 0.008
add.d.v
pop.v.v self.shakevalue
push.v self.rs_speed
push.d 0.01
add.d.v
pop.v.v self.rs_speed

:[7]
push.v self.shakevalue
pushi.e 5
cmp.i.v GT
bf [11]

:[8]
push.v self.w
push.d 0.01
add.d.v
pop.v.v self.w
push.v self.hyperboys
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.w
push.d 0.01
add.d.v
pop.v.v self.w

:[10]
b [12]

:[11]
push.v self.vol
push.v self.sfx
call.i caster_set_volume(argc=2)
popz.v

:[12]
push.v self.w
pushi.e 0
cmp.i.v GT
bf [16]

:[13]
push.v self.pit
push.d 0.01
add.d.v
pop.v.v self.pit
push.v self.pit
push.v self.sfx
call.i caster_set_pitch(argc=2)
popz.v
push.v self.vol
push.d 0.01
sub.d.v
pop.v.v self.vol
push.v self.vol
push.v self.sfx
call.i caster_set_volume(argc=2)
popz.v
push.v self.hyperboys
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.pit
push.d 0.01
add.d.v
pop.v.v self.pit
push.v self.pit
push.v self.sfx
call.i caster_set_pitch(argc=2)
popz.v
push.v self.vol
push.d 0.01
sub.d.v
pop.v.v self.vol
push.v self.vol
push.v self.sfx
call.i caster_set_volume(argc=2)
popz.v

:[15]
push.v self.w
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
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

:[16]
push.v self.blacktime
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1010
conv.i.v
pushi.e 1010
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.w
push.d 0.01
add.d.v
pop.v.v self.w

:[18]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.v self.hyperboys
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [25]

:[22]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
push.s "obj_labelevator_a_242"@14847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labelevator_a_243"@14849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_labelevator_a_244"@14851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_labelevator_a_245"@14853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 10
pop.v.i local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [24]

:[23]
pushi.e -2
pop.v.i local.yy

:[24]
pushi.e 784
conv.i.v
pushloc.v local.yy
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con

:[25]
push.v self.dt
pushi.e 0
cmp.i.v EQ
bf [end]

:[26]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i sprite_create_from_screen_x(argc=8)
pop.v.v self.thispic
pushi.e 1
pop.v.i self.dt

:[end]