.localvar 0 arguments
.localvar 1 wdiff 8779
.localvar 2 adiff 8780
.localvar 3 wdiffs 8781
.localvar 4 adiffs 8782
.localvar 5 i 8783
.localvar 6 cost 8784
.localvar 7 hearty 8785
.localvar 8 heartx 8786
.localvar 9 textx 8787
.localvar 10 writerx 8788

:[0]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [13]

:[4]
pushi.e 2
pushglb.v global.wstrength
sub.v.i
pop.v.v local.wdiff
pushi.e 5
pushglb.v global.adef
sub.v.i
pop.v.v local.adiff
pushloc.v local.wdiff
call.i string(argc=1)
pop.v.v local.wdiffs
pushloc.v local.wdiff
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
push.s "+"@48708
pushloc.v local.wdiffs
add.v.s
pop.v.v local.wdiffs

:[6]
pushloc.v local.adiff
call.i string(argc=1)
pop.v.v local.adiffs
pushloc.v local.adiff
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
push.s "+"@48708
pushloc.v local.adiffs
add.v.s
pop.v.v local.adiffs

:[8]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 0
cmp.i.v GTE
bf [10]

:[9]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushloc.v local.adiffs
pushloc.v local.wdiffs
push.s "shop2_itemdesc_"@50935
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=3)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v

:[13]
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
bf [37]

:[14]
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
bf [22]

:[15]
push.s "obj_shop2_234"@24497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_shop2_235"@24499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
pushi.e 1
pop.v.i self.mainmessage
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_shop2_236"@24501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_shop2_237"@24503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
b [28]

:[22]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [28]

:[23]
pushi.e 784
pushenv [27]

:[24]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[26]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[27]
popenv [24]

:[28]
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
bf [37]

:[29]
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
bf [31]

:[30]
pushi.e 1
pop.v.i self.menu

:[31]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[33]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
pushi.e 3
pop.v.i self.menu

:[35]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [37]

:[36]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[37]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [39]

:[38]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [110]

:[41]
pushi.e 0
pop.v.i local.i

:[42]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [44]

:[43]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
pop.v.v local.cost
push.s "item_name_"@3562
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.item
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pushloc.v local.cost
push.s "shop_buy_list"@32237
conv.s.v
call.i scr_gettext(argc=3)
pushi.e 130
pushi.e 20
pushloc.v local.i
mul.v.i
add.v.i
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [42]

:[44]
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
bf [79]

:[45]
pushi.e 4
pop.v.i self.menumax
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [68]

:[46]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_shop2_287"@24505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_shop2_288"@24507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_shop2_289"@24509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_shop2_290"@24511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_shop2_291"@24513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [67]

:[57]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_shop2_295"@24515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_shop2_296"@24517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_shop2_297"@24519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_shop2_298"@24521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_shop2_299"@24523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
popz.v

:[68]
pushi.e 134
pop.v.i local.hearty
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [70]

:[69]
push.v local.hearty
pushi.e 2
sub.i.v
pop.v.v local.hearty

:[70]
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
bf [74]

:[71]
pushi.e 2
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [73]

:[72]
pushi.e 0
pop.v.i self.menu

:[73]
b [76]

:[74]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [76]

:[75]
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[76]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [78]

:[77]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[78]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc

:[79]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [98]

:[80]
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
bf [82]

:[81]
push.v local.textx
pushi.e 8
sub.i.v
pop.v.v local.textx

:[82]
pushi.e 1
pop.v.i self.menumax
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
push.s "shop_buy_prompt1"@32241
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
push.s "shop_buy_prompt2"@32243
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 145
conv.i.v
pushloc.v local.textx
call.i draw_text(argc=3)
popz.v
push.s "yes"@3097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushloc.v local.heartx
pushi.e 15
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "no"@3095
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
bf [84]

:[83]
push.v local.hearty
pushi.e 2
sub.i.v
pop.v.v local.hearty

:[84]
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
bf [86]

:[85]
pushi.e 1
pop.v.i self.menu
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 2
pop.v.i self.sidemessage
b [98]

:[86]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [98]

:[87]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [95]

:[88]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemcost
call.i scr_cost(argc=1)
popz.v
push.v self.afford
pushi.e 1
cmp.i.v EQ
bf [94]

:[89]
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
bf [91]

:[90]
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

:[91]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
pushi.e 4
pop.v.i self.sidemessage

:[93]
b [95]

:[94]
pushi.e 3
pop.v.i self.sidemessage

:[95]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 2
pop.v.i self.sidemessage

:[97]
pushi.e 1
pop.v.i self.menu

:[98]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [108]

:[99]
push.v self.minimenuy
pushi.e 120
call.i scr_shop_infobox_height(argc=0)
sub.v.i
cmp.v.v GT
bf [101]

:[100]
push.v self.minimenuy
pushi.e 3
sub.i.v
pop.v.v self.minimenuy

:[101]
push.v self.minimenuy
pushi.e 55
cmp.i.v GT
bf [103]

:[102]
push.v self.minimenuy
pushi.e 2
sub.i.v
pop.v.v self.minimenuy

:[103]
push.v self.minimenuy
pushi.e 80
cmp.i.v GT
bf [105]

:[104]
push.v self.minimenuy
pushi.e 4
sub.i.v
pop.v.v self.minimenuy

:[105]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [107]

:[106]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[107]
b [110]

:[108]
push.v self.minimenuy
pushi.e 120
cmp.i.v LT
bf [110]

:[109]
push.v self.minimenuy
pushi.e 20
add.i.v
pop.v.v self.minimenuy

:[110]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [140]

:[111]
pushi.e 4
pop.v.i self.menumax
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [123]

:[112]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [122]

:[113]
push.s "shop2_talk1_title"@32278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
push.s "shop2_talk2a_title"@32280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[115]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
push.s "shop2_talk2b_title"@32282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[117]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [119]

:[118]
push.s "shop2_talk2c_title"@32284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[119]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [121]

:[120]
push.s "shop2_talk2d_title"@32286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[121]
push.s "shop2_talk3_title"@32288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop2_talk4_title"@32290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
b [123]

:[122]
push.s "shop2_talk9_title"@32299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop2_talk10_title"@32301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop2_talk11_title"@32303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop2_talk12_title"@32305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[123]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.s "shop2_talk5_title"@32292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop2_talk6_title"@32294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop2_talk7_title"@32296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop2_talk8_title"@32297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[125]
call.i scr_shop_draw_talkmenu(argc=0)
popz.v
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [133]

:[126]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [128]

:[127]
push.s "obj_shop2_390"@24525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[128]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
push.s "obj_shop2_392"@24527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[130]
pushi.e 210
pop.v.i local.writerx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [132]

:[131]
push.v local.writerx
pushi.e 2
add.i.v
pop.v.v local.writerx

:[132]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v

:[133]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [138]

:[134]
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [136]

:[135]
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
b [137]

:[136]
pushi.e 0
pop.v.i self.menu

:[137]
b [140]

:[138]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [140]

:[139]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[140]
push.v self.menu
pushi.e 4
cmp.i.v LT
bf [142]

:[141]
call.i scr_shop_draw_status(argc=0)
popz.v

:[142]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [213]

:[143]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [145]

:[144]
pushi.e 0
pop.v.i self.menu

:[145]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [147]

:[146]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [196]

:[149]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [155]

:[150]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [154]

:[151]
push.s "obj_shop2_438"@24529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_439"@24531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_440"@24533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_441"@24534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_442"@24536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.soldo
pushi.e 1
add.i.v
pop.v.v self.soldo
push.v self.soldo
pushi.e 1
cmp.i.v GT
bf [153]

:[152]
push.s "obj_shop2_444"@24538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[153]
b [155]

:[154]
push.s "obj_shop2_448"@24541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[155]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [160]

:[156]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [158]

:[157]
push.s "obj_shop2_454"@24543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[158]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
push.s "obj_shop2_456"@24545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[160]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [166]

:[161]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [163]

:[162]
push.s "obj_shop2_462"@24547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_463"@24549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [164]

:[163]
push.s "obj_shop2_468"@24551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_469"@24553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_470"@24555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_471"@24557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_472"@24559
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_473"@24561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[164]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [166]

:[165]
push.s "obj_shop2_478"@24563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_479"@24565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_480"@24567
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_481"@24569
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_482"@24571
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_483"@24573
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop2_484"@24575
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_shop2_485"@24577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_shop2_486"@24579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_shop2_487"@24581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_shop2_488"@24583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_shop2_489"@24585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg

:[166]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [185]

:[167]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [169]

:[168]
push.s "obj_shop2_497"@24587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_498"@24589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[169]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [171]

:[170]
push.s "obj_shop2_503"@24591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_504"@24593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_505"@24595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_506"@24597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_507"@24599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_508"@24601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop2_509"@24603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[171]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.s "obj_shop2_516"@24605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_517"@24607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_518"@24609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_519"@24611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[173]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [175]

:[174]
push.s "obj_shop2_524"@24613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_525"@24615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_526"@24617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_527"@24619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_528"@24621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_529"@24623
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[175]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [177]

:[176]
pushi.e 3
pushi.e -5
pushi.e 96
pop.v.i [array]global.flag

:[177]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [179]

:[178]
pushi.e 2
pushi.e -5
pushi.e 96
pop.v.i [array]global.flag

:[179]
pushi.e -5
pushi.e 96
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [181]

:[180]
pushi.e 1
pushi.e -5
pushi.e 96
pop.v.i [array]global.flag

:[181]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [183]

:[182]
push.s "obj_shop2_537"@24625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_538"@24627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_539"@24629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_540"@24631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_541"@24633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_542"@24635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop2_543"@24637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_shop2_544"@24639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_shop2_545"@24641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_shop2_546"@24643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_shop2_547"@24645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_shop2_548"@24647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_shop2_549"@24649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[183]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [185]

:[184]
push.s "obj_shop2_555"@24651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_556"@24653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_557"@24655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_558"@24657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[185]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [190]

:[186]
push.s "obj_shop2_564"@24659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_565"@24661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_566"@24663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_567"@24664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_568"@24666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_569"@24668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
push.s "obj_shop2_573"@24670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_574"@24672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_575"@24674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_576"@24676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_577"@24678
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_578"@24680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[188]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [190]

:[189]
push.s "obj_shop2_584"@24682
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_585"@24684
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_586"@24686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_587"@24688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_588"@24690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[190]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [195]

:[191]
push.s "obj_shop2_595"@24692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_596"@24694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_597"@24696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_598"@24698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [193]

:[192]
push.s "obj_shop2_601"@24700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_602"@24702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_603"@24704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_604"@24706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_605"@24708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_606"@24710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[193]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [195]

:[194]
push.s "obj_shop2_612"@24712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_613"@24714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_614"@24716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_615"@24718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_616"@24720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_617"@24722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[195]
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

:[196]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [203]

:[197]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [203]

:[198]
pushi.e 784
pushenv [202]

:[199]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [201]

:[200]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[201]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[202]
popenv [199]

:[203]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [205]

:[204]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [206]

:[205]
push.e 0

:[206]
bf [213]

:[207]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [209]

:[208]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [213]

:[209]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [211]

:[210]
pushi.e 0
pop.v.i self.menu
b [212]

:[211]
pushi.e 3
pop.v.i self.menu

:[212]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[213]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [216]

:[214]
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
bf [216]

:[215]
pushi.e 0
pushi.e -1
push.v self.menu
conv.v.i
pop.v.i [array]self.menuc

:[216]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [219]

:[217]
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
bf [219]

:[218]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[219]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[220]
pushi.e 71
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[221]
pushi.e 5000
pop.v.i global.gold

:[end]