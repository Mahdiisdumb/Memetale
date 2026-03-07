.localvar 0 arguments
.localvar 1 menu_max 1346
.localvar 2 vspacing 1347
.localvar 3 button_x 1348
.localvar 4 i 1349
.localvar 5 itext 1350
.localvar 6 xx 1351
.localvar 7 button 1352
.localvar 8 b 1353
.localvar 9 command 1354
.localvar 10 sprite 1355
.localvar 11 border_label 1362
.localvar 12 border_sel 1363

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
push.v self.weather
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
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
push.s "joyconfig_fun_winter"@31702
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

:[15]
push.v self.weather
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
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
push.s "joyconfig_fun_spring"@31704
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

:[17]
push.v self.weather
pushi.e 3
cmp.i.v EQ
bf [25]

:[18]
push.v self.extreme2
pushi.e 1
add.i.v
pop.v.v self.extreme2
push.v self.extreme2
pushi.e 240
cmp.i.v GTE
bf [24]

:[19]
push.v self.extreme
pushi.e 1
add.i.v
pop.v.v self.extreme
push.v self.extreme
pushi.e 1100
cmp.i.v GTE
bf [21]

:[20]
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 0
pop.v.i self.extreme
pushi.e 0
pop.v.i self.extreme2

:[24]
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
push.s "joyconfig_fun_summer"@31706
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

:[25]
push.v self.weather
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
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
push.s "joyconfig_fun_fall"@31708
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

:[27]
pushi.e 6
pop.v.i local.menu_max
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [30]

:[28]
pushi.e 2
pop.v.i local.menu_max
push.v 1575.j_ch
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i local.menu_max

:[30]
push.v self.menu_engage
pushi.e 0
cmp.i.v EQ
bf [86]

:[31]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [33]

:[32]
push.v self.menu
pushi.e 1
add.i.v
pop.v.v self.menu

:[33]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [35]

:[34]
push.v self.menu
pushi.e 1
sub.i.v
pop.v.v self.menu

:[35]
push.v self.menu
pushi.e 0
cmp.i.v LTE
bf [37]

:[36]
pushi.e 0
pop.v.i self.menu

:[37]
push.v self.menu
pushloc.v local.menu_max
cmp.v.v GTE
bf [39]

:[38]
pushloc.v local.menu_max
pop.v.v self.menu

:[39]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [41]

:[40]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [42]

:[41]
push.e 0

:[42]
bf [49]

:[43]
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [46]

:[44]
push.v self.menu
pushi.e 2
cmp.i.v GTE
bf [46]

:[45]
push.v self.menu
pushi.e 4
cmp.i.v LTE
b [47]

:[46]
push.e 0

:[47]
not.b
bf [49]

:[48]
pushi.e 1
pop.v.i self.menu_engage
pushi.e 1
pop.v.i self.js_buffer
pushi.e 4
pop.v.i self.buffer

:[49]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [62]

:[50]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [52]

:[51]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bt [56]

:[54]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [56]

:[55]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [57]

:[56]
push.e 1

:[57]
bf [61]

:[58]
pushglb.v global.language
push.s "en"@3390
cmp.s.v EQ
bf [60]

:[59]
push.s "ja"@3058
pop.v.s global.language
b [61]

:[60]
push.s "en"@3390
pop.v.s global.language

:[61]
pushi.e 0
pop.v.i self.menu_engage

:[62]
push.v self.menu
pushi.e 6
cmp.i.v EQ
bf [86]

:[63]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [65]

:[64]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bt [68]

:[67]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [69]

:[68]
push.e 1

:[69]
bf [77]

:[70]
push.v global.screen_border_id
push.e 1
add.i.v
pop.v.v global.screen_border_id
pushglb.v global.screen_border_id
push.v self.num_borders
cmp.v.v GT
bf [72]

:[71]
pushi.e 0
pop.v.i global.screen_border_id

:[72]
pushglb.v global.screen_border_id
pushi.e 0
cmp.i.v LT
bt [74]

:[73]
pushi.e -1
pushglb.v global.screen_border_id
conv.v.i
push.v [array]self.border_enabled
conv.v.b
b [75]

:[74]
push.e 1

:[75]
bf [70]

:[76]
pushi.e 0
pop.v.i global.screen_border_state
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_id
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_level
pushi.e 1
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v
b [85]

:[77]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [85]

:[78]
push.v global.screen_border_id
push.e 1
sub.i.v
pop.v.v global.screen_border_id
pushglb.v global.screen_border_id
pushi.e 0
cmp.i.v LT
bf [80]

:[79]
push.v self.num_borders
pop.v.v global.screen_border_id

:[80]
pushglb.v global.screen_border_id
pushi.e 0
cmp.i.v LT
bt [82]

:[81]
pushi.e -1
pushglb.v global.screen_border_id
conv.v.i
push.v [array]self.border_enabled
conv.v.b
b [83]

:[82]
push.e 1

:[83]
bf [78]

:[84]
pushi.e 0
pop.v.i global.screen_border_state
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_id
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_level
pushi.e 1
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v

:[85]
pushi.e 0
pop.v.i self.menu_engage

:[86]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [91]

:[90]
pushi.e 1
pop.v.i self.finish

:[91]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "settings_title"@31629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 10
conv.i.v
pushi.e 160
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
push.v self.menu
pushi.e 0
cmp.i.v NEQ
bf [93]

:[92]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [94]

:[93]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[94]
push.s "joyconfig_exit"@31675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 40
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v NEQ
bf [96]

:[95]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [97]

:[96]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[97]
push.s "settings_language"@31631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 70
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "settings_language_"@47682
pushglb.v global.language
add.v.s
call.i scr_gettext(argc=1)
pushi.e 70
conv.i.v
pushi.e 92
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [168]

:[98]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "settings_button"@31637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 18
pop.v.i local.vspacing
pushi.e 0
pop.v.i local.button_x
pushi.e 0
pop.v.i local.i

:[99]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [111]

:[100]
push.v self.menu
pushloc.v local.i
pushi.e 2
add.i.v
cmp.v.v EQ
bf [102]

:[101]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [103]

:[102]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[103]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [105]

:[104]
push.s "settings_button_confirm"@31639
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.itext
b [108]

:[105]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
push.s "settings_button_cancel"@31641
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.itext
b [108]

:[107]
push.s "settings_button_menu"@31643
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.itext

:[108]
pushloc.v local.itext
pushi.e 100
pushloc.v local.i
pushi.e 1
add.i.v
pushloc.v local.vspacing
mul.v.v
add.v.i
pushi.e 40
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 40
pushloc.v local.itext
call.i string_width(argc=1)
add.v.i
pop.v.v local.xx
pushloc.v local.xx
pushloc.v local.button_x
cmp.v.v GT
bf [110]

:[109]
pushloc.v local.xx
pop.v.v local.button_x

:[110]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [99]

:[111]
push.v local.button_x
pushi.e 15
add.i.v
pop.v.v local.button_x
pushi.e 0
pop.v.i local.i

:[112]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [144]

:[113]
push.v self.menu
pushloc.v local.i
pushi.e 2
add.i.v
cmp.v.v EQ
bf [115]

:[114]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [116]

:[115]
push.e 0

:[116]
bf [141]

:[117]
pushi.e -4
pop.v.i local.button
pushi.e 0
pop.v.i local.b

:[118]
pushi.e -1
pushloc.v local.b
conv.v.i
push.v [array]self.button_list
pushi.e -4
cmp.i.v NEQ
bf [122]

:[119]
pushi.e -1
pushloc.v local.b
conv.v.i
push.v [array]self.button_list
pushi.e 0
conv.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
bf [121]

:[120]
pushi.e -1
pushloc.v local.b
conv.v.i
push.v [array]self.button_list
pop.v.v local.button
b [122]

:[121]
push.v local.b
push.e 1
add.i.v
pop.v.v local.b
b [118]

:[122]
pushloc.v local.button
pushi.e -4
cmp.i.v NEQ
bf [141]

:[123]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [129]

:[124]
pushglb.v global.button1
pushloc.v local.button
cmp.v.v EQ
bf [126]

:[125]
pushglb.v global.button0
pop.v.v global.button1

:[126]
pushglb.v global.button2
pushloc.v local.button
cmp.v.v EQ
bf [128]

:[127]
pushglb.v global.button0
pop.v.v global.button2

:[128]
pushloc.v local.button
pop.v.v global.button0
b [140]

:[129]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [135]

:[130]
pushglb.v global.button0
pushloc.v local.button
cmp.v.v EQ
bf [132]

:[131]
pushglb.v global.button1
pop.v.v global.button0

:[132]
pushglb.v global.button2
pushloc.v local.button
cmp.v.v EQ
bf [134]

:[133]
pushglb.v global.button1
pop.v.v global.button2

:[134]
pushloc.v local.button
pop.v.v global.button1
b [140]

:[135]
pushglb.v global.button0
pushloc.v local.button
cmp.v.v EQ
bf [137]

:[136]
pushglb.v global.button2
pop.v.v global.button0

:[137]
pushglb.v global.button1
pushloc.v local.button
cmp.v.v EQ
bf [139]

:[138]
pushglb.v global.button2
pop.v.v global.button1

:[139]
pushloc.v local.button
pop.v.v global.button2

:[140]
pushi.e 4
pop.v.i self.buffer

:[141]
pushloc.v local.i
pushi.e 1
add.i.v
push.s "ZXC"@47683
conv.s.v
call.i string_char_at(argc=2)
pop.v.v local.command
pushi.e 0
conv.i.v
pushloc.v local.command
call.i scr_getbuttonsprite(argc=2)
pop.v.v local.sprite
pushloc.v local.sprite
pushi.e -4
cmp.i.v NEQ
bf [143]

:[142]
pushi.e 100
pushloc.v local.i
pushi.e 1
add.i.v
pushloc.v local.vspacing
mul.v.v
add.v.i
pushloc.v local.button_x
pushi.e 0
conv.i.v
pushloc.v local.sprite
call.i draw_sprite(argc=4)
popz.v

:[143]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [112]

:[144]
push.v self.r_buffer
pushi.e 0
cmp.i.v GT
bf [146]

:[145]
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
pushi.e 100
pushi.e 3
pushloc.v local.vspacing
mul.v.i
add.v.i
pushi.e 25
add.i.v
pushi.e 20
conv.i.v
call.i draw_text_transformed_color(argc=11)
popz.v
b [150]

:[146]
push.v self.menu
pushi.e 5
cmp.i.v NEQ
bf [148]

:[147]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [149]

:[148]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[149]
push.s "joyconfig_reset"@31694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 100
pushi.e 3
pushloc.v local.vspacing
mul.v.i
add.v.i
pushi.e 25
add.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[150]
push.v self.menu
pushi.e 5
cmp.i.v EQ
bf [152]

:[151]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [153]

:[152]
push.e 0

:[153]
bf [159]

:[154]
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
bf [158]

:[155]
push.v self.rrr
pushi.e 1
cmp.i.v EQ
bf [157]

:[156]
push.s "joyconfig_spaghetted"@31698
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.r_line
b [158]

:[157]
push.s "joyconfig_resetted"@31696
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.r_line

:[158]
pushglb.v global.default_button0
pop.v.v global.button0
pushglb.v global.default_button1
pop.v.v global.button1
pushglb.v global.default_button2
pop.v.v global.button2
pushglb.v global.default_analog_sense
pop.v.v global.analog_sense
pushglb.v global.default_analog_sense_sense
pop.v.v global.analog_sense_sense
pushglb.v global.default_joy_dir
pop.v.v global.joy_dir
pushi.e 0
pop.v.i self.menu_engage

:[159]
push.v self.menu
pushi.e 6
cmp.i.v NEQ
bf [161]

:[160]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [162]

:[161]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[162]
push.s "settings_border"@31647
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.border_label
pushloc.v local.border_label
pushi.e 100
pushi.e 3
pushloc.v local.vspacing
mul.v.i
add.v.i
pushi.e 50
add.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.screen_border_id
pushi.e 0
cmp.i.v EQ
bf [164]

:[163]
push.s "settings_border_none"@31649
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.border_sel
b [167]

:[164]
pushglb.v global.screen_border_id
pushi.e -1
cmp.i.v EQ
bf [166]

:[165]
push.s "@!%&"@47693
pop.v.s local.border_sel
b [167]

:[166]
push.s "settings_border_"@47694
pushglb.v global.screen_border_id
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v local.border_sel

:[167]
pushloc.v local.border_sel
pushi.e 100
pushi.e 3
pushloc.v local.vspacing
mul.v.i
add.v.i
pushi.e 50
add.i.v
pushi.e 20
pushloc.v local.border_label
call.i string_width(argc=1)
add.v.i
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v
b [173]

:[168]
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [173]

:[169]
push.v self.menu
pushi.e 2
cmp.i.v NEQ
bf [171]

:[170]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [172]

:[171]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[172]
push.s "settings_joyconfig"@31671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[173]
push.v self.intro
pushi.e 1
cmp.i.v EQ
bf [178]

:[174]
push.v self.rectile
pushi.e 16
cmp.i.v EQ
bf [176]

:[175]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.harp
call.i caster_play(argc=3)
popz.v

:[176]
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
bf [178]

:[177]
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

:[178]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [181]

:[179]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [181]

:[180]
push.v self.menu_engage
pushi.e 1
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [end]

:[183]
pushi.e 102
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.jc
pushi.e 0
push.v self.jc
conv.v.i
pop.v.i [stacktop]self.menu_engage
push.v self.buffer
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.buffer
push.v self.intro
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.intro
push.v self.rectile
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.rectile
push.v self.buffer
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.buffer
push.v self.weather
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.weather
push.v self.extreme
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.extreme
push.v self.extreme2
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.extreme2
push.v self.harp
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.harp
push.v self.weathermusic
push.v self.jc
conv.v.i
pop.v.v [stacktop]self.weathermusic
call.i instance_destroy(argc=0)
popz.v

:[end]