.localvar 0 arguments
.localvar 1 yy 1522
.localvar 2 xx 1523
.localvar 3 xx2 1524
.localvar 4 i 1525
.localvar 5 name 1526
.localvar 6 limit 1527
.localvar 7 suffix 1528
.localvar 8 this_x 1529

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.number
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.number
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "credits_short_160"@32013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 90
conv.i.v
pushi.e 160
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v

:[4]
push.v self.number
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_165"@32015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 30
conv.i.v
pushi.e 86
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 130
pop.v.i local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [7]

:[6]
pushi.e 140
pop.v.i local.yy

:[7]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "credits_short_167"@32017
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushi.e 40
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v

:[8]
push.v self.number
pushi.e 2
cmp.i.v EQ
bf [12]

:[9]
pushi.e 60
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [11]

:[10]
pushi.e 32
pop.v.i local.xx

:[11]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_173"@32019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 22
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_175"@32021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 58
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_178"@32023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 88
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_180"@32025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 106
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_183"@32027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 136
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_185"@32028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 154
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_186"@32030
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 184
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_187"@32032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 202
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v

:[12]
push.v self.number
pushi.e 3
cmp.i.v EQ
bf [16]

:[13]
pushi.e 60
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [15]

:[14]
pushi.e 32
pop.v.i local.xx

:[15]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_193"@32034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 24
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_195"@32036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 44
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_199"@32038
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 104
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_201"@32040
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 124
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
neg.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_205"@32042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 164
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_207"@32044
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 184
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v

:[16]
push.v self.number
pushi.e 4
cmp.i.v EQ
bf [20]

:[17]
pushi.e 60
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [19]

:[18]
pushi.e 32
pop.v.i local.xx

:[19]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_219"@32046
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 20
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_221"@32048
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 55
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_224"@32050
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 95
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_226"@32052
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 115
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_229"@32054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 165
conv.i.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_231"@32056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 185
conv.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v

:[20]
push.v self.number
pushi.e 5
cmp.i.v EQ
bf [30]

:[21]
pushi.e 60
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [23]

:[22]
pushi.e 32
pop.v.i local.xx

:[23]
pushi.e 24
pop.v.i local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [25]

:[24]
pushi.e 14
pop.v.i local.yy

:[25]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_240"@32058
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_242"@32060
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushi.e 20
add.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
pushi.e 135
pop.v.i local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [27]

:[26]
pushi.e 147
pop.v.i local.yy

:[27]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_246"@32062
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_248"@32064
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushi.e 20
add.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
pushi.e 185
pop.v.i local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [29]

:[28]
pushi.e 191
pop.v.i local.yy

:[29]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_251"@32066
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_253"@32068
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushi.e 20
add.i.v
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v

:[30]
push.v self.number
pushi.e 6
cmp.i.v EQ
bf [45]

:[31]
pushi.e 60
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [33]

:[32]
pushi.e 32
pop.v.i local.xx

:[33]
pushi.e 30
pop.v.i local.yy
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [35]

:[34]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v NEQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 22
pop.v.i local.yy

:[38]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [43]

:[39]
push.s "credits_short_loc1_1_console"@32072
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [41]

:[40]
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
b [42]

:[41]
push.v local.yy
pushi.e 36
add.i.v
pop.v.v local.yy

:[42]
b [44]

:[43]
push.s "credits_short_loc1_1"@32070
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy

:[44]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc1_1a"@32074
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 28
add.i.v
pop.v.v local.yy
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc1_2"@32076
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc1_2a"@32078
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 28
add.i.v
pop.v.v local.yy
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc1_3"@32080
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc1_3a"@32082
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 28
add.i.v
pop.v.v local.yy
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc1_4"@32084
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc1_4a"@32086
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 28
add.i.v
pop.v.v local.yy

:[45]
push.v self.number
pushi.e 7
cmp.i.v EQ
bf [57]

:[46]
pushi.e 60
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [48]

:[47]
pushi.e 32
pop.v.i local.xx

:[48]
pushi.e 200
pop.v.i local.xx2
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [50]

:[49]
pushi.e 190
pop.v.i local.xx2

:[50]
pushi.e 42
pop.v.i local.yy
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [52]

:[51]
pushi.e 24
pop.v.i local.yy

:[52]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc2_1"@32088
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [54]

:[53]
push.s "credits_short_loc2_1a"@32090
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.s "credits_short_loc2_1b"@32092
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx2
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.s "credits_short_loc2_1c"@32094
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.s "credits_short_loc2_1d"@32096
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx2
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
b [55]

:[54]
push.s "credits_short_loc2_1a"@32090
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.s "credits_short_loc2_1b"@32092
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.s "credits_short_loc2_1c"@32094
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.s "credits_short_loc2_1d"@32096
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy

:[55]
push.v local.yy
pushi.e 10
add.i.v
pop.v.v local.yy
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc2_2"@32098
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc2_2a"@32100
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 28
add.i.v
pop.v.v local.yy
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [57]

:[56]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc2_3"@32102
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc2_3a"@32104
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 28
add.i.v
pop.v.v local.yy
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc2_4"@32106
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_loc2_4a"@32107
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 28
add.i.v
pop.v.v local.yy

:[57]
push.v self.number
push.d 7.5
cmp.d.v EQ
bf [64]

:[58]
pushi.e 60
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [60]

:[59]
pushi.e 32
pop.v.i local.xx

:[60]
pushi.e 24
pop.v.i local.yy
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_test_0"@32109
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[61]
pushloc.v local.i
pushi.e 11
cmp.i.v LT
bf [63]

:[62]
push.s "credits_short_test_"@47767
pushloc.v local.i
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v local.name
pushloc.v local.name
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.yy
pushi.e 16
add.i.v
pop.v.v local.yy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [61]

:[63]
pushi.e 14
conv.i.v
call.i scr_setfont(argc=1)
popz.v

:[64]
push.v self.number
pushi.e 8
cmp.i.v EQ
bf [82]

:[65]
pushi.e 60
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [67]

:[66]
pushi.e 32
pop.v.i local.xx

:[67]
pushloc.v local.xx
pushi.e 100
add.i.v
pop.v.v local.xx2
pushi.e 44
pop.v.i local.yy
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [69]

:[68]
pushi.e 22
pop.v.i local.yy

:[69]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "credits_short_thanks_0"@32132
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [71]

:[70]
pushi.e 14
pop.v.i local.limit
push.s "_console"@47769
pop.v.s local.suffix
b [72]

:[71]
pushi.e 12
pop.v.i local.limit
push.s ""@36
pop.v.s local.suffix

:[72]
pushi.e 1
pop.v.i local.i

:[73]
pushloc.v local.i
pushloc.v local.limit
cmp.v.v LTE
bf [79]

:[74]
pushloc.v local.xx
pop.v.v local.this_x
pushloc.v local.i
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [76]

:[75]
pushloc.v local.xx2
pop.v.v local.this_x

:[76]
push.s "credits_short_thanks_"@47772
pushloc.v local.i
call.i string(argc=1)
add.v.s
pushloc.v local.suffix
add.v.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.this_x
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
pushloc.v local.i
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
push.v local.yy
pushi.e 16
add.i.v
pop.v.v local.yy

:[78]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [73]

:[79]
pushi.e 1
pop.v.i local.i

:[80]
pushloc.v local.i
pushi.e 2
cmp.i.v LTE
bf [82]

:[81]
push.s "credits_short_thanks_last_"@47773
pushloc.v local.i
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
pushi.e 30
add.i.v
call.i scr_credits_short_draw_name(argc=3)
popz.v
push.v local.yy
pushi.e 16
add.i.v
pop.v.v local.yy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [80]

:[82]
push.v self.won
pushi.e 1
cmp.i.v GTE
bf [end]

:[83]
pushi.e 0
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [end]

:[84]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 20
cmp.i.v GT
bf [end]

:[85]
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]