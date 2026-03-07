.localvar 0 arguments
.localvar 1 xend 9299
.localvar 2 numpos 9300
.localvar 3 name0_x 9301
.localvar 4 name0_y 9302
.localvar 5 name0_scale 9303
.localvar 6 xx0 9304
.localvar 7 stat_x 9305
.localvar 8 exp_x 9306
.localvar 9 kills_x 9307
.localvar 10 name_y 9308
.localvar 11 lv_y 9309
.localvar 12 hp_y 9310
.localvar 13 at_y 9311
.localvar 14 df_y 9312
.localvar 15 weapon_y 9313
.localvar 16 armor_y 9314
.localvar 17 gold_y 9315
.localvar 18 kills_y 9316
.localvar 19 armorname 9317
.localvar 20 x2 9318
.localvar 21 y2 9319
.localvar 22 scale 9320
.localvar 23 roomname 9322
.localvar 24 lvtext 9323
.localvar 25 timetext 9324
.localvar 26 namesize 9325
.localvar 27 lvsize 9326
.localvar 28 timesize 9327
.localvar 29 x_center 9328
.localvar 30 lvpos 9329
.localvar 31 namepos 9330
.localvar 32 timepos 9331
.localvar 33 savepos 9332
.localvar 34 returnpos 9333
.localvar 35 heart_y 9334

:[0]
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [313]

:[1]
pushglb.v global.menuno
pop.v.v self.currentmenu
pushglb.v global.menuno
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
pushglb.v global.menuno
conv.v.i
push.v [array]global.menucoord
pop.v.v self.currentspot

:[3]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 10
add.i.v
pop.v.v self.yy
push.v self.yy
pop.v.v self.moveyy
push.v 1576.y
push.v self.yy
pushi.e 120
add.i.v
cmp.v.v GT
bf [5]

:[4]
push.v self.moveyy
pushi.e 135
add.i.v
pop.v.v self.moveyy

:[5]
pushglb.v global.menuno
pushi.e 4
cmp.i.v NEQ
bf [54]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 70
push.v self.moveyy
add.v.i
pushi.e 86
push.v self.xx
add.v.i
pushi.e 16
push.v self.moveyy
add.v.i
pushi.e 16
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 147
push.v self.yy
add.v.i
pushi.e 86
push.v self.xx
add.v.i
pushi.e 74
push.v self.yy
add.v.i
pushi.e 16
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [9]

:[7]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bt [9]

:[8]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 196
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[12]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [16]

:[13]
pushi.e 266
pop.v.i local.xend
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [15]

:[14]
push.v local.xend
pushi.e 9
add.i.v
pop.v.v local.xend

:[15]
pushi.e 224
push.v self.yy
add.v.i
pushloc.v local.xend
push.v self.xx
add.v.v
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[16]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e 150
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[18]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [20]

:[19]
pushi.e 216
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[20]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 67
push.v self.moveyy
add.v.i
pushi.e 83
push.v self.xx
add.v.i
pushi.e 19
push.v self.moveyy
add.v.i
pushi.e 19
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 144
push.v self.yy
add.v.i
pushi.e 83
push.v self.xx
add.v.i
pushi.e 77
push.v self.yy
add.v.i
pushi.e 19
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [23]

:[21]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bt [23]

:[22]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
pushi.e 193
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[26]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [30]

:[27]
pushi.e 263
pop.v.i local.xend
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [29]

:[28]
push.v local.xend
pushi.e 9
add.i.v
pop.v.v local.xend

:[29]
pushi.e 221
push.v self.yy
add.v.i
pushloc.v local.xend
push.v self.xx
add.v.v
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[30]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
pushi.e 147
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[32]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [34]

:[33]
pushi.e 213
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[34]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 23
push.v self.xx
add.v.i
push.s "LV  "@51066
conv.s.v
call.i string_width(argc=1)
add.v.v
pop.v.v local.numpos
push.s "LV"@51068
conv.s.v
pushi.e 40
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.lv
call.i string(argc=1)
pushi.e 40
push.v self.moveyy
add.v.i
pushloc.v local.numpos
call.i draw_text(argc=3)
popz.v
push.s "HP"@51069
conv.s.v
pushi.e 49
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.hp
call.i string(argc=1)
push.s "/"@12963
add.s.v
pushglb.v global.maxhp
call.i string(argc=1)
add.v.v
pushi.e 49
push.v self.moveyy
add.v.i
pushloc.v local.numpos
call.i draw_text(argc=3)
popz.v
push.s "G"@5047
conv.s.v
pushi.e 58
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.gold
call.i string(argc=1)
pushi.e 58
push.v self.moveyy
add.v.i
pushloc.v local.numpos
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 23
push.v self.xx
add.v.i
pop.v.v local.name0_x
pushi.e 20
push.v self.moveyy
add.v.i
pop.v.v local.name0_y
pushi.e 1
pop.v.i local.name0_scale
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [36]

:[35]
pushi.e 12
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.v local.name0_y
pushi.e 4
add.i.v
pop.v.v local.name0_y
push.d 0.5
pop.v.d local.name0_scale

:[36]
pushi.e 0
conv.i.v
pushloc.v local.name0_scale
pushloc.v local.name0_scale
pushglb.v global.charname
pushloc.v local.name0_y
pushloc.v local.name0_x
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.xx
pop.v.v local.xx0
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [38]

:[37]
push.v local.xx0
pushi.e 2
sub.i.v
pop.v.v local.xx0

:[38]
pushi.e -5
pushi.e 0
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[40]
pushi.e -5
pushi.e 0
push.v [array]global.menuchoice
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "field_menu_item"@31433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 84
push.v self.yy
add.v.i
pushi.e 42
pushloc.v local.xx0
add.v.i
call.i draw_text(argc=3)
popz.v

:[42]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]global.menuchoice
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.s "field_menu_stat"@31435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 102
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[44]
pushi.e -5
pushi.e 2
push.v [array]global.menuchoice
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.s "field_menu_cell"@31437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 120
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[46]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [48]

:[47]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [54]

:[50]
pushi.e 0
pop.v.i self.i

:[51]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [53]

:[52]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.itemname
pushi.e 30
push.v self.yy
add.v.i
push.v self.i
pushi.e 16
mul.i.v
add.v.v
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [51]

:[53]
push.s "item_menu_use"@31439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "item_menu_info"@31441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
pushi.e 48
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "item_menu_drop"@31443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
pushi.e 105
add.i.v
call.i draw_text(argc=3)
popz.v

:[54]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [58]

:[55]
pushi.e 0
pop.v.i self.i

:[56]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [58]

:[57]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.phonename
pushi.e 30
push.v self.yy
add.v.i
push.v self.i
pushi.e 16
mul.i.v
add.v.v
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [56]

:[58]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
bf [62]

:[59]
call.i scr_itemname(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[60]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [62]

:[61]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.itemname
pushi.e 30
push.v self.yy
add.v.i
push.v self.i
pushi.e 16
mul.i.v
add.v.v
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [60]

:[62]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [66]

:[63]
pushi.e 300
conv.i.v
call.i scr_storagename(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[64]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [66]

:[65]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.itemname
pushi.e 30
push.v self.yy
add.v.i
push.v self.i
pushi.e 16
mul.i.v
add.v.v
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [64]

:[66]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [120]

:[67]
pushi.e 108
push.v self.xx
add.v.i
pop.v.v local.stat_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [69]

:[68]
push.v local.stat_x
pushi.e 3
sub.i.v
pop.v.v local.stat_x

:[69]
pushloc.v local.stat_x
pushi.e 84
add.i.v
pop.v.v local.exp_x
pushloc.v local.exp_x
pop.v.v local.kills_x
pushi.e 32
push.v self.yy
add.v.i
pop.v.v local.name_y
pushi.e 62
push.v self.yy
add.v.i
pop.v.v local.lv_y
pushi.e 78
push.v self.yy
add.v.i
pop.v.v local.hp_y
pushi.e 110
push.v self.yy
add.v.i
pop.v.v local.at_y
pushi.e 126
push.v self.yy
add.v.i
pop.v.v local.df_y
pushi.e 156
push.v self.yy
add.v.i
pop.v.v local.weapon_y
pushi.e 172
push.v self.yy
add.v.i
pop.v.v local.armor_y
pushi.e 192
push.v self.yy
add.v.i
pop.v.v local.gold_y
pushi.e 192
push.v self.yy
add.v.i
pop.v.v local.kills_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [71]

:[70]
push.v local.weapon_y
pushi.e 2
sub.i.v
pop.v.v local.weapon_y
push.v local.gold_y
pushi.e 2
add.i.v
pop.v.v local.gold_y
push.v local.kills_y
pushi.e 2
add.i.v
pop.v.v local.kills_y

:[71]
push.s "stat_menu_name"@31445
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.name_y
pushloc.v local.stat_x
call.i draw_text(argc=3)
popz.v
pushglb.v global.lv
call.i string(argc=1)
push.s "stat_menu_lv"@31449
conv.s.v
call.i scr_gettext(argc=2)
pushloc.v local.lv_y
pushloc.v local.stat_x
call.i draw_text(argc=3)
popz.v
pushglb.v global.maxhp
call.i string(argc=1)
pushglb.v global.hp
call.i string(argc=1)
push.s "stat_menu_hp"@31451
conv.s.v
call.i scr_gettext(argc=3)
pushloc.v local.hp_y
pushloc.v local.stat_x
call.i draw_text(argc=3)
popz.v
pushglb.v global.wstrength
call.i string(argc=1)
pushglb.v global.at
pushi.e 10
sub.i.v
call.i string(argc=1)
push.s "stat_menu_at"@31453
conv.s.v
call.i scr_gettext(argc=3)
pushloc.v local.at_y
pushloc.v local.stat_x
call.i draw_text(argc=3)
popz.v
pushglb.v global.adef
call.i string(argc=1)
pushglb.v global.df
pushi.e 10
sub.i.v
call.i string(argc=1)
push.s "stat_menu_df"@31455
conv.s.v
call.i scr_gettext(argc=3)
pushloc.v local.df_y
pushloc.v local.stat_x
call.i draw_text(argc=3)
popz.v
push.s "item_name_"@3562
pushglb.v global.weapon
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
push.s "stat_menu_weapon"@31457
conv.s.v
call.i scr_gettext(argc=2)
pushloc.v local.weapon_y
pushloc.v local.stat_x
call.i draw_text(argc=3)
popz.v
push.s "item_name_"@3562
pushglb.v global.armor
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v local.armorname
pushglb.v global.armor
pushi.e 64
cmp.i.v EQ
bf [73]

:[72]
push.s "stat_armor_temmie"@31469
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.armorname

:[73]
pushloc.v local.armorname
push.s "stat_menu_armor"@31459
conv.s.v
call.i scr_gettext(argc=2)
pushloc.v local.armor_y
pushloc.v local.stat_x
call.i draw_text(argc=3)
popz.v
push.s "stat_menu_gold"@31461
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.gold_y
pushloc.v local.stat_x
call.i draw_text(argc=3)
popz.v
pushglb.v global.kills
pushi.e 20
cmp.i.v GT
bf [75]

:[74]
pushglb.v global.kills
call.i string(argc=1)
push.s "stat_menu_kills"@31463
conv.s.v
call.i scr_gettext(argc=2)
pushloc.v local.kills_y
pushloc.v local.kills_x
call.i draw_text(argc=3)
popz.v

:[75]
pushglb.v global.charname
call.i string_length(argc=1)
pushi.e 7
cmp.i.v GTE
bf [79]

:[76]
pushi.e 192
push.v self.xx
add.v.i
pop.v.v local.x2
pushi.e 32
push.v self.yy
add.v.i
pop.v.v local.y2
pushi.e 1
pop.v.i local.scale
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [78]

:[77]
push.v local.x2
pushi.e 16
add.i.v
pop.v.v local.x2
push.v local.y2
pushi.e 20
add.i.v
pop.v.v local.y2
push.d 0.5
pop.v.d local.scale

:[78]
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.s "stat_menu_namehack"@31447
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.y2
pushloc.v local.x2
call.i draw_text_transformed(argc=6)
popz.v

:[79]
pushglb.v global.xp
call.i string(argc=1)
push.s "stat_menu_exp"@31465
conv.s.v
call.i scr_gettext(argc=2)
pushloc.v local.at_y
pushloc.v local.exp_x
call.i draw_text(argc=3)
popz.v
pushglb.v global.lv
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushi.e 10
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[81]
pushglb.v global.lv
pushi.e 2
cmp.i.v EQ
bf [83]

:[82]
pushi.e 30
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[83]
pushglb.v global.lv
pushi.e 3
cmp.i.v EQ
bf [85]

:[84]
pushi.e 70
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[85]
pushglb.v global.lv
pushi.e 4
cmp.i.v EQ
bf [87]

:[86]
pushi.e 120
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[87]
pushglb.v global.lv
pushi.e 5
cmp.i.v EQ
bf [89]

:[88]
pushi.e 200
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[89]
pushglb.v global.lv
pushi.e 6
cmp.i.v EQ
bf [91]

:[90]
pushi.e 300
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[91]
pushglb.v global.lv
pushi.e 7
cmp.i.v EQ
bf [93]

:[92]
pushi.e 500
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[93]
pushglb.v global.lv
pushi.e 8
cmp.i.v EQ
bf [95]

:[94]
pushi.e 800
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[95]
pushglb.v global.lv
pushi.e 9
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1200
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[97]
pushglb.v global.lv
pushi.e 10
cmp.i.v EQ
bf [99]

:[98]
pushi.e 1700
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[99]
pushglb.v global.lv
pushi.e 11
cmp.i.v EQ
bf [101]

:[100]
pushi.e 2500
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[101]
pushglb.v global.lv
pushi.e 12
cmp.i.v EQ
bf [103]

:[102]
pushi.e 3500
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[103]
pushglb.v global.lv
pushi.e 13
cmp.i.v EQ
bf [105]

:[104]
pushi.e 5000
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[105]
pushglb.v global.lv
pushi.e 14
cmp.i.v EQ
bf [107]

:[106]
pushi.e 7000
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[107]
pushglb.v global.lv
pushi.e 15
cmp.i.v EQ
bf [109]

:[108]
pushi.e 10000
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[109]
pushglb.v global.lv
pushi.e 16
cmp.i.v EQ
bf [111]

:[110]
pushi.e 15000
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[111]
pushglb.v global.lv
pushi.e 17
cmp.i.v EQ
bf [113]

:[112]
pushi.e 25000
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[113]
pushglb.v global.lv
pushi.e 18
cmp.i.v EQ
bf [115]

:[114]
push.i 50000
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[115]
pushglb.v global.lv
pushi.e 19
cmp.i.v EQ
bf [117]

:[116]
push.i 99999
pushglb.v global.xp
sub.v.i
pop.v.v self.nextlevel

:[117]
pushglb.v global.lv
pushi.e 20
cmp.i.v GTE
bf [119]

:[118]
pushi.e 0
pop.v.i self.nextlevel

:[119]
push.v self.nextlevel
call.i string(argc=1)
push.s "stat_menu_next"@31467
conv.s.v
call.i scr_gettext(argc=2)
pushloc.v local.df_y
pushloc.v local.exp_x
call.i draw_text(argc=3)
popz.v

:[120]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [163]

:[121]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
pop.v.v self.iniread
push.s "save_menu_empty"@31471
conv.s.v
call.i scr_gettext(argc=1)
push.s "Name"@3378
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.name
pushi.e 0
conv.i.v
push.s "Love"@3380
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.love
pushi.e 1
conv.i.v
push.s "Time"@3381
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.time
pushi.e 0
conv.i.v
push.s "Kills"@3382
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.kills
pushi.e 0
conv.i.v
push.s "Room"@3383
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.roome
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 135
push.v self.yy
add.v.i
pushi.e 265
push.v self.xx
add.v.i
pushi.e 49
push.v self.yy
add.v.i
pushi.e 54
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 132
push.v self.yy
add.v.i
pushi.e 262
push.v self.xx
add.v.i
pushi.e 52
push.v self.yy
add.v.i
pushi.e 57
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 4
push.v [array]global.menucoord
pushi.e 2
cmp.i.v EQ
bf [123]

:[122]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[123]
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
bf [125]

:[124]
pushi.e 59
pop.v.i self.seconds

:[125]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [127]

:[126]
push.s "0"@3159
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[127]
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
push.v self.xx
pushi.e 160
add.i.v
pop.v.v local.x_center
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
push.v self.xx
add.v.i
pop.v.v local.namepos
pushi.e 250
push.v self.xx
add.v.i
pop.v.v local.timepos
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [129]

:[128]
push.v local.namepos
pushi.e 6
sub.i.v
pop.v.v local.namepos
push.v local.timepos
pushi.e 6
add.i.v
pop.v.v local.timepos

:[129]
push.v self.name
pushi.e 60
push.v self.yy
add.v.i
pushloc.v local.namepos
call.i draw_text(argc=3)
popz.v
pushloc.v local.lvtext
pushi.e 60
push.v self.yy
add.v.i
pushloc.v local.lvpos
call.i draw_text(argc=3)
popz.v
pushloc.v local.timetext
pushi.e 60
push.v self.yy
add.v.i
pushloc.v local.timepos
pushloc.v local.timesize
sub.v.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [131]

:[130]
pushloc.v local.roomname
pushi.e 80
push.v self.yy
add.v.i
pushloc.v local.x_center
call.i scr_drawtext_centered(argc=3)
popz.v
b [132]

:[131]
pushloc.v local.roomname
pushi.e 80
push.v self.yy
add.v.i
pushloc.v local.namepos
call.i draw_text(argc=3)
popz.v

:[132]
push.v self.xx
pushi.e 71
add.i.v
pop.v.v local.savepos
push.v self.xx
pushi.e 161
add.i.v
pop.v.v local.returnpos
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [134]

:[133]
push.v self.xx
pushi.e 78
add.i.v
pop.v.v local.savepos
push.v self.xx
pushi.e 173
add.i.v
pop.v.v local.returnpos

:[134]
pushi.e -5
pushi.e 4
push.v [array]global.menucoord
pushi.e 0
cmp.i.v EQ
bf [136]

:[135]
push.v self.yy
pushi.e 113
add.i.v
pushloc.v local.savepos
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[136]
pushi.e -5
pushi.e 4
push.v [array]global.menucoord
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
push.v self.yy
pushi.e 113
add.i.v
pushloc.v local.returnpos
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[138]
pushi.e -5
pushi.e 4
push.v [array]global.menucoord
pushi.e 2
cmp.i.v LT
bf [140]

:[139]
push.s "save_menu_save"@31475
conv.s.v
call.i scr_gettext(argc=1)
push.v self.yy
pushi.e 110
add.i.v
pushloc.v local.savepos
pushi.e 14
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "save_menu_return"@31477
conv.s.v
call.i scr_gettext(argc=1)
push.v self.yy
pushi.e 110
add.i.v
pushloc.v local.returnpos
pushi.e 14
add.i.v
call.i draw_text(argc=3)
popz.v
b [142]

:[140]
push.s "save_menu_saved"@31479
conv.s.v
call.i scr_gettext(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 85
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [142]

:[141]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.menucoord
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[142]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [144]

:[143]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [145]

:[144]
push.e 1

:[145]
bf [151]

:[146]
pushi.e -5
pushi.e 4
push.v [array]global.menucoord
pushi.e 2
cmp.i.v LT
bf [151]

:[147]
pushi.e -5
pushi.e 4
push.v [array]global.menucoord
pushi.e 1
cmp.i.v EQ
bf [149]

:[148]
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.menucoord
b [150]

:[149]
pushi.e 1
pushi.e -5
pushi.e 4
pop.v.i [array]global.menucoord

:[150]
pushi.e 37
conv.i.v
call.i keyboard_clear(argc=1)
popz.v
pushi.e 39
conv.i.v
call.i keyboard_clear(argc=1)
popz.v

:[151]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [153]

:[152]
pushi.e -5
pushi.e 4
push.v [array]global.menucoord
pushi.e 0
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 2
pushi.e -5
pushi.e 4
pop.v.i [array]global.menucoord
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[156]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [158]

:[157]
pushi.e -5
pushi.e 4
push.v [array]global.menucoord
pushi.e 1
cmp.i.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [161]

:[160]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.menucoord
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[161]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [163]

:[162]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.menucoord
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[163]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [167]

:[164]
pushi.e 88
pop.v.i local.heart_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [166]

:[165]
push.v local.heart_y
pushi.e 1
sub.i.v
pop.v.v local.heart_y

:[166]
pushloc.v local.heart_y
push.v self.yy
add.v.v
pushi.e 18
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 28
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[167]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [171]

:[168]
pushi.e 34
pop.v.i local.heart_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [170]

:[169]
push.v local.heart_y
pushi.e 1
sub.i.v
pop.v.v local.heart_y

:[170]
pushloc.v local.heart_y
push.v self.yy
add.v.v
pushi.e 16
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[171]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [175]

:[172]
pushi.e 34
pop.v.i local.heart_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [174]

:[173]
push.v local.heart_y
pushi.e 1
sub.i.v
pop.v.v local.heart_y

:[174]
pushloc.v local.heart_y
push.v self.yy
add.v.v
pushi.e 16
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[175]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
bf [179]

:[176]
pushi.e 34
pop.v.i local.heart_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [178]

:[177]
push.v local.heart_y
pushi.e 1
sub.i.v
pop.v.v local.heart_y

:[178]
pushloc.v local.heart_y
push.v self.yy
add.v.v
pushi.e 16
pushi.e -5
pushi.e 6
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[179]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [183]

:[180]
pushi.e 34
pop.v.i local.heart_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [182]

:[181]
push.v local.heart_y
pushi.e 1
sub.i.v
pop.v.v local.heart_y

:[182]
pushloc.v local.heart_y
push.v self.yy
add.v.v
pushi.e 16
pushi.e -5
pushi.e 7
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[183]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [192]

:[184]
pushi.e 174
pop.v.i local.heart_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [186]

:[185]
push.v local.heart_y
pushi.e 1
sub.i.v
pop.v.v local.heart_y

:[186]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 0
cmp.i.v EQ
bf [188]

:[187]
pushloc.v local.heart_y
push.v self.yy
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[188]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 1
cmp.i.v EQ
bf [190]

:[189]
pushloc.v local.heart_y
push.v self.yy
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
mul.v.i
pushi.e 3
add.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[190]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 2
cmp.i.v EQ
bf [192]

:[191]
pushloc.v local.heart_y
push.v self.yy
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
mul.v.i
pushi.e 15
add.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[192]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [244]

:[193]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [224]

:[194]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 0
cmp.i.v EQ
bf [196]

:[195]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 77
conv.i.v
call.i script_execute(argc=3)
popz.v

:[196]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 1
cmp.i.v EQ
bf [198]

:[197]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 76
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v

:[198]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 2
cmp.i.v EQ
bf [224]

:[199]
pushi.e 9
pop.v.i global.menuno
pushi.e 0
pop.v.i self.dontthrow
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 23
cmp.i.v NEQ
bf [204]

:[200]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 27
cmp.i.v NEQ
bf [204]

:[201]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 54
cmp.i.v NEQ
bf [204]

:[202]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 56
cmp.i.v NEQ
bf [204]

:[203]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 57
cmp.i.v NEQ
b [205]

:[204]
push.e 0

:[205]
bf [207]

:[206]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 12
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
b [222]

:[207]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 23
cmp.i.v EQ
bf [209]

:[208]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 23
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v

:[209]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 27
cmp.i.v EQ
bf [214]

:[210]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "item_drop_27"@31755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 1149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [214]

:[211]
pushi.e 1149
pushenv [213]

:[212]
pushi.e 1
pop.v.i self.con

:[213]
popenv [212]

:[214]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 54
cmp.i.v EQ
bf [216]

:[215]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "item_drop_54"@31757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 1
pop.v.i self.dontthrow

:[216]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 56
cmp.i.v EQ
bf [220]

:[217]
pushi.e 1315
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [219]

:[218]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "item_drop_56"@31759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 1
pushi.e -5
pushi.e 494
pop.v.i [array]global.flag
b [220]

:[219]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 37
conv.i.v
pushi.e 5
conv.i.v
push.s "item_drop_56_undyne"@31761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 1
pop.v.i self.dontthrow

:[220]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 57
cmp.i.v EQ
bf [222]

:[221]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "item_drop_57"@31763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 1
pop.v.i self.dontthrow

:[222]
push.v self.dontthrow
pushi.e 0
cmp.i.v EQ
bf [224]

:[223]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 70
conv.i.v
call.i script_execute(argc=3)
popz.v

:[224]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [226]

:[225]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
conv.v.i
push.v [array]global.phone
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
pushi.e 77
conv.i.v
call.i script_execute(argc=3)
popz.v

:[226]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
bf [230]

:[227]
pushi.e 9
pop.v.i global.menuno
pushi.e 300
conv.i.v
pushi.e -5
pushi.e -5
pushi.e 6
push.v [array]global.menucoord
conv.v.i
push.v [array]global.item
pushi.e 89
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [229]

:[228]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 16
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
push.v [array]global.menucoord
pushi.e 70
conv.i.v
call.i script_execute(argc=3)
popz.v
b [230]

:[229]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 19
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v

:[230]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [234]

:[231]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 7
push.v [array]global.menucoord
pushi.e 300
add.i.v
conv.v.i
push.v [array]global.flag
pushi.e 88
conv.i.v
call.i script_execute(argc=2)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [233]

:[232]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 17
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 300
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
push.v [array]global.menucoord
call.i scr_storageshift(argc=3)
popz.v
b [234]

:[233]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 18
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v

:[234]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [236]

:[235]
pushi.e 5
pop.v.i global.menuno
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.menucoord

:[236]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [238]

:[237]
push.v global.menuno
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 1
add.i.v
add.v.v
pop.v.v global.menuno

:[238]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [240]

:[239]
pushi.e 74
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.menucoord

:[240]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [244]

:[241]
pushi.e -5
pushi.e 0
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [243]

:[242]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.menucoord
pushi.e 86
conv.i.v
call.i script_execute(argc=1)
popz.v
b [244]

:[243]
pushi.e 0
pop.v.i global.menuno

:[244]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [260]

:[245]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [248]

:[246]
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [248]

:[247]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[248]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [251]

:[249]
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [251]

:[250]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[251]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [254]

:[252]
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [254]

:[253]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[254]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
bf [257]

:[255]
pushi.e -5
pushi.e 6
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [257]

:[256]
pushi.e -5
pushi.e 6
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[257]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [260]

:[258]
pushi.e -5
pushi.e 7
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [260]

:[259]
pushi.e -5
pushi.e 7
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[260]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [281]

:[261]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [265]

:[262]
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 2
cmp.i.v NEQ
bf [265]

:[263]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.menuchoice
pushi.e 0
cmp.i.v NEQ
bf [265]

:[264]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[265]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [269]

:[266]
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 7
cmp.i.v NEQ
bf [269]

:[267]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [269]

:[268]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[269]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [273]

:[270]
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
pushi.e 7
cmp.i.v NEQ
bf [273]

:[271]
pushi.e -5
pushi.e -5
pushi.e 3
push.v [array]global.menucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.phone
pushi.e 0
cmp.i.v NEQ
bf [273]

:[272]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[273]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
bf [277]

:[274]
pushi.e -5
pushi.e 6
push.v [array]global.menucoord
pushi.e 7
cmp.i.v NEQ
bf [277]

:[275]
pushi.e -5
pushi.e -5
pushi.e 6
push.v [array]global.menucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [277]

:[276]
pushi.e -5
pushi.e 6
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[277]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [281]

:[278]
pushi.e -5
pushi.e 7
push.v [array]global.menucoord
pushi.e 9
cmp.i.v NEQ
bf [281]

:[279]
pushi.e -5
pushi.e -5
pushi.e 7
push.v [array]global.menucoord
pushi.e 301
add.i.v
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [281]

:[280]
pushi.e -5
pushi.e 7
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[281]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [283]

:[282]
push.v self.buffer
pushi.e 0
cmp.i.v GTE
b [284]

:[283]
push.e 0

:[284]
bf [291]

:[285]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [287]

:[286]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
b [289]

:[287]
pushglb.v global.menuno
pushi.e 3
cmp.i.v LTE
bf [289]

:[288]
pushi.e 0
pop.v.i global.menuno

:[289]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [291]

:[290]
pushi.e 1
pop.v.i global.menuno

:[291]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [295]

:[292]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [295]

:[293]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 2
cmp.i.v NEQ
bf [295]

:[294]
pushi.e -5
pushi.e 5
dup.i 1
push.v [array]global.menucoord
pushi.e 1
add.i.v
pop.i.v [array]global.menucoord

:[295]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [299]

:[296]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [299]

:[297]
pushi.e -5
pushi.e 5
push.v [array]global.menucoord
pushi.e 0
cmp.i.v NEQ
bf [299]

:[298]
pushi.e -5
pushi.e 5
dup.i 1
push.v [array]global.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.menucoord

:[299]
pushi.e 2
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [302]

:[300]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [302]

:[301]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact

:[302]
push.v self.currentmenu
pushglb.v global.menuno
cmp.v.v LT
bf [304]

:[303]
pushglb.v global.menuno
pushi.e 9
cmp.i.v NEQ
b [305]

:[304]
push.e 0

:[305]
bf [307]

:[306]
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
b [313]

:[307]
pushglb.v global.menuno
pushi.e 0
cmp.i.v GTE
bf [309]

:[308]
pushglb.v global.menuno
pushi.e 6
cmp.i.v LT
b [310]

:[309]
push.e 0

:[310]
bf [313]

:[311]
push.v self.currentspot
pushi.e -5
pushglb.v global.menuno
conv.v.i
push.v [array]global.menucoord
cmp.v.v NEQ
bf [313]

:[312]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[313]
pushglb.v global.menuno
pushi.e 9
cmp.i.v EQ
bf [315]

:[314]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [316]

:[315]
push.e 0

:[316]
bf [end]

:[317]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact

:[end]