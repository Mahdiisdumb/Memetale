.localvar 0 arguments
.localvar 1 scale 1251

:[0]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [5]

:[2]
pushi.e 1
pop.v.i local.scale
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i local.scale

:[4]
pushloc.v local.scale
pushloc.v local.scale
push.s "title_press_button_console"@31483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 180
conv.i.v
pushi.e 160
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [6]

:[5]
push.s "title_press_button_pc"@31481
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 180
conv.i.v
pushi.e 120
conv.i.v
call.i draw_text(argc=3)
popz.v

:[6]
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [8]

:[7]
pushi.e 0
conv.i.v
call.i gamepad_button_check_any(argc=1)
pop.v.v self.proceed
b [9]

:[8]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
pop.v.v self.proceed

:[9]
push.v self.ballamount
pushi.e 3
cmp.i.v EQ
bf [12]

:[10]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 4
pop.v.i self.ballamount
pushi.e 148
conv.i.v
call.i snd_play(argc=1)
popz.v

:[12]
push.v self.ballamount
pushi.e 2
cmp.i.v EQ
bf [15]

:[13]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 3
pop.v.i self.ballamount

:[15]
push.v self.ballamount
pushi.e 1
cmp.i.v EQ
bf [18]

:[16]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e 2
pop.v.i self.ballamount

:[18]
push.v self.ballamount
pushi.e 0
cmp.i.v EQ
bf [21]

:[19]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [21]

:[20]
pushi.e 1
pop.v.i self.ballamount

:[21]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [24]

:[22]
push.v self.special_x
pushi.e 1
add.i.v
pop.v.v self.special_x
push.v self.special_x
pushi.e 5
cmp.i.v GTE
bf [24]

:[23]
pushi.e 1800
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.d
pushi.e 1
pop.v.i self.drawpw

:[24]
push.v self.drawpw
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
pushi.e 0
pop.v.i self.d
pushi.e 999
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.pw1
pushi.e 0
cmp.i.v EQ
bf [28]

:[26]
push.v self.pw2
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.pw3
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.s "obj_titleimage_activity_0"@32901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 180
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[31]
push.v self.pw1
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_titleimage_activity_a"@32903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[33]
push.v self.pw2
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_titleimage_activity_b"@32905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 190
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[35]
push.v self.pw3
pushi.e 1
cmp.i.v EQ
bf [end]

:[36]
push.s "obj_titleimage_activity_c"@32907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 210
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]