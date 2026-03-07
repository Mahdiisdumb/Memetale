.localvar 0 arguments
.localvar 1 ww 9617
.localvar 2 wh 9618
.localvar 3 sw 9619
.localvar 4 sh 9620
.localvar 5 xx 9622
.localvar 6 yy 9623
.localvar 7 lineheight 9626
.localvar 8 line1 9627
.localvar 9 dot 9628
.localvar 10 line2 9629
.localvar 11 width1 9630
.localvar 12 width2 9631
.localvar 13 width 9632
.localvar 14 i 9633

:[0]
pushglb.v global.osflavor
pushi.e 3
cmp.i.v GTE
bf [8]

:[1]
call.i window_get_width(argc=0)
pop.v.v local.ww
call.i window_get_height(argc=0)
pop.v.v local.wh
pushbltn.v self.application_surface
call.i surface_get_width(argc=1)
pop.v.v local.sw
pushbltn.v self.application_surface
call.i surface_get_height(argc=1)
pop.v.v local.sh
pushloc.v local.ww
pushloc.v local.sw
pushglb.v global.window_scale
mul.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local.xx
pushloc.v local.wh
pushloc.v local.sh
pushglb.v global.window_scale
mul.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local.yy
pushloc.v local.xx
pop.v.v global.window_xofs
pushloc.v local.yy
pop.v.v global.window_yofs
pushi.e 0
conv.i.v
call.i texture_set_interpolation(argc=1)
popz.v
pushglb.v global.screen_border_active
conv.v.b
bf [3]

:[2]
pushglb.v global.screen_border_alpha
pushi.e 0
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
pushglb.v global.screen_border_id
call.i scr_draw_screen_border(argc=1)
popz.v
pushglb.v global.screen_border_alpha
pushi.e 1
cmp.i.v LT
bf [7]

:[6]
pushi.e 1
pushglb.v global.screen_border_alpha
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.wh
pushi.e 1
sub.i.v
pushloc.v local.ww
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
pushi.e 0
conv.i.v
call.i draw_enable_alphablend(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.window_scale
pushglb.v global.window_scale
pushloc.v local.yy
pushloc.v local.xx
pushbltn.v self.application_surface
call.i draw_surface_ext(argc=8)
popz.v
pushi.e 1
conv.i.v
call.i draw_enable_alphablend(argc=1)
popz.v
b [9]

:[8]
pushi.e 0
pop.v.i global.window_xofs
pushi.e 0
pop.v.i global.window_yofs

:[9]
push.v self.started
pushi.e 0
cmp.i.v LT
bf [12]

:[10]
push.v self.trophy_ts
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushbltn.v self.current_time
push.v self.trophy_ts
sub.v.v
pushi.e 2000
cmp.i.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 32
pop.v.i local.lineheight
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [16]

:[15]
pushi.e 36
pop.v.i local.lineheight

:[16]
push.s "trophy_install"@32966
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.line1
push.s "trophy_install_dot"@32968
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.dot
push.s "trophy_install_line2"@32970
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.line2
pushloc.v local.line1
pushloc.v local.dot
add.v.v
pushloc.v local.dot
add.v.v
pushloc.v local.dot
add.v.v
call.i string_width(argc=1)
pop.v.v local.width1
pushloc.v local.line2
call.i string_width(argc=1)
pop.v.v local.width2
pushloc.v local.width2
pushloc.v local.width1
call.i max(argc=2)
pop.v.v local.width
call.i window_get_width(argc=0)
pushi.e 10
sub.i.v
pushloc.v local.width
sub.v.v
pop.v.v local.xx
pushi.e 10
pop.v.i local.yy
pushi.e 0
pop.v.i local.i

:[17]
pushloc.v local.i
pushbltn.v self.current_time
push.v self.trophy_ts
sub.v.v
pushi.e 500
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 4
mod.i.v
cmp.v.v LT
bf [19]

:[18]
push.v local.line1
pushloc.v local.dot
add.v.v
pop.v.v local.line1
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [17]

:[19]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.line1
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
pushloc.v local.line2
pushloc.v local.yy
pushloc.v local.lineheight
add.v.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v

:[end]