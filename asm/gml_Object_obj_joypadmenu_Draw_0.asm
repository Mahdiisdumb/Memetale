.localvar 0 arguments
.localvar 1 vspacing 1301
.localvar 2 button_x 1302
.localvar 3 xx 1304
.localvar 4 stext 1305
.localvar 5 analog_text_width 1307
.localvar 6 sensebar_x 1308

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.harp
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [13]

:[4]
push.s "music/harpnoise.ogg"@2828
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.harp
push.v self.weather
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.s "music/options_winter.ogg"@2825
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.weathermusic

:[6]
push.v self.weather
pushi.e 2
cmp.i.v EQ
bt [8]

:[7]
push.v self.weather
pushi.e 4
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.s "music/options_fall.ogg"@2826
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.weathermusic

:[11]
push.v self.weather
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
push.s "music/options_summer.ogg"@2827
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.weathermusic

:[13]
push.v self.menu_engage
pushi.e 0
cmp.i.v EQ
bf [35]

:[14]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [16]

:[15]
push.v self.menu
pushi.e 1
add.i.v
pop.v.v self.menu

:[16]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [18]

:[17]
pushi.e 5
pop.v.i self.menu

:[18]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [21]

:[19]
push.v self.menu
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
pushi.e 7
pop.v.i self.menu

:[21]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [23]

:[22]
push.v self.menu
pushi.e 1
sub.i.v
pop.v.v self.menu

:[23]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [25]

:[24]
pushi.e 3
pop.v.i self.menu

:[25]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [28]

:[26]
push.v self.menu
pushi.e 6
cmp.i.v EQ
bf [28]

:[27]
pushi.e 5
pop.v.i self.menu

:[28]
push.v self.menu
pushi.e 0
cmp.i.v LTE
bf [30]

:[29]
pushi.e 0
pop.v.i self.menu

:[30]
push.v self.menu
pushi.e 9
cmp.i.v GTE
bf [32]

:[31]
pushi.e 9
pop.v.i self.menu

:[32]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [35]

:[33]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [35]

:[34]
pushi.e 1
pop.v.i self.menu_engage
pushi.e 1
pop.v.i self.js_buffer
pushi.e 4
pop.v.i self.buffer

:[35]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
push.s "config.ini"@47633
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushglb.v global.button0
push.s "b0"@47634
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.button1
push.s "b1"@47636
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.button2
push.s "b2"@47637
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.analog_sense
push.s "as"@47639
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.joy_dir
push.s "jd"@47641
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 104
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sm
pushi.e 0
push.v self.sm
conv.v.i
pop.v.i [stacktop]self.menu_engage
push.v self.buffer
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.buffer
push.v self.intro
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.intro
push.v self.rectile
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.rectile
push.v self.buffer
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.buffer
push.v self.weather
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.weather
push.v self.extreme
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.extreme
push.v self.extreme2
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.extreme2
push.v self.harp
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.harp
push.v self.weathermusic
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.weathermusic
call.i instance_destroy(argc=0)
popz.v

:[40]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.weather
pushi.e 3
cmp.i.v NEQ
bf [42]

:[41]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "joyconfig_title"@31673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 10
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
b [43]

:[42]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "joyconfig_title"@31673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[43]
push.v self.menu
pushi.e 0
cmp.i.v NEQ
bf [45]

:[44]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [46]

:[45]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[46]
push.s "joyconfig_exit"@31675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 40
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 15
pop.v.i local.vspacing
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [48]

:[47]
pushi.e 16
pop.v.i local.vspacing

:[48]
pushi.e 0
pop.v.i local.button_x
pushi.e 1
pop.v.i self.i

:[49]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [62]

:[50]
push.v self.menu
push.v self.i
cmp.v.v NEQ
bf [52]

:[51]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [53]

:[52]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[53]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.s "joyconfig_button_confirm"@31676
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.itext

:[55]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
push.s "joyconfig_button_cancel"@31677
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.itext

:[57]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [59]

:[58]
push.s "joyconfig_button_menu"@31678
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.itext

:[59]
push.v self.itext
pushi.e 75
push.v self.i
pushi.e 1
sub.i.v
pushloc.v local.vspacing
mul.v.v
add.v.i
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 20
push.v self.itext
call.i string_width(argc=1)
add.v.i
pushi.e 10
add.i.v
pop.v.v local.xx
pushloc.v local.xx
pushloc.v local.button_x
cmp.v.v GT
bf [61]

:[60]
pushloc.v local.xx
pop.v.v local.button_x

:[61]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [49]

:[62]
push.s "settings_button_separator"@31645
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.stext
pushi.e 1
pop.v.i self.i

:[63]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [68]

:[64]
push.v self.menu
push.v self.i
cmp.v.v NEQ
bf [66]

:[65]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [67]

:[66]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[67]
pushloc.v local.stext
pushi.e 75
push.v self.i
pushi.e 1
sub.i.v
pushloc.v local.vspacing
mul.v.v
add.v.i
pushloc.v local.button_x
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [63]

:[68]
push.v local.button_x
pushloc.v local.stext
call.i string_width(argc=1)
add.v.v
pop.v.v local.button_x
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [100]

:[72]
push.i 16711680
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 90
conv.i.v
pushloc.v local.button_x
push.s "joyconfig_prompt_button"@31680
conv.s.v
call.i scr_gettext(argc=1)
call.i string_width(argc=1)
add.v.v
pushi.e 75
conv.i.v
pushloc.v local.button_x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.o_o
pushi.e 1
add.i.v
pop.v.v self.o_o
push.v self.o_o
pushi.e 16
cmp.i.v GTE
bf [74]

:[73]
pushi.e 0
pop.v.i self.o_o

:[74]
push.v self.o_o
pushi.e 8
cmp.i.v LTE
bf [76]

:[75]
push.s "joyconfig_prompt_button"@31680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 75
conv.i.v
pushloc.v local.button_x
call.i draw_text(argc=3)
popz.v

:[76]
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [78]

:[77]
push.v self.js_buffer
pushi.e 0
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [85]

:[80]
pushi.e 0
pop.v.i self.i

:[81]
push.v self.i
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v LT
bf [85]

:[82]
push.v self.i
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
bf [84]

:[83]
push.v self.i
pop.v.v global.button0
pushi.e 0
pop.v.i self.menu_engage
pushi.e 4
pop.v.i self.buffer
b [85]

:[84]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [81]

:[85]
push.v self.js_buffer
pushi.e 1
cmp.i.v EQ
bf [93]

:[86]
pushi.e 0
pop.v.i self.bt
pushi.e 0
pop.v.i self.i

:[87]
push.v self.i
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v LT
bf [91]

:[88]
push.v self.i
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
not.b
bf [90]

:[89]
push.v self.bt
pushi.e 1
add.i.v
pop.v.v self.bt

:[90]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [87]

:[91]
push.v self.bt
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v GTE
bf [93]

:[92]
pushi.e 0
pop.v.i self.js_buffer

:[93]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [99]

:[94]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bt [96]

:[95]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [97]

:[96]
push.e 1

:[97]
bf [99]

:[98]
pushi.e 0
pop.v.i self.menu_engage

:[99]
b [101]

:[100]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.button0
pushi.e 75
conv.i.v
pushloc.v local.button_x
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v

:[101]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [103]

:[102]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [131]

:[105]
push.i 16711680
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 90
pushi.e 1
pushloc.v local.vspacing
mul.v.i
add.v.i
pushloc.v local.button_x
push.s "joyconfig_prompt_button"@31680
conv.s.v
call.i scr_gettext(argc=1)
call.i string_width(argc=1)
add.v.v
pushi.e 75
pushi.e 1
pushloc.v local.vspacing
mul.v.i
add.v.i
pushloc.v local.button_x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.o_o
pushi.e 1
add.i.v
pop.v.v self.o_o
push.v self.o_o
pushi.e 16
cmp.i.v GTE
bf [107]

:[106]
pushi.e 0
pop.v.i self.o_o

:[107]
push.v self.o_o
pushi.e 8
cmp.i.v LTE
bf [109]

:[108]
push.s "joyconfig_prompt_button"@31680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 75
pushi.e 1
pushloc.v local.vspacing
mul.v.i
add.v.i
pushloc.v local.button_x
call.i draw_text(argc=3)
popz.v

:[109]
push.v self.js_buffer
pushi.e 0
cmp.i.v EQ
bf [116]

:[110]
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [116]

:[111]
pushi.e 0
pop.v.i self.i

:[112]
push.v self.i
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v LT
bf [116]

:[113]
push.v self.i
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
bf [115]

:[114]
push.v self.i
pop.v.v global.button1
pushi.e 0
pop.v.i self.menu_engage
b [116]

:[115]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [112]

:[116]
push.v self.js_buffer
pushi.e 1
cmp.i.v EQ
bf [124]

:[117]
pushi.e 0
pop.v.i self.bt
pushi.e 0
pop.v.i self.i

:[118]
push.v self.i
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v LT
bf [122]

:[119]
push.v self.i
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
not.b
bf [121]

:[120]
push.v self.bt
pushi.e 1
add.i.v
pop.v.v self.bt

:[121]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [118]

:[122]
push.v self.bt
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v GTE
bf [124]

:[123]
pushi.e 0
pop.v.i self.js_buffer

:[124]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [130]

:[125]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bt [127]

:[126]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [128]

:[127]
push.e 1

:[128]
bf [130]

:[129]
pushi.e 0
pop.v.i self.menu_engage

:[130]
b [132]

:[131]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.button1
pushi.e 75
pushi.e 1
pushloc.v local.vspacing
mul.v.i
add.v.i
pushloc.v local.button_x
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v

:[132]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [134]

:[133]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [164]

:[136]
push.i 16711680
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 90
pushi.e 2
pushloc.v local.vspacing
mul.v.i
add.v.i
pushloc.v local.button_x
push.s "joyconfig_prompt_button"@31680
conv.s.v
call.i scr_gettext(argc=1)
call.i string_width(argc=1)
add.v.v
pushi.e 75
pushi.e 2
pushloc.v local.vspacing
mul.v.i
add.v.i
pushloc.v local.button_x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.o_o
pushi.e 1
add.i.v
pop.v.v self.o_o
push.v self.o_o
pushi.e 16
cmp.i.v GTE
bf [138]

:[137]
pushi.e 0
pop.v.i self.o_o

:[138]
push.v self.o_o
pushi.e 8
cmp.i.v LTE
bf [140]

:[139]
push.s "joyconfig_prompt_button"@31680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 75
pushi.e 2
pushloc.v local.vspacing
mul.v.i
add.v.i
pushloc.v local.button_x
call.i draw_text(argc=3)
popz.v

:[140]
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [142]

:[141]
push.v self.js_buffer
pushi.e 0
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [149]

:[144]
pushi.e 0
pop.v.i self.i

:[145]
push.v self.i
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v LT
bf [149]

:[146]
push.v self.i
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
bf [148]

:[147]
push.v self.i
pop.v.v global.button2
pushi.e 0
pop.v.i self.menu_engage
b [149]

:[148]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [145]

:[149]
push.v self.js_buffer
pushi.e 1
cmp.i.v EQ
bf [157]

:[150]
pushi.e 0
pop.v.i self.bt
pushi.e 0
pop.v.i self.i

:[151]
push.v self.i
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v LT
bf [155]

:[152]
push.v self.i
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
not.b
bf [154]

:[153]
push.v self.bt
pushi.e 1
add.i.v
pop.v.v self.bt

:[154]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [151]

:[155]
push.v self.bt
push.v 1575.j_ch
call.i joystick_buttons(argc=1)
cmp.v.v GTE
bf [157]

:[156]
pushi.e 0
pop.v.i self.js_buffer

:[157]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [163]

:[158]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bt [160]

:[159]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [161]

:[160]
push.e 1

:[161]
bf [163]

:[162]
pushi.e 0
pop.v.i self.menu_engage

:[163]
b [165]

:[164]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.button2
pushi.e 75
pushi.e 2
pushloc.v local.vspacing
mul.v.i
add.v.i
pushloc.v local.button_x
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v

:[165]
push.v self.menu
pushi.e 5
cmp.i.v EQ
bf [167]

:[166]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [168]

:[167]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[168]
push.s "joyconfig_analog_sens"@31682
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 135
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "joyconfig_analog_sens"@31682
conv.s.v
call.i scr_gettext(argc=1)
call.i string_width(argc=1)
pop.v.v local.analog_text_width
pushi.e 20
pushloc.v local.analog_text_width
add.v.i
pushi.e 10
add.i.v
pop.v.v local.sensebar_x
push.v self.menu
pushi.e 5
cmp.i.v EQ
bf [170]

:[169]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [171]

:[170]
push.e 0

:[171]
bf [187]

:[172]
pushi.e 1
conv.i.v
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 135
conv.i.v
pushloc.v local.sensebar_x
pushi.e 0
conv.i.v
pushi.e 928
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 138
conv.i.v
pushloc.v local.sensebar_x
pushi.e 40
add.i.v
pushglb.v global.analog_sense
pushi.e 100
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 927
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [186]

:[173]
push.v 1575.right
conv.v.b
bf [175]

:[174]
push.v global.analog_sense
pushglb.v global.analog_sense_sense
sub.v.v
pop.v.v global.analog_sense

:[175]
push.v 1575.left
conv.v.b
bf [177]

:[176]
push.v global.analog_sense
pushglb.v global.analog_sense_sense
add.v.v
pop.v.v global.analog_sense

:[177]
pushglb.v global.analog_sense
push.d 0.4
cmp.d.v GTE
bf [179]

:[178]
push.d 0.4
pop.v.d global.analog_sense

:[179]
pushglb.v global.analog_sense
push.d 0.02
cmp.d.v LTE
bf [181]

:[180]
push.d 0.02
pop.v.d global.analog_sense

:[181]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bt [183]

:[182]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [184]

:[183]
push.e 1

:[184]
bf [186]

:[185]
pushi.e 0
pop.v.i self.menu_engage

:[186]
b [188]

:[187]
push.d 0.6
conv.d.v
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 135
conv.i.v
pushloc.v local.sensebar_x
pushi.e 0
conv.i.v
pushi.e 928
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.6
conv.d.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 138
conv.i.v
pushloc.v local.sensebar_x
pushi.e 40
add.i.v
pushglb.v global.analog_sense
pushi.e 100
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 927
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[188]
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [212]

:[189]
push.v self.menu
pushi.e 6
cmp.i.v EQ
bf [191]

:[190]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [192]

:[191]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[192]
pushloc.v local.analog_text_width
push.s "joyconfig_analog_sens_sq"@31684
conv.s.v
call.i scr_gettext(argc=1)
call.i string_width(argc=1)
div.v.v
pop.v.v self.scale
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.scale
push.s "joyconfig_analog_sens_sq"@31684
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 135
pushloc.v local.vspacing
add.v.i
pushi.e 20
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.menu
pushi.e 6
cmp.i.v EQ
bf [194]

:[193]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [195]

:[194]
push.e 0

:[195]
bf [211]

:[196]
pushi.e 1
conv.i.v
push.i 32768
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 135
pushloc.v local.vspacing
add.v.i
pushloc.v local.sensebar_x
pushi.e 0
conv.i.v
pushi.e 928
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 138
pushloc.v local.vspacing
add.v.i
pushloc.v local.sensebar_x
pushi.e 40
add.i.v
pushglb.v global.analog_sense_sense
pushi.e 200
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 927
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [210]

:[197]
push.v 1575.right
conv.v.b
bf [199]

:[198]
push.v global.analog_sense_sense
push.d 0.01
sub.d.v
pop.v.v global.analog_sense_sense

:[199]
push.v 1575.left
conv.v.b
bf [201]

:[200]
push.v global.analog_sense_sense
push.d 0.01
add.d.v
pop.v.v global.analog_sense_sense

:[201]
pushglb.v global.analog_sense_sense
push.d 0.2
cmp.d.v GTE
bf [203]

:[202]
push.d 0.2
pop.v.d global.analog_sense_sense

:[203]
pushglb.v global.analog_sense_sense
push.d 0.01
cmp.d.v LTE
bf [205]

:[204]
push.d 0.01
pop.v.d global.analog_sense_sense

:[205]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bt [207]

:[206]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [208]

:[207]
push.e 1

:[208]
bf [210]

:[209]
pushi.e 0
pop.v.i self.menu_engage

:[210]
b [212]

:[211]
push.d 0.6
conv.d.v
push.i 32768
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 135
pushloc.v local.vspacing
add.v.i
pushloc.v local.sensebar_x
pushi.e 0
conv.i.v
pushi.e 928
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.6
conv.d.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 138
pushloc.v local.vspacing
add.v.i
pushloc.v local.sensebar_x
pushi.e 40
add.i.v
pushglb.v global.analog_sense_sense
pushi.e 200
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 927
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[212]
push.v self.menu
pushi.e 7
cmp.i.v EQ
bf [214]

:[213]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [215]

:[214]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[215]
push.s "joyconfig_dir_choice"@31686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.joy_dir
pushi.e 0
cmp.i.v EQ
bf [217]

:[216]
push.s "joyconfig_dir_normal"@31688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v

:[217]
pushglb.v global.joy_dir
pushi.e 1
cmp.i.v EQ
bf [219]

:[218]
push.s "joyconfig_dir_analog"@31690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v

:[219]
pushglb.v global.joy_dir
pushi.e 2
cmp.i.v EQ
bf [221]

:[220]
push.s "joyconfig_dir_pov"@31692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v

:[221]
push.v self.menu
pushi.e 7
cmp.i.v EQ
bf [223]

:[222]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [228]

:[225]
push.v global.joy_dir
pushi.e 1
add.i.v
pop.v.v global.joy_dir
pushglb.v global.joy_dir
pushi.e 3
cmp.i.v GTE
bf [227]

:[226]
pushi.e 0
pop.v.i global.joy_dir

:[227]
pushi.e 0
pop.v.i self.menu_engage

:[228]
push.v self.r_buffer
pushi.e 0
cmp.i.v GT
bf [230]

:[229]
push.v self.r_buffer
pushi.e 1
sub.i.v
pop.v.v self.r_buffer
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pushi.e 10
push.v self.r_buffer
sub.v.i
pushi.e 10
conv.i.d
div.d.v
sub.v.i
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.r_line
pushi.e 170
pushloc.v local.vspacing
add.v.i
pushi.e 20
conv.i.v
call.i draw_text_transformed_color(argc=11)
popz.v
b [234]

:[230]
push.v self.menu
pushi.e 8
cmp.i.v EQ
bf [232]

:[231]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [233]

:[232]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[233]
push.s "joyconfig_reset"@31694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
pushloc.v local.vspacing
add.v.i
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[234]
push.v self.menu
pushi.e 8
cmp.i.v EQ
bf [236]

:[235]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [237]

:[236]
push.e 0

:[237]
bf [246]

:[238]
pushi.e 15
pop.v.i self.r_buffer
pushi.e 50
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rrr
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [242]

:[239]
push.v self.rrr
pushi.e 1
cmp.i.v EQ
bf [241]

:[240]
push.s "joyconfig_spaghetted"@31698
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.r_line
b [242]

:[241]
push.s "joyconfig_resetted"@31696
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.r_line

:[242]
pushi.e 2
pop.v.i global.button0
pushi.e 1
pop.v.i global.button1
pushi.e 4
pop.v.i global.button2
push.d 0.2
pop.v.d global.analog_sense
push.d 0.01
pop.v.d global.analog_sense_sense
pushi.e 0
pop.v.i global.joy_dir
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [245]

:[243]
push.v 1575.j_ch
call.i joystick_has_pov(argc=1)
conv.v.b
not.b
bf [245]

:[244]
pushi.e 1
pop.v.i global.joypad_dir

:[245]
pushi.e 0
pop.v.i self.menu_engage

:[246]
push.v self.menu
pushi.e 9
cmp.i.v EQ
bf [248]

:[247]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [249]

:[248]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[249]
push.s "joyconfig_test"@31700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
pushi.e 2
pushloc.v local.vspacing
mul.v.i
add.v.i
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.menu
pushi.e 9
cmp.i.v EQ
bf [251]

:[250]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [252]

:[251]
push.e 0

:[252]
bf [254]

:[253]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 289
conv.i.v
call.i room_goto(argc=1)
popz.v

:[254]
push.v self.weather
pushi.e 1
cmp.i.v EQ
bf [256]

:[255]
pushi.e 101
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.c
pushi.e 921
push.v self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
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
pushi.e 218
conv.i.v
pushi.e 250
conv.i.v
pushi.e 0
conv.i.v
pushi.e 923
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "joyconfig_test_winter"@47654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 120
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
pushi.e 220
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
call.i draw_text_transformed(argc=6)
popz.v

:[256]
push.v self.weather
pushi.e 2
cmp.i.v EQ
bf [258]

:[257]
pushi.e 101
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.c
pushi.e 922
push.v self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
call.i choose(argc=1)
push.v self.c
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
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
pushi.e 218
conv.i.v
pushi.e 250
conv.i.v
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 925
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "joyconfig_test_spring"@47655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 120
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
pushi.e 220
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
call.i draw_text_transformed(argc=6)
popz.v

:[258]
push.v self.weather
pushi.e 3
cmp.i.v EQ
bf [266]

:[259]
push.v self.extreme2
pushi.e 1
add.i.v
pop.v.v self.extreme2
push.v self.extreme2
pushi.e 240
cmp.i.v GTE
bf [265]

:[260]
push.v self.extreme
pushi.e 1
add.i.v
pop.v.v self.extreme
push.v self.extreme
pushi.e 1100
cmp.i.v GTE
bf [262]

:[261]
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [263]

:[262]
push.e 0

:[263]
bf [265]

:[264]
pushi.e 0
pop.v.i self.extreme
pushi.e 0
pop.v.i self.extreme2

:[265]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
push.v self.extreme
pushi.e 900
conv.i.d
div.d.v
add.v.d
mul.v.v
sub.v.i
pushi.e 2
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
push.v self.extreme
pushi.e 900
conv.i.d
div.d.v
add.v.d
mul.v.v
add.v.i
pushi.e 225
conv.i.v
pushi.e 250
conv.i.v
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 926
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 28
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 40
push.v self.siner
pushi.e 18
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.i
pushi.e 258
push.v self.siner
pushi.e 18
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
add.v.i
call.i draw_circle(argc=4)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "joyconfig_test_summer"@47656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 120
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
pushi.e 220
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
call.i draw_text_transformed(argc=6)
popz.v

:[266]
push.v self.weather
pushi.e 4
cmp.i.v EQ
bf [268]

:[267]
pushi.e 101
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.c
pushi.e 922
push.v self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 255
conv.i.v
push.i 4235519
conv.i.v
push.i 65535
conv.i.v
call.i choose(argc=3)
push.v self.c
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
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
pushi.e 218
conv.i.v
pushi.e 250
conv.i.v
pushi.e 0
conv.i.v
pushi.e 924
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "joyconfig_test_fall"@47657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 120
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
pushi.e 220
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
call.i draw_text_transformed(argc=6)
popz.v

:[268]
push.v self.intro
pushi.e 1
cmp.i.v EQ
bf [end]

:[269]
push.v self.rectile
pushi.e 16
cmp.i.v EQ
bf [271]

:[270]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.harp
call.i caster_play(argc=3)
popz.v

:[271]
push.v self.rectile
pushi.e 4
add.i.v
pop.v.v self.rectile
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 250
conv.i.v
pushi.e -1
conv.i.v
pushi.e -10
conv.i.v
pushi.e 168
push.v self.rectile
sub.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 250
conv.i.v
pushi.e 330
conv.i.v
pushi.e -10
conv.i.v
pushi.e 152
push.v self.rectile
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.rectile
pushi.e 170
cmp.i.v GTE
bf [end]

:[272]
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.weathermusic
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i self.menu_engage
pushi.e 5
pop.v.i self.buffer
pushi.e -1
pop.v.i self.intro

:[end]