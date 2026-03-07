.localvar 0 arguments
.localvar 1 xx 245
.localvar 2 kana_count 247
.localvar 3 i 248
.localvar 4 Won 252
.localvar 5 CP 253
.localvar 6 CH 254
.localvar 7 confirm 260
.localvar 8 row 261
.localvar 9 yy 264
.localvar 10 col 265
.localvar 11 menu_text0 271
.localvar 12 menu_text1 274
.localvar 13 menu_text2 276
.localvar 14 charset_text0 278
.localvar 15 charset_text1 281
.localvar 16 charset_text2 283
.localvar 17 old_col 285
.localvar 18 best 286
.localvar 19 bestdiff 287
.localvar 20 diff 288
.localvar 21 roomname 311
.localvar 22 lvtext 313
.localvar 23 timetext 314
.localvar 24 namesize 316
.localvar 25 lvsize 317
.localvar 26 timesize 318
.localvar 27 x_center 319
.localvar 28 lvpos 320
.localvar 29 namepos 321
.localvar 30 timepos 322
.localvar 31 continue_text 324
.localvar 32 reset_text 326
.localvar 33 action 328
.localvar 34 lines 330
.localvar 35 num_lines 331
.localvar 36 label_x 332
.localvar 37 key 333
.localvar 38 label 334
.localvar 39 yy2 335

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.naming
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
push.v self.charname
pop.v.v global.charname
pushi.e 151
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i self.alerm
pushi.e 5
pop.v.i self.naming
push.s "music/cymbal.ogg"@2624
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cy
push.d 0.95
conv.d.v
push.d 0.8
conv.d.v
push.v self.cy
call.i caster_play(argc=3)
popz.v

:[2]
push.v self.naming
pushi.e 5
cmp.i.v EQ
bf [31]

:[3]
push.v self.alerm
pushi.e 1
add.i.v
pop.v.v self.alerm
push.v self.q
pushi.e 120
cmp.i.v LT
bf [5]

:[4]
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q

:[5]
push.v self.name_x
push.v self.q
pushi.e 3
conv.i.d
div.d.v
sub.v.v
pop.v.v local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [13]

:[6]
pushi.e 0
pop.v.i local.kana_count
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
push.v self.charname
call.i strlen(argc=1)
cmp.v.v LT
bf [11]

:[8]
pushloc.v local.i
push.v self.charname
call.i string_char_at(argc=2)
call.i ord(argc=1)
pushi.e 12288
cmp.i.v GTE
bf [10]

:[9]
push.v local.kana_count
push.e 1
add.i.v
pop.v.v local.kana_count

:[10]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [7]

:[11]
pushloc.v local.kana_count
pushi.e 1
cmp.i.v GT
bf [13]

:[12]
push.v local.xx
pushloc.v local.kana_count
pushi.e 1
sub.i.v
push.v self.q
pushi.e 10
conv.i.d
div.d.v
mul.v.v
sub.v.v
pop.v.v local.xx

:[13]
push.v self.r
push.v self.q
mul.v.v
pushi.e 60
conv.i.d
div.d.v
push.v self.r
neg.v
push.v self.q
mul.v.v
pushi.e 60
conv.i.d
div.d.v
call.i random_ranger(argc=2)
pushi.e 1
push.v self.q
pushi.e 50
conv.i.d
div.d.v
add.v.i
pushi.e 1
push.v self.q
pushi.e 50
conv.i.d
div.d.v
add.v.i
push.v self.charname
push.v self.q
pushi.e 2
conv.i.d
div.d.v
push.v self.name_y
add.v.v
push.v self.r
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
pushloc.v local.xx
push.v self.r
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.alerm
pushi.e 179
cmp.i.v GT
bf [31]

:[14]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.truereset
pushi.e 0
cmp.i.v GT
bf [26]

:[15]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "s_key"@3067
conv.s.v
push.s "reset"@3068
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.sk
pushi.e 0
conv.i.v
push.s "Won"@3070
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.Won
pushi.e 0
conv.i.v
push.s "CP"@3072
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.CP
pushi.e 0
conv.i.v
push.s "CH"@3073
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.CH
call.i ossafe_ini_close(argc=0)
popz.v
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [17]

:[16]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[17]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "reset"@3068
conv.s.v
push.s "reset"@3068
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.v self.sk
pushi.e 0
cmp.i.v NEQ
bf [19]

:[18]
push.v self.sk
push.s "s_key"@3067
conv.s.v
push.s "reset"@3068
conv.s.v
call.i ini_write_real(argc=3)
popz.v

:[19]
pushloc.v local.Won
pushi.e 0
cmp.i.v NEQ
bf [21]

:[20]
pushloc.v local.Won
push.s "BW"@3076
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v

:[21]
pushloc.v local.CP
pushi.e 0
cmp.i.v NEQ
bf [23]

:[22]
pushloc.v local.CP
push.s "BP"@3077
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v

:[23]
pushloc.v local.CH
pushi.e 0
cmp.i.v NEQ
bf [25]

:[24]
pushloc.v local.CH
push.s "BH"@3078
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v

:[25]
call.i ossafe_ini_close(argc=0)
popz.v

:[26]
push.v self.cy
call.i caster_free(argc=1)
popz.v
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 1
add.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]global.flag
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e -5
pushi.e 5
push.v [array]global.flag
push.s "fun"@3079
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 1575
pushenv [28]

:[27]
pushi.e 0
pop.v.i self.time

:[28]
popenv [27]
push.v self.charname
call.i scr_hardmodename(argc=1)
conv.v.b
bf [30]

:[29]
pushi.e 1
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag

:[30]
call.i room_goto_next(argc=0)
popz.v

:[31]
push.v self.naming
pushi.e 2
cmp.i.v EQ
bf [86]

:[32]
push.v self.charname
push.s ""@36
cmp.s.v EQ
bf [34]

:[33]
push.s "name_entry_missing"@3083
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.spec_m
pushi.e 0
pop.v.i self.allow
b [43]

:[34]
push.v self.charname
call.i scr_hardmodename(argc=1)
conv.v.b
bf [36]

:[35]
push.s "name_entry_hardmode"@3086
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.spec_m
pushi.e 1
pop.v.i self.allow
b [43]

:[36]
push.v self.hasname
pushi.e 1
cmp.i.v EQ
bf [39]

:[37]
push.v self.truereset
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushglb.v global.charname
call.i scr_hardmodename(argc=1)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.s "name_entry_already"@3088
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.spec_m
pushi.e 1
pop.v.i self.allow
b [43]

:[42]
push.v self.charname
call.i scr_namingscreen_check(argc=1)
popz.v

:[43]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [45]

:[44]
push.v self.selected2
pushi.e 0
cmp.i.v GTE
b [46]

:[45]
push.e 0

:[46]
pop.v.b local.confirm
pushloc.v local.confirm
conv.v.b
bf [61]

:[47]
push.v self.allow
conv.v.b
bf [53]

:[48]
push.v self.selected2
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.v self.charname
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 4
pop.v.i self.naming

:[53]
push.v self.selected2
pushi.e 0
cmp.i.v EQ
bf [60]

:[54]
push.v self.hasname
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.v self.truereset
pushi.e 0
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 3
pop.v.i self.naming
b [60]

:[59]
pushi.e 1
pop.v.i self.naming

:[60]
exit.i

:[61]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.q
pushi.e 120
cmp.i.v LT
bf [63]

:[62]
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q

:[63]
push.v self.name_x
push.v self.q
pushi.e 3
conv.i.d
div.d.v
sub.v.v
pop.v.v local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [71]

:[64]
pushi.e 0
pop.v.i local.kana_count
pushi.e 0
pop.v.i local.i

:[65]
pushloc.v local.i
push.v self.charname
call.i strlen(argc=1)
cmp.v.v LT
bf [69]

:[66]
pushloc.v local.i
push.v self.charname
call.i string_char_at(argc=2)
call.i ord(argc=1)
pushi.e 12288
cmp.i.v GTE
bf [68]

:[67]
push.v local.kana_count
push.e 1
add.i.v
pop.v.v local.kana_count

:[68]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[69]
pushloc.v local.kana_count
pushi.e 1
cmp.i.v GT
bf [71]

:[70]
push.v local.xx
pushloc.v local.kana_count
pushi.e 1
sub.i.v
push.v self.q
pushi.e 10
conv.i.d
div.d.v
mul.v.v
sub.v.v
pop.v.v local.xx

:[71]
push.v self.r
push.v self.q
mul.v.v
pushi.e 60
conv.i.d
div.d.v
push.v self.r
neg.v
push.v self.q
mul.v.v
pushi.e 60
conv.i.d
div.d.v
call.i random_ranger(argc=2)
pushi.e 1
push.v self.q
pushi.e 50
conv.i.d
div.d.v
add.v.i
pushi.e 1
push.v self.q
pushi.e 50
conv.i.d
div.d.v
add.v.i
push.v self.charname
push.v self.q
pushi.e 2
conv.i.d
div.d.v
push.v self.name_y
add.v.v
push.v self.r
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
pushloc.v local.xx
push.v self.r
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.spec_m
pushi.e 30
conv.i.v
pushi.e 90
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.allow
conv.v.b
bf [77]

:[72]
push.v self.selected2
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[74]
push.s "no"@3095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 200
conv.i.v
pushi.e 80
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected2
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[76]
push.s "yes"@3097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 200
conv.i.v
pushi.e 240
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v
b [78]

:[77]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "name_entry_goback"@3098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 200
conv.i.v
pushi.e 80
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[78]
push.v self.allow
conv.v.b
bf [86]

:[79]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [81]

:[80]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [82]

:[81]
push.e 1

:[82]
bf [86]

:[83]
push.v self.selected2
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
pushi.e 0
pop.v.i self.selected2
b [86]

:[85]
pushi.e 1
pop.v.i self.selected2

:[86]
push.v self.naming
pushi.e 1
cmp.i.v EQ
bf [239]

:[87]
pushi.e 0
pop.v.i self.q
push.d 0.5
pop.v.d self.r
pushi.e 0
pop.v.i local.row

:[88]
pushloc.v local.row
push.v self.rows
cmp.v.v LT
bf [99]

:[89]
pushi.e -1
pushloc.v local.row
conv.v.i
push.v [array]self.ymap
pop.v.v local.yy
pushi.e 0
pop.v.i local.col

:[90]
pushloc.v local.col
push.v self.cols
cmp.v.v LT
bf [98]

:[91]
pushi.e -1
pushloc.v local.col
conv.v.i
push.v [array]self.xmap
pop.v.v local.xx
push.v self.selected_row
pushloc.v local.row
cmp.v.v EQ
bf [93]

:[92]
push.v self.selected_col
pushloc.v local.col
cmp.v.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [97]

:[96]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[97]
pushi.e -1
pushloc.v local.row
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.col
conv.v.i
chkindex.e
add.i.i
push.v [array]self.charmap
pushloc.v local.yy
push.v self.r
call.i random(argc=1)
add.v.v
pushloc.v local.xx
push.v self.r
call.i random(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.v local.col
push.e 1
add.i.v
pop.v.v local.col
b [90]

:[98]
push.v local.row
push.e 1
add.i.v
pop.v.v local.row
b [88]

:[99]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected_row
pushi.e -1
cmp.i.v EQ
bf [101]

:[100]
push.v self.selected_col
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[104]
push.s "name_entry_quit"@3110
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.menu_text0
pushloc.v local.menu_text0
push.v self.menu_y
push.v self.menu_x0
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected_row
pushi.e -1
cmp.i.v EQ
bf [106]

:[105]
push.v self.selected_col
pushi.e 1
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[109]
push.s "name_entry_backspace"@3114
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.menu_text1
pushloc.v local.menu_text1
push.v self.menu_y
push.v self.menu_x1
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected_row
pushi.e -1
cmp.i.v EQ
bf [111]

:[110]
push.v self.selected_col
pushi.e 2
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[114]
push.s "name_entry_done"@3117
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.menu_text2
pushloc.v local.menu_text2
push.v self.menu_y
push.v self.menu_x2
call.i draw_text(argc=3)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [131]

:[115]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected_row
pushi.e -2
cmp.i.v EQ
bf [117]

:[116]
push.v self.selected_col
pushi.e 0
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[120]
push.s "ひらがな"@3120
pop.v.s local.charset_text0
pushloc.v local.charset_text0
push.v self.charset_y
push.v self.charset_x0
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected_row
pushi.e -2
cmp.i.v EQ
bf [122]

:[121]
push.v self.selected_col
pushi.e 1
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [125]

:[124]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[125]
push.s "カタカナ"@3124
pop.v.s local.charset_text1
pushloc.v local.charset_text1
push.v self.charset_y
push.v self.charset_x1
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected_row
pushi.e -2
cmp.i.v EQ
bf [127]

:[126]
push.v self.selected_col
pushi.e 2
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[130]
push.s "アルファベット"@3127
pop.v.s local.charset_text2
pushloc.v local.charset_text2
push.v self.charset_y
push.v self.charset_x2
call.i draw_text(argc=3)
popz.v

:[131]
push.v self.selected_col
pop.v.v local.old_col

:[132]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [142]

:[133]
push.v self.selected_col
push.e 1
add.i.v
pop.v.v self.selected_col
push.v self.selected_row
pushi.e -1
cmp.i.v EQ
bf [137]

:[134]
push.v self.selected_col
pushi.e 2
cmp.i.v GT
bf [136]

:[135]
pushi.e 0
pop.v.i self.selected_col

:[136]
b [142]

:[137]
push.v self.selected_col
push.v self.cols
cmp.v.v GTE
bf [142]

:[138]
push.v self.selected_row
push.v self.rows
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [141]

:[139]
pushloc.v local.old_col
pop.v.v self.selected_col
b [211]

:[140]
b [142]

:[141]
pushi.e 0
pop.v.i self.selected_col
push.v self.selected_row
push.e 1
add.i.v
pop.v.v self.selected_row

:[142]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [149]

:[143]
push.v self.selected_col
push.e 1
sub.i.v
pop.v.v self.selected_col
push.v self.selected_col
pushi.e 0
cmp.i.v LT
bf [149]

:[144]
push.v self.selected_row
pushi.e 0
cmp.i.v EQ
bf [146]

:[145]
pushi.e 0
pop.v.i self.selected_col
b [149]

:[146]
push.v self.selected_row
pushi.e 0
cmp.i.v GT
bf [148]

:[147]
push.v self.cols
pushi.e 1
sub.i.v
pop.v.v self.selected_col
push.v self.selected_row
push.e 1
sub.i.v
pop.v.v self.selected_row
b [149]

:[148]
pushi.e 2
pop.v.i self.selected_col

:[149]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [174]

:[150]
push.v self.selected_row
pushi.e -1
cmp.i.v EQ
bf [161]

:[151]
pushi.e 0
pop.v.i self.selected_row
push.v self.menu_x0
pop.v.v local.xx
push.v self.selected_col
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
push.v self.menu_x1
pop.v.v local.xx

:[153]
push.v self.selected_col
pushi.e 2
cmp.i.v EQ
bf [155]

:[154]
push.v self.menu_x2
pop.v.v local.xx

:[155]
pushi.e 0
pop.v.i local.best
pushi.e -1
pushi.e 0
push.v [array]self.xmap
pushloc.v local.xx
sub.v.v
call.i abs(argc=1)
pop.v.v local.bestdiff
pushi.e 1
pop.v.i local.i

:[156]
pushloc.v local.i
push.v self.cols
cmp.v.v LT
bf [160]

:[157]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.xmap
pushloc.v local.xx
sub.v.v
call.i abs(argc=1)
pop.v.v local.diff
pushloc.v local.diff
pushloc.v local.bestdiff
cmp.v.v LT
bf [159]

:[158]
pushloc.v local.i
pop.v.v local.best
pushloc.v local.diff
pop.v.v local.bestdiff

:[159]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [156]

:[160]
pushloc.v local.best
pop.v.v self.selected_col
b [174]

:[161]
push.v self.selected_row
push.e 1
add.i.v
pop.v.v self.selected_row
push.v self.selected_row
push.v self.rows
cmp.v.v GTE
bf [174]

:[162]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [169]

:[163]
pushi.e -2
pop.v.i self.selected_row
pushi.e -1
push.v self.selected_col
conv.v.i
push.v [array]self.xmap
pop.v.v local.xx
pushloc.v local.xx
push.v self.charset_x2
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [165]

:[164]
pushi.e 2
pop.v.i self.selected_col
b [168]

:[165]
pushloc.v local.xx
push.v self.charset_x1
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [167]

:[166]
pushi.e 1
pop.v.i self.selected_col
b [168]

:[167]
pushi.e 0
pop.v.i self.selected_col

:[168]
b [174]

:[169]
pushi.e -1
pop.v.i self.selected_row
pushi.e -1
push.v self.selected_col
conv.v.i
push.v [array]self.xmap
pop.v.v local.xx
pushloc.v local.xx
push.v self.menu_x2
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [171]

:[170]
pushi.e 2
pop.v.i self.selected_col
b [174]

:[171]
pushloc.v local.xx
push.v self.menu_x1
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [173]

:[172]
pushi.e 1
pop.v.i self.selected_col
b [174]

:[173]
pushi.e 0
pop.v.i self.selected_col

:[174]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [206]

:[175]
push.v self.selected_row
pushi.e -2
cmp.i.v EQ
bf [186]

:[176]
push.v self.rows
pushi.e 1
sub.i.v
pop.v.v self.selected_row
push.v self.selected_col
pushi.e 0
cmp.i.v GT
bf [185]

:[177]
push.v self.charset_x1
pop.v.v local.xx
push.v self.selected_col
pushi.e 2
cmp.i.v EQ
bf [179]

:[178]
push.v self.charset_x2
pop.v.v local.xx

:[179]
pushi.e 0
pop.v.i local.best
pushi.e -1
pushi.e 0
push.v [array]self.xmap
pushloc.v local.xx
sub.v.v
call.i abs(argc=1)
pop.v.v local.bestdiff
pushi.e 1
pop.v.i local.i

:[180]
pushloc.v local.i
push.v self.cols
cmp.v.v LT
bf [184]

:[181]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.xmap
pushloc.v local.xx
sub.v.v
call.i abs(argc=1)
pop.v.v local.diff
pushloc.v local.diff
pushloc.v local.bestdiff
cmp.v.v LT
bf [183]

:[182]
pushloc.v local.i
pop.v.v local.best
pushloc.v local.diff
pop.v.v local.bestdiff

:[183]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [180]

:[184]
pushloc.v local.best
pop.v.v self.selected_col

:[185]
b [206]

:[186]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v NEQ
bf [188]

:[187]
push.v self.selected_row
pushi.e -1
cmp.i.v EQ
b [189]

:[188]
push.e 0

:[189]
bf [200]

:[190]
push.v self.rows
pushi.e 1
sub.i.v
pop.v.v self.selected_row
push.v self.selected_col
pushi.e 0
cmp.i.v GT
bf [199]

:[191]
push.v self.menu_x1
pop.v.v local.xx
push.v self.selected_col
pushi.e 2
cmp.i.v EQ
bf [193]

:[192]
push.v self.menu_x2
pop.v.v local.xx

:[193]
pushi.e 0
pop.v.i local.best
pushi.e -1
pushi.e 0
push.v [array]self.xmap
pushloc.v local.xx
sub.v.v
call.i abs(argc=1)
pop.v.v local.bestdiff
pushi.e 1
pop.v.i local.i

:[194]
pushloc.v local.i
push.v self.cols
cmp.v.v LT
bf [198]

:[195]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.xmap
pushloc.v local.xx
sub.v.v
call.i abs(argc=1)
pop.v.v local.diff
pushloc.v local.diff
pushloc.v local.bestdiff
cmp.v.v LT
bf [197]

:[196]
pushloc.v local.i
pop.v.v local.best
pushloc.v local.diff
pop.v.v local.bestdiff

:[197]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [194]

:[198]
pushloc.v local.best
pop.v.v self.selected_col

:[199]
b [206]

:[200]
push.v self.selected_row
push.e 1
sub.i.v
pop.v.v self.selected_row
push.v self.selected_row
pushi.e -1
cmp.i.v EQ
bf [206]

:[201]
pushi.e -1
push.v self.selected_col
conv.v.i
push.v [array]self.xmap
pop.v.v local.xx
pushloc.v local.xx
push.v self.menu_x2
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [203]

:[202]
pushi.e 2
pop.v.i self.selected_col
b [206]

:[203]
pushloc.v local.xx
push.v self.menu_x1
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [205]

:[204]
pushi.e 1
pop.v.i self.selected_col
b [206]

:[205]
pushi.e 0
pop.v.i self.selected_col

:[206]
push.v self.selected_col
pushi.e 0
cmp.i.v LT
bt [209]

:[207]
push.v self.selected_row
pushi.e 0
cmp.i.v LT
bt [209]

:[208]
pushi.e -1
push.v self.selected_row
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.selected_col
conv.v.i
chkindex.e
add.i.i
push.v [array]self.charmap
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
b [210]

:[209]
push.e 1

:[210]
bf [132]

:[211]
pushi.e 0
pop.v.i self.bks_f
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
pop.v.v local.confirm
pushloc.v local.confirm
conv.v.b
bf [231]

:[212]
push.v self.selected_row
pushi.e -1
cmp.i.v EQ
bf [221]

:[213]
push.v self.selected_col
pushi.e 0
cmp.i.v EQ
bf [215]

:[214]
pushi.e 3
pop.v.i self.naming

:[215]
push.v self.selected_col
pushi.e 1
cmp.i.v EQ
bf [217]

:[216]
pushi.e 1
pop.v.i self.bks_f

:[217]
push.v self.selected_col
pushi.e 2
cmp.i.v EQ
bf [220]

:[218]
push.v self.charname
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [220]

:[219]
pushi.e 2
pop.v.i self.naming
pushi.e 0
pop.v.i self.selected2

:[220]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
b [231]

:[221]
push.v self.selected_row
pushi.e -2
cmp.i.v EQ
bf [228]

:[222]
pushi.e 1
push.v self.selected_col
add.v.i
pop.v.v self.selected_charmap
push.v self.selected_charmap
pushi.e 1
cmp.i.v EQ
bf [224]

:[223]
push.v self.hiragana_rows
pop.v.v self.rows
push.v self.hiragana_cols
pop.v.v self.cols
push.v self.hiragana_x
pop.v.v self.xmap
push.v self.hiragana_y
pop.v.v self.ymap
push.v self.hiragana_charmap
pop.v.v self.charmap
b [227]

:[224]
push.v self.selected_charmap
pushi.e 2
cmp.i.v EQ
bf [226]

:[225]
push.v self.katakana_rows
pop.v.v self.rows
push.v self.katakana_cols
pop.v.v self.cols
push.v self.katakana_x
pop.v.v self.xmap
push.v self.katakana_y
pop.v.v self.ymap
push.v self.katakana_charmap
pop.v.v self.charmap
b [227]

:[226]
push.v self.ja_ascii_rows
pop.v.v self.rows
push.v self.ja_ascii_cols
pop.v.v self.cols
push.v self.ja_ascii_x
pop.v.v self.xmap
push.v self.ja_ascii_y
pop.v.v self.ymap
push.v self.ja_ascii_charmap
pop.v.v self.charmap

:[227]
b [231]

:[228]
push.v self.charname
call.i string_length(argc=1)
pushi.e 6
cmp.i.v EQ
bf [230]

:[229]
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
push.v self.charname
call.i string_delete(argc=3)
pop.v.v self.charname

:[230]
push.v self.charname
pushi.e -1
push.v self.selected_row
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.selected_col
conv.v.i
chkindex.e
add.i.i
push.v [array]self.charmap
add.v.v
pop.v.v self.charname

:[231]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bt [233]

:[232]
push.v self.bks_f
pushi.e 1
cmp.i.v EQ
b [234]

:[233]
push.e 1

:[234]
bf [238]

:[235]
push.v self.charname
call.i string_length(argc=1)
pop.v.v self.s
push.v self.s
pushi.e 0
cmp.i.v GT
bf [237]

:[236]
pushi.e 1
conv.i.v
push.v self.s
push.v self.charname
call.i string_delete(argc=3)
pop.v.v self.charname

:[237]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[238]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.charname
push.v self.name_y
push.v self.name_x
call.i draw_text(argc=3)
popz.v
push.s "name_entry_title"@3153
conv.s.v
call.i scr_gettext(argc=1)
push.v self.title_y
pushi.e 160
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v

:[239]
push.v self.naming
pushi.e 3
cmp.i.v EQ
bf [end]

:[240]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
pop.v.v self.iniread
push.s "General"@3071
conv.s.v
call.i ini_section_exists(argc=1)
conv.v.b
bf [242]

:[241]
push.v self.hasname
pushi.e 1
cmp.i.v EQ
b [243]

:[242]
push.e 0

:[243]
bf [300]

:[244]
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.minutes
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
push.v self.minutes
sub.v.v
pushi.e 60
mul.i.v
call.i round(argc=1)
pop.v.v self.seconds
push.v self.seconds
pushi.e 60
cmp.i.v EQ
bf [246]

:[245]
pushi.e 0
pop.v.i self.seconds

:[246]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [248]

:[247]
push.s "0"@3159
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[248]
push.v self.roome
call.i scr_roomname(argc=1)
pop.v.v local.roomname
push.v self.love
call.i string(argc=1)
push.s "save_menu_lv"@3164
conv.s.v
call.i scr_gettext(argc=2)
pop.v.v local.lvtext
push.v self.seconds
call.i string(argc=1)
push.v self.minutes
call.i string(argc=1)
push.s "save_menu_time"@3166
conv.s.v
call.i scr_gettext(argc=3)
pop.v.v local.timetext
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
push.v self.name
call.i substr(argc=3)
call.i string_width(argc=1)
pop.v.v local.namesize
pushloc.v local.lvtext
call.i string_width(argc=1)
pop.v.v local.lvsize
pushloc.v local.timetext
call.i string_width(argc=1)
pop.v.v local.timesize
pushi.e 160
pop.v.i local.x_center
pushloc.v local.x_center
pushloc.v local.namesize
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local.timesize
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushloc.v local.lvsize
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i round(argc=1)
pop.v.v local.lvpos
pushi.e 70
pop.v.i local.namepos
pushi.e 250
pop.v.i local.timepos
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [250]

:[249]
push.v local.namepos
pushi.e 6
sub.i.v
pop.v.v local.namepos
push.v local.timepos
pushi.e 6
add.i.v
pop.v.v local.timepos

:[250]
push.v self.name
pushi.e 62
conv.i.v
pushloc.v local.namepos
call.i draw_text(argc=3)
popz.v
pushloc.v local.lvtext
pushi.e 62
conv.i.v
pushloc.v local.lvpos
call.i draw_text(argc=3)
popz.v
pushloc.v local.timetext
pushi.e 62
conv.i.v
pushloc.v local.timepos
pushloc.v local.timesize
sub.v.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [252]

:[251]
pushloc.v local.roomname
pushi.e 80
conv.i.v
pushloc.v local.x_center
call.i scr_drawtext_centered(argc=3)
popz.v
b [253]

:[252]
pushloc.v local.roomname
pushi.e 80
conv.i.v
pushloc.v local.namepos
call.i draw_text(argc=3)
popz.v

:[253]
push.v self.selected3
pushi.e 0
cmp.i.v EQ
bf [255]

:[254]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[255]
push.s "load_menu_continue"@3179
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.continue_text
pushloc.v local.continue_text
pushi.e 105
conv.i.v
push.v self.continue_x
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected3
pushi.e 2
cmp.i.v EQ
bf [257]

:[256]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[257]
push.s "settings_name"@3182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 125
conv.i.v
pushi.e 160
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected3
pushi.e 1
cmp.i.v EQ
bf [259]

:[258]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[259]
push.v self.truereset
pushi.e 0
cmp.i.v EQ
bf [261]

:[260]
push.s "load_menu_reset"@3183
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.reset_text
b [262]

:[261]
push.s "load_menu_truereset"@3185
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.reset_text

:[262]
pushloc.v local.reset_text
pushi.e 105
conv.i.v
push.v self.reset_x
call.i draw_text(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [264]

:[263]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [265]

:[264]
push.e 1

:[265]
bf [271]

:[266]
push.v self.selected3
pushi.e 0
cmp.i.v EQ
bf [268]

:[267]
pushi.e 1
pop.v.i self.selected3
b [270]

:[268]
push.v self.selected3
pushi.e 1
cmp.i.v EQ
bf [270]

:[269]
pushi.e 0
pop.v.i self.selected3

:[270]
pushi.e 37
conv.i.v
call.i keyboard_clear(argc=1)
popz.v
pushi.e 39
conv.i.v
call.i keyboard_clear(argc=1)
popz.v

:[271]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [278]

:[272]
push.v self.selected3
pushi.e 0
cmp.i.v EQ
bt [274]

:[273]
push.v self.selected3
pushi.e 1
cmp.i.v EQ
b [275]

:[274]
push.e 1

:[275]
bf [277]

:[276]
pushi.e 2
pop.v.i self.selected3

:[277]
pushi.e 40
conv.i.v
call.i keyboard_clear(argc=1)
popz.v

:[278]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [282]

:[279]
push.v self.selected3
pushi.e 2
cmp.i.v EQ
bf [281]

:[280]
pushi.e 0
pop.v.i self.selected3

:[281]
pushi.e 40
conv.i.v
call.i keyboard_clear(argc=1)
popz.v

:[282]
pushi.e -1
pop.v.i local.action
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [284]

:[283]
push.v self.selected3
pop.v.v local.action

:[284]
pushloc.v local.action
pushi.e 0
cmp.i.v EQ
bf [288]

:[285]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [287]

:[286]
call.i room_goto_next(argc=0)
popz.v
b [288]

:[287]
pushi.e 65
conv.i.v
call.i script_execute(argc=1)
popz.v

:[288]
pushloc.v local.action
pushi.e 1
cmp.i.v EQ
bf [297]

:[289]
push.v self.hasname
pushi.e 0
cmp.i.v EQ
bt [292]

:[290]
pushglb.v global.charname
call.i scr_hardmodename(argc=1)
conv.v.b
bt [292]

:[291]
push.v self.truereset
pushi.e 0
cmp.i.v GT
b [293]

:[292]
push.e 1

:[293]
bf [295]

:[294]
pushi.e 1
pop.v.i self.naming
b [296]

:[295]
pushglb.v global.charname
pop.v.v self.charname
pushi.e 2
pop.v.i self.naming
pushi.e 0
pop.v.i self.alerm
push.d 0.5
pop.v.d self.r
pushi.e 0
pop.v.i self.q

:[296]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[297]
pushloc.v local.action
pushi.e 2
cmp.i.v EQ
bf [299]

:[298]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 288
conv.i.v
call.i room_goto(argc=1)
popz.v

:[299]
b [end]

:[300]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "instructions_title"@3190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 20
conv.i.v
pushi.e 85
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [302]

:[301]
push.s "\\*Z"@3192
conv.s.v
pushi.e 50
conv.i.v
pushi.e 85
conv.i.v
call.i scr_drawtext_icons(argc=3)
popz.v
push.s "instructions_confirm_label"@3194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 50
conv.i.v
pushi.e 115
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "\\*X"@3195
conv.s.v
pushi.e 70
conv.i.v
pushi.e 85
conv.i.v
call.i scr_drawtext_icons(argc=3)
popz.v
push.s "instructions_cancel_label"@3196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 70
conv.i.v
pushi.e 115
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "\\*C"@3197
conv.s.v
pushi.e 90
conv.i.v
pushi.e 85
conv.i.v
call.i scr_drawtext_icons(argc=3)
popz.v
push.s "instructions_menu_label"@3198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 90
conv.i.v
pushi.e 115
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "instructions_hp0"@3199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 130
conv.i.v
pushi.e 86
conv.i.v
call.i draw_text(argc=3)
popz.v
b [316]

:[302]
push.s "confirm"@3092
pushi.e -7
pushi.e 0
pop.v.s [array]local.lines
push.s "cancel"@3201
pushi.e -7
pushi.e 1
pop.v.s [array]local.lines
push.s "menu"@3202
pushi.e -7
pushi.e 2
pop.v.s [array]local.lines
push.s "fullscreen"@3203
pushi.e -7
pushi.e 3
pop.v.s [array]local.lines
push.s "quit"@3204
pushi.e -7
pushi.e 4
pop.v.s [array]local.lines
pushi.e 5
pop.v.i local.num_lines
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [312]

:[303]
pushi.e 0
pop.v.i local.label_x
pushi.e 0
pop.v.i local.i

:[304]
pushloc.v local.i
pushloc.v local.num_lines
cmp.v.v LT
bf [308]

:[305]
push.s "instructions_"@3207
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]local.lines
add.v.s
push.s "_key"@3208
add.s.v
call.i scr_gettext(argc=1)
pop.v.v local.key
pushloc.v local.key
pushi.e 45
pushloc.v local.i
pushi.e 18
mul.i.v
add.v.i
pushi.e 50
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 50
pushloc.v local.key
call.i string_width(argc=1)
add.v.i
pushi.e 20
add.i.v
pop.v.v local.xx
pushloc.v local.xx
pushloc.v local.label_x
cmp.v.v GT
bf [307]

:[306]
pushloc.v local.xx
pop.v.v local.label_x

:[307]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [304]

:[308]
pushi.e 0
pop.v.i local.i

:[309]
pushloc.v local.i
pushloc.v local.num_lines
cmp.v.v LT
bf [311]

:[310]
push.s "instructions_"@3207
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]local.lines
add.v.s
push.s "_label"@3210
add.s.v
call.i scr_gettext(argc=1)
pop.v.v local.label
pushloc.v local.label
pushi.e 45
pushloc.v local.i
pushi.e 18
mul.i.v
add.v.i
pushloc.v local.label_x
call.i draw_text(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [309]

:[311]
push.s "instructions_hp0"@3199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 145
conv.i.v
pushi.e 50
conv.i.v
call.i draw_text(argc=3)
popz.v
b [316]

:[312]
pushi.e 0
pop.v.i local.i

:[313]
pushloc.v local.i
pushloc.v local.num_lines
cmp.v.v LT
bf [315]

:[314]
push.s "instructions_"@3207
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]local.lines
add.v.s
push.s "_key"@3208
add.s.v
call.i scr_gettext(argc=1)
pop.v.v local.key
push.s "instructions_"@3207
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]local.lines
add.v.s
push.s "_label"@3210
add.s.v
call.i scr_gettext(argc=1)
pop.v.v local.label
pushloc.v local.key
push.s " - "@3212
add.s.v
pushloc.v local.label
add.v.v
pushi.e 50
pushloc.v local.i
pushi.e 18
mul.i.v
add.v.i
pushi.e 85
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [313]

:[315]
push.s "instructions_hp0"@3199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 140
conv.i.v
pushi.e 85
conv.i.v
call.i draw_text(argc=3)
popz.v

:[316]
pushi.e 85
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [318]

:[317]
pushi.e 84
pop.v.i local.xx

:[318]
pushi.e 160
pop.v.i local.yy
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [320]

:[319]
push.v local.yy
pushi.e 12
add.i.v
pop.v.v local.yy

:[320]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected3
pushi.e 0
cmp.i.v EQ
bf [322]

:[321]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[322]
push.s "instructions_begin"@3213
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [325]

:[323]
push.v self.selected3
pushi.e 0
cmp.i.v EQ
bf [325]

:[324]
pushi.e 1
pop.v.i self.selected3

:[325]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [328]

:[326]
push.v self.selected3
pushi.e 1
cmp.i.v EQ
bf [328]

:[327]
pushi.e 0
pop.v.i self.selected3

:[328]
pushloc.v local.yy
pushi.e 20
add.i.v
pop.v.v local.yy2
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.selected3
pushi.e 1
cmp.i.v EQ
bf [330]

:[329]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[330]
push.s "settings_name"@3182
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy2
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
pushi.e -1
pop.v.i local.action
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [332]

:[331]
push.v self.selected3
pop.v.v local.action

:[332]
pushloc.v local.action
pushi.e 0
cmp.i.v EQ
bf [334]

:[333]
pushi.e 1
pop.v.i self.naming
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[334]
pushloc.v local.action
pushi.e 1
cmp.i.v EQ
bf [end]

:[335]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 288
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]