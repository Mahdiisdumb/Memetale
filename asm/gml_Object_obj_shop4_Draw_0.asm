.localvar 0 arguments
.localvar 1 soldout 8823
.localvar 2 i 8824
.localvar 3 pad 8825
.localvar 4 cost 8826
.localvar 5 str 8827
.localvar 6 namepos 8828
.localvar 7 namestr 8829
.localvar 8 xscale 8830
.localvar 9 hearty 8831
.localvar 10 heartx 8832
.localvar 11 textx 8833
.localvar 12 writerx 8834

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
pushi.e 0
pop.v.i local.soldout
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 445
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.soldout

:[6]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v LTE
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
pushloc.v local.soldout
conv.v.b
bf [12]

:[11]
push.s "shop4_itemdesc_soldout"@32364
conv.s.v
call.i scr_gettext(argc=1)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v
b [13]

:[12]
push.s "shop4_itemdesc_"@50944
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
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
bf [42]

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
bf [24]

:[15]
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [19]

:[16]
push.s "obj_shop4_244"@25091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_shop4_245"@25093
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
b [23]

:[19]
push.s "obj_shop4_249"@25095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_shop4_250"@25097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_shop4_252"@25099
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
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
b [30]

:[24]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [30]

:[25]
pushi.e 784
pushenv [29]

:[26]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[28]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[29]
popenv [26]

:[30]
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
bf [42]

:[31]
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
bf [33]

:[32]
pushi.e 1
pop.v.i self.menu

:[33]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[35]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [40]

:[36]
pushi.e 3
pop.v.i self.menu
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
pushi.e 4
pop.v.i self.menu
pushi.e 20
pop.v.i self.sell

:[38]
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 4
pop.v.i self.menu
pushi.e 21
pop.v.i self.sell

:[40]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[42]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [44]

:[43]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [45]

:[44]
push.e 1

:[45]
bf [152]

:[46]
pushi.e 0
pop.v.i local.i

:[47]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [54]

:[48]
push.s "  "@7168
pop.v.s local.pad
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [50]

:[49]
push.s " "@18
pop.v.s local.pad

:[50]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.itemcost
pushi.e 100
cmp.i.v LT
bf [52]

:[51]
pushloc.v local.pad
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
add.v.v
pop.v.v local.cost
b [53]

:[52]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
pop.v.v local.cost

:[53]
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
b [47]

:[54]
pushi.e -5
pushi.e 445
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.s ""@36
conv.s.v
push.s "500"@50945
conv.s.v
push.s "shop_buy_list"@32237
conv.s.v
call.i scr_gettext(argc=3)
pop.v.v local.str
pushloc.v local.str
pushi.e 190
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 30
pushloc.v local.str
call.i string_width(argc=1)
add.v.i
pop.v.v local.namepos
push.s "shop4_item_61_longname"@32366
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.namestr
call.i scr_shop_divider_pos(argc=0)
pushi.e 15
sub.i.v
pushloc.v local.namepos
sub.v.v
pushloc.v local.namestr
call.i string_width(argc=1)
div.v.v
pop.v.v local.xscale
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.xscale
pushloc.v local.namestr
pushi.e 190
conv.i.v
pushloc.v local.namepos
call.i draw_text_transformed(argc=6)
popz.v
b [57]

:[56]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop_buy_soldout"@32239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 190
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[57]
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
bf [118]

:[58]
pushi.e 4
pop.v.i self.menumax
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [99]

:[59]
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [72]

:[60]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_shop4_329"@25101
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_shop4_330"@25103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_shop4_331"@25105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_shop4_332"@25107
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [70]

:[69]
push.s "obj_shop4_333"@25109
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
push.v self.sidemessage
pushi.e 5
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_shop4_334"@25111
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [98]

:[73]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_shop4_338"@25113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_shop4_339"@25115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_shop4_340"@25117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_shop4_341"@25119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_shop4_342"@25121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
push.v self.sidemessage
pushi.e 5
cmp.i.v EQ
bf [85]

:[84]
push.s "obj_shop4_343"@25123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[85]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [98]

:[86]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_shop4_347"@25125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_shop4_348"@25127
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_shop4_349"@25128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_shop4_350"@25129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_shop4_351"@25130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
push.v self.sidemessage
pushi.e 5
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_shop4_352"@25131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[98]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
popz.v

:[99]
pushi.e 134
pop.v.i local.hearty
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [101]

:[100]
push.v local.hearty
pushi.e 2
sub.i.v
pop.v.v local.hearty

:[101]
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
bf [113]

:[102]
pushi.e 0
pop.v.i local.soldout
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [104]

:[103]
pushi.e -5
pushi.e 445
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
pushi.e 1
pop.v.i local.soldout

:[107]
pushloc.v local.soldout
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushi.e 2
pop.v.i self.menu
b [110]

:[109]
pushi.e 5
pop.v.i self.sidemessage

:[110]
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [112]

:[111]
pushi.e 0
pop.v.i self.menu

:[112]
b [115]

:[113]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [115]

:[114]
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[115]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [117]

:[116]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[117]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc

:[118]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [140]

:[119]
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
bf [121]

:[120]
push.v local.textx
pushi.e 8
sub.i.v
pop.v.v local.textx

:[121]
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
bf [123]

:[122]
push.v local.hearty
pushi.e 2
sub.i.v
pop.v.v local.hearty

:[123]
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
bf [125]

:[124]
pushi.e 1
pop.v.i self.menu
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 2
pop.v.i self.sidemessage
b [140]

:[125]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [140]

:[126]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [137]

:[127]
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
bf [136]

:[128]
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
bf [133]

:[129]
push.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemcost
sub.v.v
pop.v.v global.gold
pushi.e 114
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.sidemessage
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [131]

:[130]
pushi.e 1
pushi.e -5
pushi.e 435
pop.v.i [array]global.flag

:[131]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [133]

:[132]
pushi.e 1
pushi.e -5
pushi.e 445
pop.v.i [array]global.flag

:[133]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
pushi.e 4
pop.v.i self.sidemessage

:[135]
b [137]

:[136]
pushi.e 3
pop.v.i self.sidemessage

:[137]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
pushi.e 2
pop.v.i self.sidemessage

:[139]
pushi.e 1
pop.v.i self.menu

:[140]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [150]

:[141]
push.v self.minimenuy
pushi.e 120
call.i scr_shop_infobox_height(argc=0)
sub.v.i
cmp.v.v GT
bf [143]

:[142]
push.v self.minimenuy
pushi.e 3
sub.i.v
pop.v.v self.minimenuy

:[143]
push.v self.minimenuy
pushi.e 55
cmp.i.v GT
bf [145]

:[144]
push.v self.minimenuy
pushi.e 2
sub.i.v
pop.v.v self.minimenuy

:[145]
push.v self.minimenuy
pushi.e 80
cmp.i.v GT
bf [147]

:[146]
push.v self.minimenuy
pushi.e 4
sub.i.v
pop.v.v self.minimenuy

:[147]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [149]

:[148]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[149]
b [152]

:[150]
push.v self.minimenuy
pushi.e 120
cmp.i.v LT
bf [152]

:[151]
push.v self.minimenuy
pushi.e 20
add.i.v
pop.v.v self.minimenuy

:[152]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [198]

:[153]
pushi.e 4
pop.v.i self.menumax
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [183]

:[154]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [182]

:[155]
push.s "shop4_talk1_title"@32368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [157]

:[156]
push.s "shop4_talk2a_title"@32370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[157]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
push.s "shop4_talk2b_title"@32372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[159]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [161]

:[160]
push.s "shop4_talk2c_title"@32374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[161]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [163]

:[162]
push.s "shop4_talk2d_title"@32376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[163]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [165]

:[164]
push.s "shop4_talk2e_title"@32378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[165]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [167]

:[166]
push.s "shop4_talk2f_title"@32380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[167]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [169]

:[168]
push.s "shop4_talk2g_title"@32382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[169]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [171]

:[170]
push.s "shop4_talk2h_title"@32384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[171]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [173]

:[172]
push.s "shop4_talk2i_title"@32386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[173]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [175]

:[174]
push.s "shop4_talk3a_title"@32387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[175]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
push.s "shop4_talk3b_title"@32389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[177]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [179]

:[178]
push.s "shop4_talk3c_title"@32391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[179]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [181]

:[180]
push.s "shop4_talk3d_title"@32393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[181]
push.s "shop4_talk4_title"@32395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
b [183]

:[182]
push.s "shop4_talk9_title"@32402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop4_talk10_title"@32403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop4_talk11_title"@32405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop4_talk12_title"@32407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[183]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [185]

:[184]
push.s "shop4_talk5_title"@32396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop4_talk6_title"@32398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop4_talk7_title"@32399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop4_talk8_title"@32400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[185]
call.i scr_shop_draw_talkmenu(argc=0)
popz.v
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [191]

:[186]
push.s "obj_shop4_472"@25133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
push.s "obj_shop4_473"@25135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[188]
pushi.e 210
pop.v.i local.writerx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [190]

:[189]
push.v local.writerx
pushi.e 2
add.i.v
pop.v.v local.writerx

:[190]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v

:[191]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [196]

:[192]
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [194]

:[193]
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
b [195]

:[194]
pushi.e 0
pop.v.i self.menu

:[195]
b [198]

:[196]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [198]

:[197]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[198]
push.v self.menu
pushi.e 4
cmp.i.v LT
bf [200]

:[199]
call.i scr_shop_draw_status(argc=0)
popz.v

:[200]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [304]

:[201]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [203]

:[202]
pushi.e 0
pop.v.i self.menu

:[203]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [205]

:[204]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [206]

:[205]
push.e 0

:[206]
bf [284]

:[207]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [214]

:[208]
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [212]

:[209]
push.s "obj_shop4_519"@25137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.soldo
pushi.e 1
add.i.v
pop.v.v self.soldo
push.v self.soldo
pushi.e 1
cmp.i.v GT
bf [211]

:[210]
push.s "obj_shop4_521"@25139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[211]
b [214]

:[212]
push.s "obj_shop4_525"@25141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [214]

:[213]
push.s "obj_shop4_529"@25143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[214]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [218]

:[215]
push.s "obj_shop4_535"@25145
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 1
cmp.i.v GT
bf [218]

:[216]
push.s "obj_shop4_538"@25147
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [218]

:[217]
push.s "obj_shop4_539"@25149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[218]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [223]

:[219]
push.s "obj_shop4_545"@25151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_546"@25153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_547"@25155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [221]

:[220]
push.s "obj_shop4_551"@25157
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_552"@25159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_553"@25161
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_554"@25163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[221]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [223]

:[222]
push.s "obj_shop4_559"@25165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_560"@25167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_561"@25169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[223]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [255]

:[224]
push.s "obj_shop4_566"@25171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [226]

:[225]
push.s "obj_shop4_570"@25173
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[226]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [228]

:[227]
push.s "obj_shop4_575"@25175
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_576"@25177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_577"@25179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_578"@25181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_579"@25183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_580"@25184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop4_581"@25186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_shop4_582"@25187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_shop4_583"@25189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[228]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [230]

:[229]
push.s "obj_shop4_588"@25191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_589"@25193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_590"@25195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_591"@25197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_592"@25199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_593"@25201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop4_594"@25203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_shop4_595"@25205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_shop4_596"@25207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_shop4_597"@25209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[230]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [232]

:[231]
push.s "obj_shop4_603"@25211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[232]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [234]

:[233]
push.s "obj_shop4_608"@25213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_609"@25215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_610"@25217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_611"@25219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_612"@25221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_613"@25223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop4_614"@25224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_shop4_615"@25226
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[234]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [236]

:[235]
push.s "obj_shop4_620"@25228
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_621"@25230
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_622"@25232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_623"@25234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_624"@25236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_625"@25238
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop4_626"@25240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[236]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [238]

:[237]
push.s "obj_shop4_631"@25242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_632"@25244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[238]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [240]

:[239]
push.s "obj_shop4_638"@25246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_639"@25247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_640"@25249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_641"@25251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_642"@25253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_643"@25255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop4_644"@25257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_shop4_645"@25259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_shop4_646"@25261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_shop4_647"@25262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[240]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [242]

:[241]
push.s "obj_shop4_651"@25264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_652"@25266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_653"@25268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_654"@25270
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_655"@25272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_656"@25274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[242]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [245]

:[243]
push.s "obj_shop4_662"@25276
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_663"@25278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 9
cmp.i.v GTE
bf [245]

:[244]
push.s "obj_shop4_667"@25280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_668"@25282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_669"@25283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_670"@25285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_671"@25287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[245]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [247]

:[246]
push.s "obj_shop4_678"@25289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_679"@25291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_680"@25293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_681"@25295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_682"@25297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_683"@25299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[247]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [249]

:[248]
pushi.e 9
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag

:[249]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [251]

:[250]
pushi.e 6
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag

:[251]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [253]

:[252]
pushi.e 2
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag

:[253]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [255]

:[254]
pushi.e 1
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag

:[255]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [274]

:[256]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [258]

:[257]
push.s "obj_shop4_698"@25301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[258]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [260]

:[259]
push.s "obj_shop4_704"@25303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_705"@25305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_706"@25306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_707"@25308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_708"@25310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_709"@25311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop4_710"@25313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[260]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [262]

:[261]
push.s "obj_shop4_716"@25315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_717"@25317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_718"@25319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_719"@25321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[262]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [264]

:[263]
push.s "obj_shop4_724"@25323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_725"@25324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_726"@25326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[264]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [266]

:[265]
pushi.e 3
pushi.e -5
pushi.e 436
pop.v.i [array]global.flag

:[266]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [268]

:[267]
pushi.e 2
pushi.e -5
pushi.e 436
pop.v.i [array]global.flag

:[268]
pushi.e -5
pushi.e 436
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [270]

:[269]
pushi.e 1
pushi.e -5
pushi.e 436
pop.v.i [array]global.flag

:[270]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [272]

:[271]
push.s "obj_shop4_734"@25328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_735"@25330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_736"@25332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_737"@25334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_738"@25336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_739"@25338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[272]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [274]

:[273]
push.s "obj_shop4_744"@25340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_745"@25341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_746"@25343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_747"@25345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[274]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [279]

:[275]
push.s "obj_shop4_756"@25347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_757"@25349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_758"@25350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_759"@25352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_760"@25354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop4_761"@25356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop4_762"@25358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [277]

:[276]
push.s "obj_shop4_767"@25360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_768"@25362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_769"@25364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_770"@25366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[277]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [279]

:[278]
push.s "obj_shop4_775"@25368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_776"@25370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[279]
push.v self.sell
pushi.e 20
cmp.i.v EQ
bf [281]

:[280]
push.s "obj_shop4_785"@25372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[281]
push.v self.sell
pushi.e 21
cmp.i.v EQ
bf [283]

:[282]
push.s "obj_shop4_790"@25374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop4_792"@25376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop4_793"@25378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop4_794"@25379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop4_795"@25381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
pushi.e -5
pushi.e 435
pop.v.i [array]global.flag

:[283]
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

:[284]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [291]

:[285]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [291]

:[286]
pushi.e 784
pushenv [290]

:[287]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [289]

:[288]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[289]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[290]
popenv [287]

:[291]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [293]

:[292]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [294]

:[293]
push.e 0

:[294]
bf [304]

:[295]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [297]

:[296]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [304]

:[297]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [299]

:[298]
push.v self.sell
pushi.e 20
cmp.i.v EQ
b [300]

:[299]
push.e 1

:[300]
bf [302]

:[301]
pushi.e 0
pop.v.i self.menu
b [303]

:[302]
pushi.e 3
pop.v.i self.menu

:[303]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[304]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [307]

:[305]
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
bf [307]

:[306]
pushi.e 0
pushi.e -1
push.v self.menu
conv.v.i
pop.v.i [array]self.menuc

:[307]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [310]

:[308]
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
bf [310]

:[309]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[310]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[311]
pushi.e 71
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [313]

:[312]
pushi.e 5000
pop.v.i global.gold

:[313]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [315]

:[314]
pushi.e -5
pushi.e 437
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[315]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[316]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 313
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]