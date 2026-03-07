.localvar 0 arguments
.localvar 1 pad 8847
.localvar 2 hearty 8848
.localvar 3 heartx 8849
.localvar 4 textx 8850
.localvar 5 writerx 8851
.localvar 6 left_x 8852
.localvar 7 right_x 8853
.localvar 8 heart_space 8854
.localvar 9 max_width 8855
.localvar 10 price_width 8856
.localvar 11 separator 8857
.localvar 12 sep_width 8858
.localvar 13 xx 8859
.localvar 14 yy 8860
.localvar 15 value_x 8861
.localvar 16 name 8862
.localvar 17 scale 8863
.localvar 18 width 8864
.localvar 19 y_prompt 8866
.localvar 20 y_choice 8867

:[0]
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost
b [50]

:[2]
push.v self.gm
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 9999
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[4]
push.v self.gm
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 9000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[6]
push.v self.gm
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 8000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[8]
push.v self.gm
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 7000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[10]
push.v self.gm
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 6000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[12]
push.v self.gm
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e 5000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[14]
push.v self.gm
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
pushi.e 4500
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[16]
push.v self.gm
pushi.e 7
cmp.i.v EQ
bf [18]

:[17]
pushi.e 4000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[18]
push.v self.gm
pushi.e 8
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3500
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[20]
push.v self.gm
pushi.e 9
cmp.i.v EQ
bf [22]

:[21]
pushi.e 3000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[22]
push.v self.gm
pushi.e 10
cmp.i.v EQ
bf [24]

:[23]
pushi.e 2800
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[24]
push.v self.gm
pushi.e 11
cmp.i.v EQ
bf [26]

:[25]
pushi.e 2600
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[26]
push.v self.gm
pushi.e 12
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2400
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[28]
push.v self.gm
pushi.e 13
cmp.i.v EQ
bf [30]

:[29]
pushi.e 2200
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[30]
push.v self.gm
pushi.e 14
cmp.i.v EQ
bf [32]

:[31]
pushi.e 2000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[32]
push.v self.gm
pushi.e 15
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1800
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[34]
push.v self.gm
pushi.e 16
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1600
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[36]
push.v self.gm
pushi.e 17
cmp.i.v EQ
bf [38]

:[37]
pushi.e 1400
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[38]
push.v self.gm
pushi.e 18
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1250
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[40]
push.v self.gm
pushi.e 19
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1100
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[42]
push.v self.gm
pushi.e 20
cmp.i.v GTE
bf [44]

:[43]
pushi.e 1000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[44]
push.v self.gm
pushi.e 25
cmp.i.v GTE
bf [46]

:[45]
pushi.e 750
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[46]
push.v self.gm
pushi.e 30
cmp.i.v GTE
bf [48]

:[47]
pushi.e 500
pushi.e -1
pushi.e 4
pop.v.i [array]self.itemcost

:[48]
pushi.e -1
pushi.e 3
push.v [array]self.itemcost
pushi.e 500
cmp.i.v LT
bf [50]

:[49]
pushi.e 500
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[50]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [52]

:[51]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [53]

:[52]
push.e 1

:[53]
bf [70]

:[54]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.s "shop5_itemdesc_22a"@32421
conv.s.v
call.i scr_gettext(argc=1)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v

:[56]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.s "shop5_itemdesc_22b"@32423
conv.s.v
call.i scr_gettext(argc=1)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v

:[58]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
push.s "shop5_itemdesc_22c"@32425
conv.s.v
call.i scr_gettext(argc=1)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v

:[60]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [68]

:[61]
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [65]

:[62]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [64]

:[63]
push.s "shop5_itemdesc_college"@32429
conv.s.v
call.i scr_gettext(argc=1)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v

:[64]
b [67]

:[65]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
push.s "shop5_itemdesc_64"@32431
conv.s.v
call.i scr_gettext(argc=1)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v

:[67]
b [70]

:[68]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [70]

:[69]
push.s "shop5_itemdesc_22d"@32427
conv.s.v
call.i scr_gettext(argc=1)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v

:[70]
push.v self.menu
pushi.e 4
cmp.i.v LT
conv.b.v
call.i scr_shop_draw_window(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [92]

:[71]
pushi.e 0
pop.v.i self.specialsell
pushi.e 0
pop.v.i self.joytimer
pushi.e 0
pop.v.i self.thanks
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.sold
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.sold
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.sold
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.sold
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.sold
pushi.e 0
pushi.e -1
pushi.e 5
pop.v.i [array]self.sold
pushi.e 0
pushi.e -1
pushi.e 6
pop.v.i [array]self.sold
pushi.e 0
pushi.e -1
pushi.e 7
pop.v.i [array]self.sold
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i self.sidemessage
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.menuc
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [75]

:[72]
push.s "obj_shop5_343"@25383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_shop5_344"@25384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[74]
pushi.e 1
pop.v.i self.mainmessage
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
b [81]

:[75]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [81]

:[76]
pushi.e 784
pushenv [80]

:[77]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[79]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[80]
popenv [77]

:[81]
pushi.e 3
pop.v.i self.menumax
pushi.e 0
conv.i.v
call.i scr_shop_draw_topmenu(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [92]

:[82]
pushi.e 1
pop.v.i 784.dfy
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
pushi.e 1
pop.v.i self.menu

:[84]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [88]

:[85]
pushi.e -5
pushi.e 0
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [87]

:[86]
pushi.e 5
pop.v.i self.menu
b [88]

:[87]
pushi.e 4
pop.v.i self.menu
pushi.e 1
pop.v.i self.sell

:[88]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [90]

:[89]
pushi.e 3
pop.v.i self.menu

:[90]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [92]

:[91]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[92]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [94]

:[93]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [95]

:[94]
push.e 1

:[95]
bf [172]

:[96]
push.s "  "@7168
pop.v.s local.pad
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [98]

:[97]
push.s " "@18
pop.v.s local.pad

:[98]
push.s "shop5_itemname_22a"@32409
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.pad
push.s "3"@6335
add.s.v
push.s "shop_buy_list"@32237
conv.s.v
call.i scr_gettext(argc=3)
pushi.e 130
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "shop5_itemname_22b"@32411
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.pad
push.s "1"@6320
add.s.v
push.s "shop_buy_list"@32237
conv.s.v
call.i scr_gettext(argc=3)
pushi.e 150
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "shop5_itemname_22c"@32413
conv.s.v
call.i scr_gettext(argc=1)
push.s "20"@50953
conv.s.v
push.s "shop_buy_list"@32237
conv.s.v
call.i scr_gettext(argc=3)
pushi.e 170
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [103]

:[99]
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [101]

:[100]
push.s "shop5_itemname_college"@32417
conv.s.v
call.i scr_gettext(argc=1)
push.s "1000"@50954
conv.s.v
push.s "shop_buy_list"@32237
conv.s.v
call.i scr_gettext(argc=3)
pushi.e 190
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
b [102]

:[101]
push.s "shop5_itemname_64"@32419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 3
push.v [array]self.itemcost
call.i string(argc=1)
push.s "shop_buy_list"@32237
conv.s.v
call.i scr_gettext(argc=3)
pushi.e 190
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v

:[102]
b [104]

:[103]
push.s "shop5_itemname_22d"@32415
conv.s.v
call.i scr_gettext(argc=1)
push.s "1000"@50954
conv.s.v
push.s "shop_buy_list"@32237
conv.s.v
call.i scr_gettext(argc=3)
pushi.e 190
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v

:[104]
push.s "shop_exit_submenu"@5053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 210
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [128]

:[105]
pushi.e 4
pop.v.i self.menumax
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [117]

:[106]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_shop5_405"@25386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[108]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_shop5_406"@25388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[110]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_shop5_407"@25390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[112]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [114]

:[113]
push.s "obj_shop5_408"@25392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[114]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [116]

:[115]
push.s "obj_shop5_409"@25394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[116]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
popz.v

:[117]
pushi.e 134
pop.v.i local.hearty
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [119]

:[118]
push.v local.hearty
pushi.e 2
sub.i.v
pop.v.v local.hearty

:[119]
pushloc.v local.hearty
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 20
mul.i.v
add.v.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [123]

:[120]
pushi.e 2
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [122]

:[121]
pushi.e 0
pop.v.i self.menu

:[122]
b [125]

:[123]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [125]

:[124]
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[125]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [127]

:[126]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[127]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc

:[128]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [160]

:[129]
call.i scr_shop_divider_pos(argc=0)
pushi.e 15
add.i.v
pop.v.v local.heartx
pushloc.v local.heartx
pushi.e 5
add.i.v
pop.v.v local.textx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [131]

:[130]
push.v local.textx
pushi.e 8
sub.i.v
pop.v.v local.textx

:[131]
pushi.e 1
pop.v.i self.menumax
pushi.e 3
pop.v.i global.faceemotion
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
push.s "shop5_buy_prompt1"@32433
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 130
conv.i.v
pushloc.v local.textx
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
push.s "shop5_buy_prompt2"@32434
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 145
conv.i.v
pushloc.v local.textx
call.i draw_text(argc=3)
popz.v
push.s "shop5_buy_yes"@32436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushloc.v local.heartx
pushi.e 15
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "shop5_buy_no"@32438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 185
conv.i.v
pushloc.v local.heartx
pushi.e 15
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 174
pop.v.i local.hearty
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [133]

:[132]
push.v local.hearty
pushi.e 2
sub.i.v
pop.v.v local.hearty

:[133]
pushloc.v local.hearty
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 15
mul.i.v
add.v.v
pushloc.v local.heartx
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [135]

:[134]
pushi.e 1
pop.v.i self.menu
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 2
pop.v.i self.sidemessage
b [160]

:[135]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [160]

:[136]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [155]

:[137]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemcost
call.i scr_cost(argc=1)
popz.v
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [141]

:[138]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [141]

:[139]
push.v self.afford
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
push.v self.murder
pushi.e 0
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [148]

:[143]
push.v global.gold
pushi.e 1000
sub.i.v
pop.v.v global.gold
pushglb.v global.gold
pushi.e 0
cmp.i.v LT
bf [145]

:[144]
pushi.e 0
pop.v.i global.gold

:[145]
pushi.e 1
pop.v.i self.colleg
pushi.e 4
pop.v.i self.menu
pushi.e 10
pop.v.i self.sell
pushi.e 784
pushenv [147]

:[146]
call.i instance_destroy(argc=0)
popz.v

:[147]
popenv [146]
b [155]

:[148]
push.v self.afford
pushi.e 1
cmp.i.v EQ
bf [154]

:[149]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
pushi.e 88
conv.i.v
call.i script_execute(argc=2)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
push.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemcost
sub.v.v
pop.v.v global.gold
pushi.e 1
pop.v.i self.sidemessage
pushi.e 114
conv.i.v
call.i snd_play(argc=1)
popz.v

:[151]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
pushi.e 4
pop.v.i self.sidemessage

:[153]
b [155]

:[154]
pushi.e 3
pop.v.i self.sidemessage

:[155]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [157]

:[156]
pushi.e 2
pop.v.i self.sidemessage

:[157]
push.v self.colleg
pushi.e 0
cmp.i.v EQ
bf [159]

:[158]
pushi.e 1
pop.v.i self.menu

:[159]
pushi.e 0
pop.v.i self.colleg

:[160]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [170]

:[161]
push.v self.minimenuy
pushi.e 120
call.i scr_shop_infobox_height(argc=0)
sub.v.i
cmp.v.v GT
bf [163]

:[162]
push.v self.minimenuy
pushi.e 3
sub.i.v
pop.v.v self.minimenuy

:[163]
push.v self.minimenuy
pushi.e 55
cmp.i.v GT
bf [165]

:[164]
push.v self.minimenuy
pushi.e 2
sub.i.v
pop.v.v self.minimenuy

:[165]
push.v self.minimenuy
pushi.e 80
cmp.i.v GT
bf [167]

:[166]
push.v self.minimenuy
pushi.e 4
sub.i.v
pop.v.v self.minimenuy

:[167]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [169]

:[168]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[169]
b [172]

:[170]
push.v self.minimenuy
pushi.e 120
cmp.i.v LT
bf [172]

:[171]
push.v self.minimenuy
pushi.e 20
add.i.v
pop.v.v self.minimenuy

:[172]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [188]

:[173]
pushi.e 4
pop.v.i self.menumax
push.s "shop5_talk1_title"@32455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [175]

:[174]
push.s "shop5_talk2a_title"@32456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[175]
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
push.s "shop5_talk2b_title"@32458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[177]
push.s "shop5_talk3_title"@32460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop5_talk4_title"@32462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
call.i scr_shop_draw_talkmenu(argc=0)
popz.v
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [181]

:[178]
push.s "obj_shop5_491"@25396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 210
pop.v.i local.writerx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [180]

:[179]
push.v local.writerx
pushi.e 2
add.i.v
pop.v.v local.writerx

:[180]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v

:[181]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [186]

:[182]
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [184]

:[183]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 3
add.i.v
pop.v.v self.sell
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 4
pop.v.i self.menu
b [185]

:[184]
pushi.e 0
pop.v.i self.menu

:[185]
b [188]

:[186]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [188]

:[187]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[188]
push.v self.menu
pushi.e 4
cmp.i.v LT
bf [190]

:[189]
call.i scr_shop_draw_status(argc=0)
popz.v

:[190]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [276]

:[191]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [193]

:[192]
pushi.e 0
pop.v.i self.menu

:[193]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [195]

:[194]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [196]

:[195]
push.e 0

:[196]
bf [222]

:[197]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [199]

:[198]
push.s "obj_shop5_536"@25398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[199]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [201]

:[200]
push.s "obj_shop5_540"@25400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[201]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [203]

:[202]
push.s "obj_shop5_544"@25402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop5_545"@25404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[203]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [207]

:[204]
push.s "obj_shop5_549"@25405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop5_550"@25406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [207]

:[205]
push.s "obj_shop5_554"@25408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop5_555"@25410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop5_556"@25412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop5_557"@25414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop5_558"@25416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop5_559"@25418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop5_560"@25420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.gm
pushi.e 18
cmp.i.v GT
bf [207]

:[206]
push.s "obj_shop5_564"@25422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop5_565"@25424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[207]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [210]

:[208]
push.s "obj_shop5_575"@25426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [210]

:[209]
push.s "obj_shop5_579"@25428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[210]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [212]

:[211]
push.s "obj_shop5_584"@25430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[212]
push.v self.sell
pushi.e 7
cmp.i.v EQ
bf [216]

:[213]
push.s "obj_shop5_589"@25432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.itemnameb
push.s "obj_shop5_590"@25434
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.itemnameb
push.s "obj_shop5_591"@25436
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [215]

:[214]
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.itemnameb
push.s "obj_shop5_594"@25438
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[215]
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.itemnameb
push.s "obj_shop5_596"@25440
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[216]
push.v self.sell
pushi.e 8
cmp.i.v EQ
bf [218]

:[217]
push.s "obj_shop5_601"@25442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop5_602"@25444
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[218]
push.v self.sell
pushi.e 9
cmp.i.v EQ
bf [221]

:[219]
push.s "obj_shop5_607"@25446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [221]

:[220]
push.s "obj_shop5_611"@25448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[221]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.selling

:[222]
push.v self.sell
pushi.e 10
cmp.i.v EQ
bf [251]

:[223]
push.v self.c_con
pushi.e 0
cmp.i.v EQ
bf [227]

:[224]
pushi.e 784
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]
pushi.e 9
pop.v.i self.selling
push.s "obj_shop5_633"@25449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop5_634"@25451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop5_635"@25453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.c_con

:[227]
push.v self.c_con
pushi.e 1
cmp.i.v EQ
bf [229]

:[228]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [230]

:[229]
push.e 0

:[230]
bf [236]

:[231]
pushi.e 784
pushenv [233]

:[232]
call.i instance_destroy(argc=0)
popz.v

:[233]
popenv [232]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [235]

:[234]
push.v self.shopmus
call.i caster_pause(argc=1)
popz.v

:[235]
pushi.e 2
pop.v.i self.c_con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[236]
push.v self.c_con
pushi.e 2
cmp.i.v EQ
bf [238]

:[237]
push.v 1406.bodyx
pushi.e 3
add.i.v
pop.v.v 1406.bodyx
push.v 1406.boxx
pushi.e 3
add.i.v
pop.v.v 1406.boxx

:[238]
push.v self.c_con
pushi.e 3
cmp.i.v EQ
bf [240]

:[239]
pushi.e 4
pop.v.i self.c_con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -5
pushi.e 276
pop.v.i [array]global.flag

:[240]
push.v self.c_con
pushi.e 4
cmp.i.v EQ
bf [242]

:[241]
push.v 1406.bodyx
pushi.e 3
sub.i.v
pop.v.v 1406.bodyx
push.v 1406.boxx
pushi.e 3
sub.i.v
pop.v.v 1406.boxx

:[242]
push.v self.c_con
pushi.e 5
cmp.i.v EQ
bf [246]

:[243]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [245]

:[244]
push.v self.shopmus
call.i caster_resume(argc=1)
popz.v

:[245]
push.s "obj_shop5_672"@25455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop5_673"@25457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.c_con

:[246]
push.v self.c_con
pushi.e 6
cmp.i.v EQ
bf [248]

:[247]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [249]

:[248]
push.e 0

:[249]
bf [251]

:[250]
pushi.e 1
pop.v.i self.selling
pushi.e -1
pop.v.i self.c_con

:[251]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [258]

:[252]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [258]

:[253]
pushi.e 784
pushenv [257]

:[254]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [256]

:[255]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[256]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[257]
popenv [254]

:[258]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [260]

:[259]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [261]

:[260]
push.e 0

:[261]
bf [276]

:[262]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [264]

:[263]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [276]

:[264]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [267]

:[265]
push.v self.sell
pushi.e 9
cmp.i.v EQ
bt [267]

:[266]
push.v self.sell
pushi.e 10
cmp.i.v EQ
b [268]

:[267]
push.e 1

:[268]
bf [270]

:[269]
pushi.e 0
pop.v.i self.menu
b [271]

:[270]
pushi.e 3
pop.v.i self.menu

:[271]
push.v self.sell
pushi.e 7
cmp.i.v EQ
bf [273]

:[272]
pushi.e 6
pop.v.i self.menu
pushi.e 4
pop.v.i self.buffer
pushi.e -1
push.v self.sellpos
conv.v.i
push.v [array]self.value
pushi.e 1
add.i.v
pushi.e -1
push.v self.sellpos
conv.v.i
pop.v.v [array]self.value
pushi.e 1
pop.v.i self.specialsell
pushi.e 0
pop.v.i self.sellpos2

:[273]
push.v self.sell
pushi.e 8
cmp.i.v EQ
bf [275]

:[274]
pushi.e 6
pop.v.i self.menu
pushi.e 4
pop.v.i self.buffer
pushi.e -1
push.v self.sellpos
conv.v.i
push.v [array]self.value
push.d 1.25
mul.d.v
call.i ceil(argc=1)
pushi.e 1
add.i.v
pushi.e -1
push.v self.sellpos
conv.v.i
pop.v.v [array]self.value
pushi.e 2
pop.v.i self.specialsell
pushi.e 0
pop.v.i self.sellpos2

:[275]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[276]
push.v self.menu
pushi.e 5
cmp.i.v EQ
bf [388]

:[277]
pushi.e 0
pop.v.i self.specialsell
push.v self.joytimer
pushi.e 1
sub.i.v
pop.v.v self.joytimer
push.v self.joytimer
pushi.e 0
cmp.i.v LTE
bf [279]

:[278]
pushi.e 0
pop.v.i global.faceemotion

:[279]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.value
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.value
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.value
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.value
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.value
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.value
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.value
pushi.e 1
pushi.e -1
pushi.e 7
pop.v.i [array]self.value
call.i scr_itemvalue(argc=0)
popz.v
call.i scr_itemnameb(argc=0)
popz.v
pushi.e 0
pushi.e -1
pushi.e 8
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
pushi.e 9
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
pushi.e 10
pop.v.i [array]self.value
pushi.e 15
pop.v.i local.left_x
pushi.e 155
pop.v.i local.right_x
pushi.e 15
pop.v.i local.heart_space
pushi.e 999
pop.v.i local.max_width
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [281]

:[280]
pushi.e 12
pop.v.i local.left_x
pushi.e 163
pop.v.i local.right_x
pushi.e 13
pop.v.i local.heart_space
pushi.e 84
pop.v.i local.max_width

:[281]
pushi.e 0
pop.v.i self.i

:[282]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [286]

:[283]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
call.i string(argc=1)
push.s "shop5_sell_price"@32442
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.s_value
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
pushi.e -1
cmp.i.v EQ
bf [285]

:[284]
push.s "shop5_sell_unsellable"@32440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.s_value

:[285]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [282]

:[286]
pushi.e -1
pop.v.i self.odd
pushi.e 134
pop.v.i local.hearty
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [288]

:[287]
push.v local.hearty
pushi.e 2
sub.i.v
pop.v.v local.hearty

:[288]
push.v self.sellpos
pushi.e 0
cmp.i.v EQ
bt [292]

:[289]
push.v self.sellpos
pushi.e 2
cmp.i.v EQ
bt [292]

:[290]
push.v self.sellpos
pushi.e 4
cmp.i.v EQ
bt [292]

:[291]
push.v self.sellpos
pushi.e 6
cmp.i.v EQ
b [293]

:[292]
push.e 1

:[293]
bf [295]

:[294]
pushi.e 0
pop.v.i self.odd
pushloc.v local.hearty
push.v self.sellpos
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
mul.i.v
add.v.v
pushloc.v local.left_x
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[295]
push.v self.sellpos
pushi.e 1
cmp.i.v EQ
bt [299]

:[296]
push.v self.sellpos
pushi.e 3
cmp.i.v EQ
bt [299]

:[297]
push.v self.sellpos
pushi.e 5
cmp.i.v EQ
bt [299]

:[298]
push.v self.sellpos
pushi.e 7
cmp.i.v EQ
b [300]

:[299]
push.e 1

:[300]
bf [302]

:[301]
pushi.e 1
pop.v.i self.odd
pushloc.v local.hearty
push.v self.sellpos
pushi.e 1
sub.i.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
mul.i.v
add.v.v
pushloc.v local.right_x
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[302]
push.v self.sellpos
pushi.e 8
cmp.i.v EQ
bf [304]

:[303]
pushloc.v local.hearty
pushi.e 80
add.i.v
pushloc.v local.left_x
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[304]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [306]

:[305]
push.v self.odd
pushi.e 0
cmp.i.v EQ
b [307]

:[306]
push.e 0

:[307]
bf [310]

:[308]
pushi.e -1
push.v self.sellpos
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [310]

:[309]
push.v self.sellpos
pushi.e 1
add.i.v
pop.v.v self.sellpos

:[310]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [312]

:[311]
push.v self.odd
pushi.e 1
cmp.i.v EQ
b [313]

:[312]
push.e 0

:[313]
bf [315]

:[314]
push.v self.sellpos
pushi.e 1
sub.i.v
pop.v.v self.sellpos

:[315]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [335]

:[316]
pushi.e 0
pop.v.i self.d_fail
pushi.e -1
push.v self.sellpos
pushi.e 2
add.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v EQ
bf [318]

:[317]
pushi.e 1
pop.v.i self.d_fail

:[318]
push.v self.d_fail
pushi.e 1
cmp.i.v EQ
bf [321]

:[319]
push.v self.odd
pushi.e 1
cmp.i.v EQ
bf [321]

:[320]
pushi.e -1
push.v self.sellpos
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
b [322]

:[321]
push.e 0

:[322]
bf [324]

:[323]
pushi.e 2
pop.v.i self.d_fail

:[324]
push.v self.sellpos
pushi.e 6
cmp.i.v EQ
bt [327]

:[325]
push.v self.sellpos
pushi.e 7
cmp.i.v EQ
bt [327]

:[326]
push.v self.sellpos
pushi.e 8
cmp.i.v EQ
b [328]

:[327]
push.e 1

:[328]
bf [330]

:[329]
pushi.e 1
pop.v.i self.d_fail

:[330]
push.v self.d_fail
pushi.e 1
cmp.i.v EQ
bf [332]

:[331]
pushi.e 8
pop.v.i self.sellpos
b [335]

:[332]
push.v self.d_fail
pushi.e 2
cmp.i.v EQ
bf [334]

:[333]
push.v self.sellpos
pushi.e 1
add.i.v
pop.v.v self.sellpos
b [335]

:[334]
push.v self.sellpos
pushi.e 2
add.i.v
pop.v.v self.sellpos

:[335]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [349]

:[336]
push.v self.sellpos
pushi.e 0
cmp.i.v NEQ
bf [338]

:[337]
push.v self.sellpos
pushi.e 1
cmp.i.v NEQ
b [339]

:[338]
push.e 0

:[339]
bf [349]

:[340]
push.v self.sellpos
pushi.e 8
cmp.i.v EQ
bf [348]

:[341]
pushi.e 0
pop.v.i self.sellpos
pushi.e -1
pushi.e 2
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [343]

:[342]
pushi.e 2
pop.v.i self.sellpos

:[343]
pushi.e -1
pushi.e 4
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [345]

:[344]
pushi.e 4
pop.v.i self.sellpos

:[345]
pushi.e -1
pushi.e 6
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [347]

:[346]
pushi.e 6
pop.v.i self.sellpos

:[347]
b [349]

:[348]
push.v self.sellpos
pushi.e 2
sub.i.v
pop.v.v self.sellpos

:[349]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "888"@50961
conv.s.v
push.s "shop5_sell_price"@32442
conv.s.v
call.i scr_gettext(argc=2)
call.i string_width(argc=1)
call.i round(argc=1)
pop.v.v local.price_width
push.s "shop5_sell_separator"@32443
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.separator
pushloc.v local.separator
call.i string_width(argc=1)
pop.v.v local.sep_width
pushi.e 0
pop.v.i self.i

:[350]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [370]

:[351]
pushloc.v local.left_x
pushloc.v local.heart_space
add.v.v
pop.v.v local.xx
pushi.e 130
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pop.v.v local.yy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [353]

:[352]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.sold
pushi.e 0
cmp.i.v EQ
b [354]

:[353]
push.e 0

:[354]
bf [358]

:[355]
push.v local.xx
pushloc.v local.price_width
add.v.v
pop.v.v local.xx
pushloc.v local.xx
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.s_value
call.i string_width(argc=1)
call.i round(argc=1)
sub.v.v
pop.v.v local.value_x
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.s_value
pushloc.v local.yy
pushloc.v local.value_x
call.i draw_text(argc=3)
popz.v
pushloc.v local.separator
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.xx
pushloc.v local.sep_width
add.v.v
pop.v.v local.xx
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]global.itemnameb
pop.v.v local.name
pushi.e 1
pop.v.i local.scale
pushloc.v local.name
call.i string_width(argc=1)
pop.v.v local.width
pushloc.v local.width
pushloc.v local.max_width
cmp.v.v GT
bf [357]

:[356]
pushloc.v local.max_width
pushloc.v local.width
div.v.v
pop.v.v local.scale

:[357]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.scale
pushloc.v local.name
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text_transformed(argc=6)
popz.v
b [360]

:[358]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.sold
pushi.e 1
cmp.i.v EQ
bf [360]

:[359]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop5_sell_sold"@32447
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v

:[360]
pushloc.v local.right_x
pushloc.v local.heart_space
add.v.v
pop.v.v local.xx
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [362]

:[361]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.sold
pushi.e 0
cmp.i.v EQ
b [363]

:[362]
push.e 0

:[363]
bf [367]

:[364]
push.v local.xx
pushloc.v local.price_width
add.v.v
pop.v.v local.xx
pushloc.v local.xx
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.s_value
call.i string_width(argc=1)
call.i round(argc=1)
sub.v.v
pop.v.v local.value_x
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.s_value
pushloc.v local.yy
pushloc.v local.value_x
call.i draw_text(argc=3)
popz.v
pushloc.v local.separator
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.xx
pushloc.v local.sep_width
add.v.v
pop.v.v local.xx
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.itemnameb
pop.v.v local.name
pushi.e 1
pop.v.i local.scale
pushloc.v local.name
call.i string_width(argc=1)
pop.v.v local.width
pushloc.v local.width
pushloc.v local.max_width
cmp.v.v GT
bf [366]

:[365]
pushloc.v local.max_width
pushloc.v local.width
div.v.v
pop.v.v local.scale

:[366]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.scale
pushloc.v local.name
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text_transformed(argc=6)
popz.v
b [369]

:[367]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.sold
pushi.e 1
cmp.i.v EQ
bf [369]

:[368]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop5_sell_sold"@32447
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v

:[369]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [350]

:[370]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop_exit_submenu"@5053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 210
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop5_sell_gold"@32445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 210
conv.i.v
pushi.e 200
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [386]

:[371]
pushi.e 0
pop.v.i self.joytimer
pushi.e 3
pop.v.i self.buffer
push.v self.sellpos
pushi.e 8
cmp.i.v EQ
bf [373]

:[372]
pushi.e 0
pop.v.i self.menu
b [386]

:[373]
pushi.e -1
push.v self.sellpos
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v GT
bf [385]

:[374]
pushi.e 0
pop.v.i self.sellqual
pushi.e -5
pushi.e 265
push.v [array]global.flag
pushi.e 1
cmp.i.v LTE
bf [376]

:[375]
pushi.e 1
pop.v.i self.sellqual

:[376]
pushi.e -5
pushi.e 266
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [378]

:[377]
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.item
pushi.e 22
cmp.i.v EQ
b [379]

:[378]
push.e 0

:[379]
bf [381]

:[380]
pushi.e 1
pop.v.i self.sellqual
pushi.e 1
pushi.e -5
pushi.e 266
pop.v.i [array]global.flag

:[381]
push.v self.sellqual
pushi.e 1
cmp.i.v EQ
bf [383]

:[382]
pushi.e 4
pop.v.i self.menu
pushi.e 7
pop.v.i self.sell
pushi.e 9
pushi.e -5
pushi.e 265
pop.v.i [array]global.flag
b [384]

:[383]
pushi.e 6
pop.v.i self.menu
pushi.e 0
pop.v.i self.sellpos2

:[384]
b [386]

:[385]
pushi.e 64
conv.i.v
call.i snd_play(argc=1)
popz.v

:[386]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [388]

:[387]
pushi.e 0
pop.v.i self.menu
pushi.e 0
pop.v.i self.sellpos

:[388]
push.v self.menu
pushi.e 6
cmp.i.v EQ
bf [430]

:[389]
pushi.e 3
pop.v.i global.faceemotion
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
pushi.e 150
pop.v.i local.y_prompt
pushi.e 180
pop.v.i local.y_choice
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [391]

:[390]
push.v local.y_prompt
pushi.e 8
sub.i.v
pop.v.v local.y_prompt
push.v local.y_choice
pushi.e 6
add.i.v
pop.v.v local.y_choice

:[391]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.specialsell
pushi.e 2
cmp.i.v NEQ
bf [393]

:[392]
pushi.e -1
push.v self.sellpos
conv.v.i
push.v [array]self.value
call.i string(argc=1)
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.itemnameb
call.i string(argc=1)
push.s "shop5_sell_prompt"@32449
conv.s.v
call.i scr_gettext(argc=3)
pushloc.v local.y_prompt
pushi.e 55
conv.i.v
call.i draw_text(argc=3)
popz.v
b [394]

:[393]
pushi.e 5
pop.v.i global.faceemotion
pushi.e -1
push.v self.sellpos
conv.v.i
push.v [array]self.value
call.i string(argc=1)
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.itemnameb
call.i string(argc=1)
push.s "shop5_sell_prompt_special"@32451
conv.s.v
call.i scr_gettext(argc=3)
pushloc.v local.y_prompt
pushi.e 55
conv.i.v
call.i draw_text(argc=3)
popz.v

:[394]
push.s "shop5_sell_yes"@32453
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.y_choice
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "shop5_sell_no"@32454
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.y_choice
pushi.e 190
conv.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.y_choice
pushi.e 5
add.i.v
pushi.e 65
push.v self.sellpos2
pushi.e 110
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop5_sell_gold"@32445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 210
conv.i.v
pushi.e 200
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [396]

:[395]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [397]

:[396]
push.e 1

:[397]
bf [401]

:[398]
push.v self.sellpos2
pushi.e 0
cmp.i.v EQ
bf [400]

:[399]
pushi.e 1
pop.v.i self.sellpos2
b [401]

:[400]
pushi.e 0
pop.v.i self.sellpos2

:[401]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [403]

:[402]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [404]

:[403]
push.e 0

:[404]
bf [406]

:[405]
pushi.e 1
pop.v.i self.buffer
pushi.e 1
pop.v.i self.s_quit

:[406]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [408]

:[407]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [409]

:[408]
push.e 0

:[409]
bf [424]

:[410]
push.v self.sellpos2
pushi.e 1
cmp.i.v EQ
bf [412]

:[411]
pushi.e 1
pop.v.i self.s_quit
b [424]

:[412]
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.item
pushi.e 22
cmp.i.v NEQ
bf [414]

:[413]
pushi.e -5
pushi.e 265
dup.i 1
push.v [array]global.flag
pushi.e 1
sub.i.v
pop.i.v [array]global.flag

:[414]
pushi.e 90
pop.v.i self.joytimer
pushi.e 6
pop.v.i global.faceemotion
pushi.e 114
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.gold
pushi.e -1
push.v self.sellpos
conv.v.i
push.v [array]self.value
add.v.v
pop.v.v global.gold
pushi.e 0
conv.i.v
push.v self.sellpos
call.i scr_itemshift(argc=2)
popz.v
push.v self.thanks
pushi.e 1
add.i.v
pop.v.v self.thanks
push.v self.thanks
pushi.e 8
cmp.i.v GT
bf [416]

:[415]
pushi.e 8
pop.v.i self.thanks

:[416]
pushi.e 1
pushi.e -1
pushi.e 8
push.v self.thanks
sub.v.i
conv.v.i
pop.v.i [array]self.sold
pushi.e -5
push.v self.sellpos
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [418]

:[417]
push.v self.sellpos
pushi.e 0
cmp.i.v GT
b [419]

:[418]
push.e 0

:[419]
bf [421]

:[420]
push.v self.sellpos
pushi.e 1
sub.i.v
pop.v.v self.sellpos

:[421]
pushi.e -5
pushi.e 0
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [423]

:[422]
pushi.e 5
pop.v.i self.menu
b [424]

:[423]
pushi.e 0
pop.v.i self.menu

:[424]
push.v self.s_quit
pushi.e 1
cmp.i.v EQ
bf [430]

:[425]
pushi.e 0
pop.v.i self.s_quit
pushi.e 5
pop.v.i self.menu
push.v self.specialsell
pushi.e 0
cmp.i.v GT
bf [430]

:[426]
push.v self.specialsell
pushi.e 1
cmp.i.v EQ
bf [428]

:[427]
pushi.e 4
pop.v.i self.menu
pushi.e 8
pop.v.i self.sell

:[428]
push.v self.specialsell
pushi.e 2
cmp.i.v EQ
bf [430]

:[429]
pushi.e 4
pop.v.i self.menu
pushi.e 9
pop.v.i self.sell

:[430]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [433]

:[431]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v GT
bf [433]

:[432]
pushi.e 0
pushi.e -1
push.v self.menu
conv.v.i
pop.v.i [array]self.menuc

:[433]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [436]

:[434]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v LT
bf [436]

:[435]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[436]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[437]
pushi.e 71
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[438]
pushi.e 5000
pop.v.i global.gold

:[end]