.localvar 0 arguments
.localvar 1 wdiff 8801
.localvar 2 adiff 8802
.localvar 3 wdiffs 8803
.localvar 4 adiffs 8804
.localvar 5 soldout 8805
.localvar 6 divider_x 8806
.localvar 7 bratty_x 8807
.localvar 8 catty_x 8808
.localvar 9 i 8809
.localvar 10 pad 8810
.localvar 11 cost 8811
.localvar 12 hearty 8812
.localvar 13 heartx 8813
.localvar 14 textx 8814
.localvar 15 writerx 8815

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
bf [21]

:[4]
pushi.e 12
pushglb.v global.wstrength
sub.v.i
pop.v.v local.wdiff
pushi.e 12
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
pushi.e 0
pop.v.i local.soldout
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 442
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.soldout

:[10]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 443
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.soldout

:[12]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e -5
pushi.e 444
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.soldout

:[14]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 0
cmp.i.v GTE
bf [16]

:[15]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [21]

:[18]
pushloc.v local.soldout
conv.v.b
bf [20]

:[19]
push.s "shop3_itemdesc_soldout"@32315
conv.s.v
call.i scr_gettext(argc=1)
push.v self.minimenuy
call.i scr_shop_draw_infobox(argc=2)
popz.v
b [21]

:[20]
pushloc.v local.adiffs
pushloc.v local.wdiffs
push.s "shop3_itemdesc_"@50939
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

:[21]
push.v self.menu
pushi.e 4
cmp.i.v LT
conv.b.v
call.i scr_shop_draw_window(argc=1)
popz.v
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [25]

:[22]
pushi.e 105
pop.v.i local.divider_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [24]

:[23]
pushi.e 111
pop.v.i local.divider_x

:[24]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 236
conv.i.v
pushloc.v local.divider_x
pushi.e 2
add.i.v
pushi.e 124
conv.i.v
pushloc.v local.divider_x
call.i ossafe_fill_rectangle(argc=4)
popz.v
b [27]

:[25]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 236
conv.i.v
pushi.e 159
conv.i.v
pushi.e 124
conv.i.v
pushi.e 157
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[27]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [55]

:[28]
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
bf [38]

:[29]
push.s "obj_shop3_357"@24723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_shop3_358"@24725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_shop3_359"@24727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
pushi.e -10
pop.v.i local.bratty_x
pushi.e 93
pop.v.i local.catty_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [35]

:[34]
push.v local.bratty_x
pushi.e 3
sub.i.v
pop.v.v local.bratty_x
push.v local.catty_x
pushi.e 4
add.i.v
pop.v.v local.catty_x

:[35]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushloc.v local.bratty_x
call.i instance_create(argc=3)
pop.v.v self.brattywriter
push.i 13941759
push.v self.brattywriter
conv.v.i
pop.v.i [stacktop]self.mycolor
push.s "obj_shop3_362"@24729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_shop3_363"@24731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushloc.v local.catty_x
call.i instance_create(argc=3)
pop.v.v self.cattywriter
push.i 16759772
push.v self.cattywriter
conv.v.i
pop.v.i [stacktop]self.mycolor
pushi.e 0
push.v self.catty
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
push.v self.bratty
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
push.v self.catty
conv.v.i
pop.v.i [stacktop]self.armexp
pushi.e 0
push.v self.bratty
conv.v.i
pop.v.i [stacktop]self.armexp
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
b [44]

:[38]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [44]

:[39]
pushi.e 784
pushenv [43]

:[40]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[42]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[43]
popenv [40]

:[44]
pushi.e 3
pop.v.i self.menumax
push.v self.murder
pushi.e 0
cmp.i.v NEQ
conv.b.v
call.i scr_shop_draw_topmenu(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [55]

:[45]
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
bf [47]

:[46]
pushi.e 1
pop.v.i self.menu

:[47]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[49]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [53]

:[50]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushi.e 3
pop.v.i self.menu
b [53]

:[52]
pushi.e 7
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[53]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [55]

:[54]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[55]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [57]

:[56]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [58]

:[57]
push.e 1

:[58]
bf [164]

:[59]
pushi.e 0
pop.v.i local.i

:[60]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [81]

:[61]
pushi.e 0
pop.v.i local.soldout
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e -5
pushi.e 442
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.soldout

:[63]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
pushi.e -5
pushi.e 443
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.soldout

:[65]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
pushi.e -5
pushi.e 444
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.soldout

:[67]
pushloc.v local.soldout
conv.v.b
bf [69]

:[68]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop_buy_soldout"@32239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 130
pushi.e 20
pushloc.v local.i
mul.v.i
add.v.i
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [80]

:[69]
push.s "  "@7168
pop.v.s local.pad
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [71]

:[70]
push.s " "@18
pop.v.s local.pad

:[71]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.itemcost
pushi.e 100
cmp.i.v LT
bf [76]

:[72]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushloc.v local.pad
push.s "00"@50928
add.s.v
pop.v.v local.cost
b [75]

:[74]
pushloc.v local.pad
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
add.v.v
pop.v.v local.cost

:[75]
b [79]

:[76]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.s "000"@50942
pop.v.s local.cost
b [79]

:[78]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
pop.v.v local.cost

:[79]
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

:[80]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [60]

:[81]
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

:[82]
pushi.e 4
pop.v.i self.menumax
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [99]

:[83]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [97]

:[84]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_shop3_474"@24733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_shop3_475"@24735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_shop3_476"@24737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_shop3_477"@24739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_shop3_478"@24741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
push.v self.sidemessage
pushi.e 5
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_shop3_479"@24743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
b [98]

:[97]
push.s "obj_shop3_481"@24744
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
pop.v.v self.cattywriter
push.i 16759772
push.v self.cattywriter
conv.v.i
pop.v.i [stacktop]self.mycolor

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
bf [123]

:[102]
pushi.e 0
pop.v.i local.soldout
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
pushi.e -5
pushi.e 442
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
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [109]

:[108]
pushi.e -5
pushi.e 443
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 1
pop.v.i local.soldout

:[112]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [114]

:[113]
pushi.e -5
pushi.e 444
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 1
pop.v.i local.soldout

:[117]
pushloc.v local.soldout
pushi.e 0
cmp.i.v EQ
bf [119]

:[118]
pushi.e 2
pop.v.i self.menu
b [120]

:[119]
pushi.e 5
pop.v.i self.sidemessage

:[120]
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
bf [152]

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
b [152]

:[135]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [152]

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
bf [149]

:[137]
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
bf [148]

:[138]
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
bf [145]

:[139]
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
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
pushi.e 1
pushi.e -5
pushi.e 442
pop.v.i [array]global.flag

:[141]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [143]

:[142]
pushi.e 1
pushi.e -5
pushi.e 443
pop.v.i [array]global.flag

:[143]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [145]

:[144]
pushi.e 1
pushi.e -5
pushi.e 444
pop.v.i [array]global.flag

:[145]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [147]

:[146]
pushi.e 4
pop.v.i self.sidemessage

:[147]
b [149]

:[148]
pushi.e 3
pop.v.i self.sidemessage

:[149]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [151]

:[150]
pushi.e 2
pop.v.i self.sidemessage

:[151]
pushi.e 1
pop.v.i self.menu

:[152]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [162]

:[153]
push.v self.minimenuy
pushi.e 120
call.i scr_shop_infobox_height(argc=0)
sub.v.i
cmp.v.v GT
bf [155]

:[154]
push.v self.minimenuy
pushi.e 3
sub.i.v
pop.v.v self.minimenuy

:[155]
push.v self.minimenuy
pushi.e 55
cmp.i.v GT
bf [157]

:[156]
push.v self.minimenuy
pushi.e 2
sub.i.v
pop.v.v self.minimenuy

:[157]
push.v self.minimenuy
pushi.e 80
cmp.i.v GT
bf [159]

:[158]
push.v self.minimenuy
pushi.e 4
sub.i.v
pop.v.v self.minimenuy

:[159]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [161]

:[160]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[161]
b [164]

:[162]
push.v self.minimenuy
pushi.e 120
cmp.i.v LT
bf [164]

:[163]
push.v self.minimenuy
pushi.e 20
add.i.v
pop.v.v self.minimenuy

:[164]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [215]

:[165]
pushi.e 4
pop.v.i self.menumax
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [202]

:[166]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [168]

:[167]
push.s "shop3_talk1a_title"@32317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[168]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [170]

:[169]
push.s "shop3_talk1b_title"@32319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[170]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [172]

:[171]
push.s "shop3_talk1c_title"@32321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[172]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [174]

:[173]
push.s "shop3_talk1a_title"@32317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[174]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [176]

:[175]
push.s "shop3_talk1d_title"@32323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[176]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [178]

:[177]
push.s "shop3_talk1e_title"@32325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[178]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 8
cmp.i.v GTE
bf [180]

:[179]
push.s "shop3_talk1a_title"@32317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[180]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [182]

:[181]
push.s "shop3_talk2a_title"@32327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[182]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [184]

:[183]
push.s "shop3_talk2b_title"@32329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[184]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [186]

:[185]
push.s "shop3_talk2c_title"@32331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[186]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [188]

:[187]
push.s "shop3_talk2d_title"@32333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[188]
pushi.e -5
pushi.e 406
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [190]

:[189]
push.s "shop3_talk3a_title"@32335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[190]
pushi.e -5
pushi.e 406
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
push.s "shop3_talk3b_title"@32337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[192]
pushi.e -5
pushi.e 406
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [194]

:[193]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop3_talk3c_title"@32339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[194]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [196]

:[195]
push.s "shop3_talk4a_title"@32341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[196]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [198]

:[197]
push.s "shop3_talk4b_title"@32343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[198]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [200]

:[199]
push.s "shop3_talk4c_title"@32345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[200]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [202]

:[201]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "shop3_talk4d_title"@32347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[202]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [204]

:[203]
push.s "shop3_talk5_title"@32349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop3_talk6_title"@32351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop3_talk7_title"@32352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop3_talk8_title"@32354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[204]
call.i scr_shop_draw_talkmenu(argc=0)
popz.v
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [208]

:[205]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
push.v self.catty
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
push.v self.bratty
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
push.v self.catty
conv.v.i
pop.v.i [stacktop]self.armexp
pushi.e 0
push.v self.bratty
conv.v.i
pop.v.i [stacktop]self.armexp
push.s "obj_shop3_599"@24746
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
bf [207]

:[206]
push.v local.writerx
pushi.e 2
add.i.v
pop.v.v local.writerx

:[207]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushloc.v local.writerx
call.i instance_create(argc=3)
pop.v.v self.brattywriter
push.i 13941759
push.v self.brattywriter
conv.v.i
pop.v.i [stacktop]self.mycolor

:[208]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [213]

:[209]
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [211]

:[210]
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
b [212]

:[211]
pushi.e 0
pop.v.i self.menu

:[212]
b [215]

:[213]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [215]

:[214]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[215]
push.v self.menu
pushi.e 4
cmp.i.v LT
bf [217]

:[216]
call.i scr_shop_draw_status(argc=0)
popz.v

:[217]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [1002]

:[218]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [220]

:[219]
pushi.e 0
pop.v.i self.menu

:[220]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [222]

:[221]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [223]

:[222]
push.e 0

:[223]
bf [316]

:[224]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [234]

:[225]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [231]

:[226]
pushi.e 40
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 0
cmp.i.v EQ
bf [228]

:[227]
push.s "obj_shop3_650"@24748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 75
pop.v.i self.con

:[228]
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [230]

:[229]
pushi.e 81
pop.v.i self.con
push.s "obj_shop3_658"@24750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[230]
b [234]

:[231]
pushi.e -5
pushi.e 256
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [233]

:[232]
pushi.e 1
pushi.e -5
pushi.e 256
pop.v.i [array]global.flag
push.v global.gold
pushi.e 5
add.i.v
pop.v.v global.gold
push.s "obj_shop3_668"@24752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
b [234]

:[233]
push.s "obj_shop3_673"@24754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[234]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [238]

:[235]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [237]

:[236]
push.s "obj_shop3_683"@24756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_685"@24758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
b [238]

:[237]
push.s "obj_shop3_690"@24760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_692"@24761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[238]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [258]

:[239]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 2
cmp.i.v NEQ
bf [244]

:[240]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [244]

:[241]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 6
cmp.i.v NEQ
bf [244]

:[242]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 7
cmp.i.v NEQ
bf [244]

:[243]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
b [245]

:[244]
push.e 0

:[245]
bf [247]

:[246]
pushi.e 4
pop.v.i self.con
push.s "obj_shop3_710"@24763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e -10
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.brattywriter
push.i 13941759
push.v self.brattywriter
conv.v.i
pop.v.i [stacktop]self.mycolor
push.s "obj_shop3_713"@24765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 145
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cattywriter
push.i 16759772
push.v self.cattywriter
conv.v.i
pop.v.i [stacktop]self.mycolor
b [258]

:[247]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [257]

:[248]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [250]

:[249]
pushi.e 8
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag
push.s "obj_shop3_726"@24767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_727"@24769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_728"@24771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 160
pop.v.i self.con

:[250]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [252]

:[251]
pushi.e 7
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag
push.s "obj_shop3_736"@24773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 140
pop.v.i self.con

:[252]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [254]

:[253]
pushi.e 5
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag
push.s "obj_shop3_745"@24775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 120
pop.v.i self.con

:[254]
pushi.e -5
pushi.e 437
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [256]

:[255]
pushi.e 4
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag
push.s "obj_shop3_754"@24777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 110
pop.v.i self.con

:[256]
b [258]

:[257]
push.s "obj_shop3_763"@24779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 170
pop.v.i self.con

:[258]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [277]

:[259]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [276]

:[260]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bt [262]

:[261]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
b [263]

:[262]
push.e 1

:[263]
bf [265]

:[264]
push.s "obj_shop3_778"@24781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_779"@24783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 22
pop.v.i self.con

:[265]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [267]

:[266]
push.s "obj_shop3_788"@24785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 16
pop.v.i self.con

:[267]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [269]

:[268]
pushi.e 10
pop.v.i self.con
push.s "obj_shop3_798"@24787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[269]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [271]

:[270]
pushi.e 3
pushi.e -5
pushi.e 405
pop.v.i [array]global.flag

:[271]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [273]

:[272]
pushi.e 2
pushi.e -5
pushi.e 405
pop.v.i [array]global.flag

:[273]
pushi.e -5
pushi.e 405
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [275]

:[274]
pushi.e 1
pushi.e -5
pushi.e 405
pop.v.i [array]global.flag

:[275]
b [277]

:[276]
push.s "obj_shop3_807"@24789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_808"@24791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_809"@24793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop3_810"@24795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 180
pop.v.i self.con

:[277]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [292]

:[278]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [291]

:[279]
pushi.e -5
pushi.e 406
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [281]

:[280]
push.s "obj_shop3_822"@24797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 40
pop.v.i self.con

:[281]
pushi.e -5
pushi.e 406
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bt [283]

:[282]
pushi.e -5
pushi.e 406
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [284]

:[283]
push.e 1

:[284]
bf [286]

:[285]
push.s "obj_shop3_829"@24799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_830"@24801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_831"@24803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_833"@24805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_834"@24807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_835"@24809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop3_836"@24811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 900
pop.v.i self.con

:[286]
pushi.e -5
pushi.e 406
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [288]

:[287]
pushi.e 2
pushi.e -5
pushi.e 406
pop.v.i [array]global.flag

:[288]
pushi.e -5
pushi.e 406
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [290]

:[289]
pushi.e 1
pushi.e -5
pushi.e 406
pop.v.i [array]global.flag

:[290]
b [292]

:[291]
push.s "obj_shop3_845"@24813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 190
pop.v.i self.con

:[292]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [311]

:[293]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [310]

:[294]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [296]

:[295]
push.s "obj_shop3_859"@24815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_860"@24817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_862"@24819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_863"@24821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 50
pop.v.i self.con

:[296]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [298]

:[297]
push.s "obj_shop3_870"@24823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 60
pop.v.i self.con

:[298]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bt [300]

:[299]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
b [301]

:[300]
push.e 1

:[301]
bf [303]

:[302]
push.s "obj_shop3_879"@24825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_880"@24827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_881"@24829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop3_882"@24831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_884"@24833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_885"@24835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_886"@24837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop3_887"@24839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 999
pop.v.i self.con

:[303]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [305]

:[304]
pushi.e 3
pushi.e -5
pushi.e 407
pop.v.i [array]global.flag

:[305]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [307]

:[306]
pushi.e 2
pushi.e -5
pushi.e 407
pop.v.i [array]global.flag

:[307]
pushi.e -5
pushi.e 407
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [309]

:[308]
pushi.e 1
pushi.e -5
pushi.e 407
pop.v.i [array]global.flag

:[309]
b [311]

:[310]
push.s "obj_shop3_898"@24841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_899"@24843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_901"@24845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_902"@24847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 200
pop.v.i self.con

:[311]
push.v self.sell
pushi.e 7
cmp.i.v EQ
bf [313]

:[312]
push.s "obj_shop3_910"@24849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_912"@24851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 250
pop.v.i self.con

:[313]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [315]

:[314]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
popz.v

:[315]
pushi.e 1
pop.v.i self.selling

:[316]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [320]

:[317]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [320]

:[318]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [320]

:[319]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [321]

:[320]
push.e 0

:[321]
bf [327]

:[322]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
push.v self.brattywriter
conv.v.i
pushenv [324]

:[323]
call.i instance_destroy(argc=0)
popz.v

:[324]
popenv [323]
push.v self.cattywriter
conv.v.i
pushenv [326]

:[325]
call.i instance_destroy(argc=0)
popz.v

:[326]
popenv [325]
push.v self.shopmus
call.i caster_pause(argc=1)
popz.v
push.s "music/myemeow.ogg"@2715
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mew
pushi.e 4
pop.v.i self.selling
pushi.e 5
pop.v.i self.con
pushi.e 7
pop.v.i global.faceemotion
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[327]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [329]

:[328]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [330]

:[329]
push.e 0

:[330]
bf [332]

:[331]
push.d 0.9
conv.d.v
push.d 0.5
conv.d.v
push.v self.mew
call.i caster_play(argc=3)
popz.v
pushi.e 4
pop.v.i self.selling
pushi.e 7
pop.v.i self.con
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[332]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [334]

:[333]
push.v self.mew
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i self.selling
pushi.e 0
pop.v.i self.con
push.v self.shopmus
call.i caster_resume(argc=1)
popz.v

:[334]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [340]

:[335]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [337]

:[336]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [338]

:[337]
push.e 0

:[338]
bf [340]

:[339]
push.s "obj_shop3_959"@24853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 11
pop.v.i self.con

:[340]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [345]

:[341]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [345]

:[342]
push.v self.brattywriter
conv.v.i
pushenv [344]

:[343]
call.i instance_destroy(argc=0)
popz.v

:[344]
popenv [343]
push.s "obj_shop3_970"@24855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 12
pop.v.i self.con

:[345]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [351]

:[346]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [348]

:[347]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [349]

:[348]
push.e 0

:[349]
bf [351]

:[350]
push.s "obj_shop3_980"@24857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 13
pop.v.i self.con

:[351]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [356]

:[352]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [356]

:[353]
push.v self.brattywriter
conv.v.i
pushenv [355]

:[354]
call.i instance_destroy(argc=0)
popz.v

:[355]
popenv [354]
push.s "obj_shop3_991"@24859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_992"@24861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_994"@24863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_995"@24865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 998
pop.v.i self.con

:[356]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [362]

:[357]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [359]

:[358]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [360]

:[359]
push.e 0

:[360]
bf [362]

:[361]
pushi.e 2
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1014"@24867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 17
pop.v.i self.con

:[362]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [364]

:[363]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [365]

:[364]
push.e 0

:[365]
bf [369]

:[366]
push.v self.shopmus
call.i caster_pause(argc=1)
popz.v
push.v self.brattywriter
conv.v.i
pushenv [368]

:[367]
call.i instance_destroy(argc=0)
popz.v

:[368]
popenv [367]
pushi.e 5
pop.v.i global.faceemotion
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 18
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[369]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [371]

:[370]
push.v self.shopmus
call.i caster_resume(argc=1)
popz.v
push.s "obj_shop3_1033"@24869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_1035"@24871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 20
pop.v.i self.con

:[371]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [376]

:[372]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [376]

:[373]
push.v self.brattywriter
conv.v.i
pushenv [375]

:[374]
call.i instance_destroy(argc=0)
popz.v

:[375]
popenv [374]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.selling

:[376]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [379]

:[377]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [379]

:[378]
push.s "obj_shop3_1055"@24873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1056"@24875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_1058"@24877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1059"@24879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.selling
pushi.e 130
pop.v.i self.con

:[379]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [385]

:[380]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [382]

:[381]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [383]

:[382]
push.e 0

:[383]
bf [385]

:[384]
push.s "obj_shop3_1071"@24881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 41
pop.v.i self.con

:[385]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [390]

:[386]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [390]

:[387]
push.v self.brattywriter
conv.v.i
pushenv [389]

:[388]
call.i instance_destroy(argc=0)
popz.v

:[389]
popenv [388]
push.s "obj_shop3_1082"@24883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 42
pop.v.i self.con

:[390]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [396]

:[391]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [393]

:[392]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [394]

:[393]
push.e 0

:[394]
bf [396]

:[395]
push.s "obj_shop3_1093"@24885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 43
pop.v.i self.con

:[396]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [401]

:[397]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [401]

:[398]
push.v self.brattywriter
conv.v.i
pushenv [400]

:[399]
call.i instance_destroy(argc=0)
popz.v

:[400]
popenv [399]
push.s "obj_shop3_1104"@24887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 44
pop.v.i self.con

:[401]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [407]

:[402]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [404]

:[403]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [405]

:[404]
push.e 0

:[405]
bf [407]

:[406]
push.s "obj_shop3_1115"@24889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 46
pop.v.i self.con

:[407]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [412]

:[408]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [412]

:[409]
push.v self.brattywriter
conv.v.i
pushenv [411]

:[410]
call.i instance_destroy(argc=0)
popz.v

:[411]
popenv [410]
push.s "obj_shop3_1126"@24891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 47
pop.v.i self.con

:[412]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [418]

:[413]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [415]

:[414]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [416]

:[415]
push.e 0

:[416]
bf [418]

:[417]
push.s "obj_shop3_1137"@24893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 48
pop.v.i self.con

:[418]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [420]

:[419]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [421]

:[420]
push.e 0

:[421]
bf [425]

:[422]
push.v self.brattywriter
conv.v.i
pushenv [424]

:[423]
call.i instance_destroy(argc=0)
popz.v

:[424]
popenv [423]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.selling

:[425]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [436]

:[426]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [429]

:[427]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [429]

:[428]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [430]

:[429]
push.e 0

:[430]
bf [436]

:[431]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
push.v self.brattywriter
conv.v.i
pushenv [433]

:[432]
call.i instance_destroy(argc=0)
popz.v

:[433]
popenv [432]
push.v self.cattywriter
conv.v.i
pushenv [435]

:[434]
call.i instance_destroy(argc=0)
popz.v

:[435]
popenv [434]
push.s "obj_shop3_1156"@24895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 51
pop.v.i self.con

:[436]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [442]

:[437]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [439]

:[438]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [440]

:[439]
push.e 0

:[440]
bf [442]

:[441]
push.s "obj_shop3_1167"@24897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 52
pop.v.i self.con

:[442]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [447]

:[443]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [447]

:[444]
push.v self.brattywriter
conv.v.i
pushenv [446]

:[445]
call.i instance_destroy(argc=0)
popz.v

:[446]
popenv [445]
push.s "obj_shop3_1179"@24899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 53
pop.v.i self.con

:[447]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [453]

:[448]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [450]

:[449]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [451]

:[450]
push.e 0

:[451]
bf [453]

:[452]
push.s "obj_shop3_1189"@24901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 54
pop.v.i self.con

:[453]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [458]

:[454]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [458]

:[455]
push.v self.brattywriter
conv.v.i
pushenv [457]

:[456]
call.i instance_destroy(argc=0)
popz.v

:[457]
popenv [456]
push.s "obj_shop3_1201"@24903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 55
pop.v.i self.con

:[458]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [464]

:[459]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [461]

:[460]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [462]

:[461]
push.e 0

:[462]
bf [464]

:[463]
push.s "obj_shop3_1211"@24905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 56
pop.v.i self.con

:[464]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [466]

:[465]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [467]

:[466]
push.e 0

:[467]
bf [471]

:[468]
push.v self.brattywriter
conv.v.i
pushenv [470]

:[469]
call.i instance_destroy(argc=0)
popz.v

:[470]
popenv [469]
pushi.e 1
pop.v.i self.selling
pushi.e 0
pop.v.i self.con

:[471]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [477]

:[472]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [474]

:[473]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [475]

:[474]
push.e 0

:[475]
bf [477]

:[476]
push.s "obj_shop3_1231"@24907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 61
pop.v.i self.con

:[477]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [482]

:[478]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [482]

:[479]
push.v self.brattywriter
conv.v.i
pushenv [481]

:[480]
call.i instance_destroy(argc=0)
popz.v

:[481]
popenv [480]
push.s "obj_shop3_1243"@24909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 62
pop.v.i self.con

:[482]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [488]

:[483]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [485]

:[484]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [486]

:[485]
push.e 0

:[486]
bf [488]

:[487]
push.s "obj_shop3_1253"@24911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
push.d 62.1
pop.v.d self.con

:[488]
push.v self.con
push.d 62.1
cmp.d.v EQ
bf [493]

:[489]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [493]

:[490]
push.v self.brattywriter
conv.v.i
pushenv [492]

:[491]
call.i instance_destroy(argc=0)
popz.v

:[492]
popenv [491]
push.s "obj_shop3_1265"@24913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.d 62.2
pop.v.d self.con

:[493]
push.v self.con
push.d 62.2
cmp.d.v EQ
bf [499]

:[494]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [496]

:[495]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [497]

:[496]
push.e 0

:[497]
bf [499]

:[498]
push.s "obj_shop3_1275"@24915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
push.d 62.3
pop.v.d self.con

:[499]
push.v self.con
push.d 62.3
cmp.d.v EQ
bf [504]

:[500]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [504]

:[501]
push.v self.brattywriter
conv.v.i
pushenv [503]

:[502]
call.i instance_destroy(argc=0)
popz.v

:[503]
popenv [502]
push.s "obj_shop3_1288"@24917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.d 62.4
pop.v.d self.con

:[504]
push.v self.con
push.d 62.4
cmp.d.v EQ
bf [510]

:[505]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [507]

:[506]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [508]

:[507]
push.e 0

:[508]
bf [510]

:[509]
push.s "obj_shop3_1298"@24919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1299"@24921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 65
pop.v.i self.con

:[510]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [520]

:[511]
push.v self.cattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [516]

:[512]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.stringno
pushi.e 1
cmp.i.v EQ
bf [516]

:[513]
push.v self.brattywriter
conv.v.i
pushenv [515]

:[514]
call.i instance_destroy(argc=0)
popz.v

:[515]
popenv [514]

:[516]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [520]

:[517]
push.v self.brattywriter
conv.v.i
pushenv [519]

:[518]
call.i instance_destroy(argc=0)
popz.v

:[519]
popenv [518]
push.s "obj_shop3_1319"@24923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 66
pop.v.i self.con

:[520]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [526]

:[521]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [523]

:[522]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [524]

:[523]
push.e 0

:[524]
bf [526]

:[525]
push.s "obj_shop3_1329"@24925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 67
pop.v.i self.con

:[526]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [531]

:[527]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [531]

:[528]
push.v self.brattywriter
conv.v.i
pushenv [530]

:[529]
call.i instance_destroy(argc=0)
popz.v

:[530]
popenv [529]
push.s "obj_shop3_1341"@24927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 68
pop.v.i self.con

:[531]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [537]

:[532]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [534]

:[533]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [535]

:[534]
push.e 0

:[535]
bf [537]

:[536]
push.s "obj_shop3_1351"@24929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 70
pop.v.i self.con

:[537]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [539]

:[538]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [540]

:[539]
push.e 0

:[540]
bf [544]

:[541]
push.v self.brattywriter
conv.v.i
pushenv [543]

:[542]
call.i instance_destroy(argc=0)
popz.v

:[543]
popenv [542]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.selling

:[544]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [550]

:[545]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [547]

:[546]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [548]

:[547]
push.e 0

:[548]
bf [550]

:[549]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1371"@24931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 76
pop.v.i self.con

:[550]
push.v self.con
pushi.e 76
cmp.i.v EQ
bf [555]

:[551]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [555]

:[552]
push.v self.brattywriter
conv.v.i
pushenv [554]

:[553]
call.i instance_destroy(argc=0)
popz.v

:[554]
popenv [553]
push.s "obj_shop3_1383"@24933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 77
pop.v.i self.con

:[555]
push.v self.con
pushi.e 77
cmp.i.v EQ
bf [561]

:[556]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [558]

:[557]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [559]

:[558]
push.e 0

:[559]
bf [561]

:[560]
push.s "obj_shop3_1395"@24935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 78
pop.v.i self.con

:[561]
push.v self.con
pushi.e 78
cmp.i.v EQ
bf [563]

:[562]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [564]

:[563]
push.e 0

:[564]
bf [568]

:[565]
push.v self.brattywriter
conv.v.i
pushenv [567]

:[566]
call.i instance_destroy(argc=0)
popz.v

:[567]
popenv [566]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.selling

:[568]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [574]

:[569]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [571]

:[570]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [572]

:[571]
push.e 0

:[572]
bf [574]

:[573]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1415"@24937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 83
pop.v.i self.con

:[574]
push.v self.con
pushi.e 83
cmp.i.v EQ
bf [579]

:[575]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [579]

:[576]
push.v self.brattywriter
conv.v.i
pushenv [578]

:[577]
call.i instance_destroy(argc=0)
popz.v

:[578]
popenv [577]
push.s "obj_shop3_1427"@24939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 84
pop.v.i self.con

:[579]
push.v self.con
pushi.e 84
cmp.i.v EQ
bf [585]

:[580]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [582]

:[581]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [583]

:[582]
push.e 0

:[583]
bf [585]

:[584]
push.s "obj_shop3_1439"@24941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 85
pop.v.i self.con

:[585]
push.v self.con
pushi.e 85
cmp.i.v EQ
bf [590]

:[586]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [590]

:[587]
push.v self.brattywriter
conv.v.i
pushenv [589]

:[588]
call.i instance_destroy(argc=0)
popz.v

:[589]
popenv [588]
push.s "obj_shop3_1451"@24943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 86
pop.v.i self.con

:[590]
push.v self.con
pushi.e 86
cmp.i.v EQ
bf [596]

:[591]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [593]

:[592]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [594]

:[593]
push.e 0

:[594]
bf [596]

:[595]
push.s "obj_shop3_1463"@24945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 87
pop.v.i self.con

:[596]
push.v self.con
pushi.e 87
cmp.i.v EQ
bf [598]

:[597]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [599]

:[598]
push.e 0

:[599]
bf [603]

:[600]
push.v self.brattywriter
conv.v.i
pushenv [602]

:[601]
call.i instance_destroy(argc=0)
popz.v

:[602]
popenv [601]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.selling

:[603]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [609]

:[604]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [606]

:[605]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [607]

:[606]
push.e 0

:[607]
bf [609]

:[608]
push.s "obj_shop3_1484"@24947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 111
pop.v.i self.con

:[609]
push.v self.con
pushi.e 111
cmp.i.v EQ
bf [611]

:[610]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [612]

:[611]
push.e 0

:[612]
bf [616]

:[613]
push.v self.brattywriter
conv.v.i
pushenv [615]

:[614]
call.i instance_destroy(argc=0)
popz.v

:[615]
popenv [614]
pushi.e 112
pop.v.i self.con
pushi.e 2
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1495"@24949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[616]
push.v self.con
pushi.e 112
cmp.i.v EQ
bf [619]

:[617]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [619]

:[618]
push.s "obj_shop3_1504"@24951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 113
pop.v.i self.con

:[619]
push.v self.con
pushi.e 113
cmp.i.v EQ
bf [625]

:[620]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [622]

:[621]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [623]

:[622]
push.e 0

:[623]
bf [625]

:[624]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1517"@24953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 114
pop.v.i self.con

:[625]
push.v self.con
pushi.e 114
cmp.i.v EQ
bf [627]

:[626]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [628]

:[627]
push.e 0

:[628]
bf [632]

:[629]
push.v self.brattywriter
conv.v.i
pushenv [631]

:[630]
call.i instance_destroy(argc=0)
popz.v

:[631]
popenv [630]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.selling

:[632]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [638]

:[633]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [635]

:[634]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [636]

:[635]
push.e 0

:[636]
bf [638]

:[637]
push.s "obj_shop3_1537"@24955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 121
pop.v.i self.con

:[638]
push.v self.con
pushi.e 121
cmp.i.v EQ
bf [643]

:[639]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [643]

:[640]
push.v self.brattywriter
conv.v.i
pushenv [642]

:[641]
call.i instance_destroy(argc=0)
popz.v

:[642]
popenv [641]
push.s "obj_shop3_1549"@24957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 122
pop.v.i self.con

:[643]
push.v self.con
pushi.e 122
cmp.i.v EQ
bf [649]

:[644]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [646]

:[645]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [647]

:[646]
push.e 0

:[647]
bf [649]

:[648]
push.s "obj_shop3_1561"@24959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 123
pop.v.i self.con

:[649]
push.v self.con
pushi.e 123
cmp.i.v EQ
bf [654]

:[650]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [654]

:[651]
push.v self.brattywriter
conv.v.i
pushenv [653]

:[652]
call.i instance_destroy(argc=0)
popz.v

:[653]
popenv [652]
push.s "obj_shop3_1573"@24961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 124
pop.v.i self.con

:[654]
push.v self.con
pushi.e 124
cmp.i.v EQ
bf [660]

:[655]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [657]

:[656]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [658]

:[657]
push.e 0

:[658]
bf [660]

:[659]
push.s "obj_shop3_1586"@24963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 126
pop.v.i self.con

:[660]
push.v self.con
pushi.e 126
cmp.i.v EQ
bf [665]

:[661]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [665]

:[662]
push.v self.brattywriter
conv.v.i
pushenv [664]

:[663]
call.i instance_destroy(argc=0)
popz.v

:[664]
popenv [663]
push.s "obj_shop3_1598"@24965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 127
pop.v.i self.con

:[665]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [671]

:[666]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [668]

:[667]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [669]

:[668]
push.e 0

:[669]
bf [671]

:[670]
push.s "obj_shop3_1610"@24967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 128
pop.v.i self.con

:[671]
push.v self.con
pushi.e 128
cmp.i.v EQ
bf [676]

:[672]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [676]

:[673]
push.v self.brattywriter
conv.v.i
pushenv [675]

:[674]
call.i instance_destroy(argc=0)
popz.v

:[675]
popenv [674]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 5
pushi.e -5
pushi.e 437
pop.v.i [array]global.flag
push.s "obj_shop3_1624"@24969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 129
pop.v.i self.con

:[676]
push.v self.con
pushi.e 129
cmp.i.v EQ
bf [678]

:[677]
push.v self.brattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [679]

:[678]
push.e 0

:[679]
bf [683]

:[680]
push.v self.cattywriter
conv.v.i
pushenv [682]

:[681]
call.i instance_destroy(argc=0)
popz.v

:[682]
popenv [681]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.selling

:[683]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [685]

:[684]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [686]

:[685]
push.e 0

:[686]
bf [690]

:[687]
push.v self.brattywriter
conv.v.i
pushenv [689]

:[688]
call.i instance_destroy(argc=0)
popz.v

:[689]
popenv [688]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.selling

:[690]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [696]

:[691]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [693]

:[692]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [694]

:[693]
push.e 0

:[694]
bf [696]

:[695]
push.s "obj_shop3_1644"@24971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 141
pop.v.i self.con

:[696]
push.v self.con
pushi.e 141
cmp.i.v EQ
bf [701]

:[697]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [701]

:[698]
push.v self.brattywriter
conv.v.i
pushenv [700]

:[699]
call.i instance_destroy(argc=0)
popz.v

:[700]
popenv [699]
pushi.e 7
pop.v.i global.faceemotion
push.s "obj_shop3_1657"@24973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 142
pop.v.i self.con

:[701]
push.v self.con
pushi.e 142
cmp.i.v EQ
bf [707]

:[702]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [704]

:[703]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [705]

:[704]
push.e 0

:[705]
bf [707]

:[706]
push.s "obj_shop3_1669"@24975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 143
pop.v.i self.con

:[707]
push.v self.con
pushi.e 143
cmp.i.v EQ
bf [712]

:[708]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [712]

:[709]
push.v self.brattywriter
conv.v.i
pushenv [711]

:[710]
call.i instance_destroy(argc=0)
popz.v

:[711]
popenv [710]
pushi.e 7
pop.v.i global.faceemotion
push.s "obj_shop3_1682"@24977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 145
pop.v.i self.con

:[712]
push.v self.con
pushi.e 145
cmp.i.v EQ
bf [718]

:[713]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [715]

:[714]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [716]

:[715]
push.e 0

:[716]
bf [718]

:[717]
push.s "obj_shop3_1694"@24979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 114
pop.v.i self.con

:[718]
push.v self.con
pushi.e 160
cmp.i.v EQ
bf [721]

:[719]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [721]

:[720]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1707"@24981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1708"@24983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_1709"@24985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop3_1710"@24987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop3_1711"@24989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 161
pop.v.i self.con

:[721]
push.v self.con
pushi.e 161
cmp.i.v EQ
bf [726]

:[722]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [726]

:[723]
push.v self.brattywriter
conv.v.i
pushenv [725]

:[724]
call.i instance_destroy(argc=0)
popz.v

:[725]
popenv [724]
pushi.e 8
pop.v.i global.faceemotion
push.s "obj_shop3_1724"@24991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 162
pop.v.i self.con

:[726]
push.v self.con
pushi.e 162
cmp.i.v EQ
bf [729]

:[727]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [729]

:[728]
push.s "obj_shop3_1735"@24993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1736"@24995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 163
pop.v.i self.con

:[729]
push.v self.con
pushi.e 163
cmp.i.v EQ
bf [737]

:[730]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [732]

:[731]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [733]

:[732]
push.e 0

:[733]
bf [737]

:[734]
push.v self.brattywriter
conv.v.i
pushenv [736]

:[735]
call.i instance_destroy(argc=0)
popz.v

:[736]
popenv [735]
push.s "obj_shop3_1749"@24997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 129
pop.v.i self.con

:[737]
push.v self.con
pushi.e 170
cmp.i.v EQ
bf [743]

:[738]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [740]

:[739]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [741]

:[740]
push.e 0

:[741]
bf [743]

:[742]
push.s "obj_shop3_1761"@24999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 171
pop.v.i self.con

:[743]
push.v self.con
pushi.e 171
cmp.i.v EQ
bf [748]

:[744]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [748]

:[745]
push.v self.brattywriter
conv.v.i
pushenv [747]

:[746]
call.i instance_destroy(argc=0)
popz.v

:[747]
popenv [746]
push.s "obj_shop3_1773"@25001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 172
pop.v.i self.con

:[748]
push.v self.con
pushi.e 172
cmp.i.v EQ
bf [754]

:[749]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [751]

:[750]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [752]

:[751]
push.e 0

:[752]
bf [754]

:[753]
push.s "obj_shop3_1785"@25003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 173
pop.v.i self.con

:[754]
push.v self.con
pushi.e 173
cmp.i.v EQ
bf [759]

:[755]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [759]

:[756]
push.v self.brattywriter
conv.v.i
pushenv [758]

:[757]
call.i instance_destroy(argc=0)
popz.v

:[758]
popenv [757]
push.s "obj_shop3_1797"@25005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 174
pop.v.i self.con

:[759]
push.v self.con
pushi.e 174
cmp.i.v EQ
bf [765]

:[760]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [762]

:[761]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [763]

:[762]
push.e 0

:[763]
bf [765]

:[764]
push.s "obj_shop3_1809"@25007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 114
pop.v.i self.con

:[765]
push.v self.con
pushi.e 180
cmp.i.v EQ
bf [768]

:[766]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [768]

:[767]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1822"@25009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 181
pop.v.i self.con

:[768]
push.v self.con
pushi.e 181
cmp.i.v EQ
bf [773]

:[769]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [773]

:[770]
push.v self.brattywriter
conv.v.i
pushenv [772]

:[771]
call.i instance_destroy(argc=0)
popz.v

:[772]
popenv [771]
push.s "obj_shop3_1834"@25011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1835"@25013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 182
pop.v.i self.con

:[773]
push.v self.con
pushi.e 182
cmp.i.v EQ
bf [776]

:[774]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [776]

:[775]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1847"@25015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1848"@25017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 183
pop.v.i self.con

:[776]
push.v self.con
pushi.e 183
cmp.i.v EQ
bf [781]

:[777]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [781]

:[778]
pushi.e 7
pop.v.i global.faceemotion
push.v self.brattywriter
conv.v.i
pushenv [780]

:[779]
call.i instance_destroy(argc=0)
popz.v

:[780]
popenv [779]
push.s "obj_shop3_1861"@25019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1862"@25021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 184
pop.v.i self.con

:[781]
push.v self.con
pushi.e 184
cmp.i.v EQ
bf [784]

:[782]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [784]

:[783]
push.s "obj_shop3_1873"@25023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 114
pop.v.i self.con

:[784]
push.v self.con
pushi.e 190
cmp.i.v EQ
bf [790]

:[785]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [787]

:[786]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [788]

:[787]
push.e 0

:[788]
bf [790]

:[789]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1886"@25025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 191
pop.v.i self.con

:[790]
push.v self.con
pushi.e 191
cmp.i.v EQ
bf [795]

:[791]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [795]

:[792]
pushi.e 7
pop.v.i global.faceemotion
push.v self.brattywriter
conv.v.i
pushenv [794]

:[793]
call.i instance_destroy(argc=0)
popz.v

:[794]
popenv [793]
push.s "obj_shop3_1899"@25027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 192
pop.v.i self.con

:[795]
push.v self.con
pushi.e 192
cmp.i.v EQ
bf [801]

:[796]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [798]

:[797]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [799]

:[798]
push.e 0

:[799]
bf [801]

:[800]
push.s "obj_shop3_1910"@25029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1911"@25031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 193
pop.v.i self.con

:[801]
push.v self.con
pushi.e 193
cmp.i.v EQ
bf [806]

:[802]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [806]

:[803]
push.v self.brattywriter
conv.v.i
pushenv [805]

:[804]
call.i instance_destroy(argc=0)
popz.v

:[805]
popenv [804]
push.s "obj_shop3_1924"@25033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 194
pop.v.i self.con

:[806]
push.v self.con
pushi.e 194
cmp.i.v EQ
bf [812]

:[807]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [809]

:[808]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [810]

:[809]
push.e 0

:[810]
bf [812]

:[811]
pushi.e 2
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1936"@25035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 195
pop.v.i self.con

:[812]
push.v self.con
pushi.e 195
cmp.i.v EQ
bf [817]

:[813]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [817]

:[814]
push.v self.brattywriter
conv.v.i
pushenv [816]

:[815]
call.i instance_destroy(argc=0)
popz.v

:[816]
popenv [815]
push.s "obj_shop3_1949"@25037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 129
pop.v.i self.con

:[817]
push.v self.con
pushi.e 200
cmp.i.v EQ
bf [821]

:[818]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [821]

:[819]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [821]

:[820]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [822]

:[821]
push.e 0

:[822]
bf [828]

:[823]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 4
pop.v.i self.selling
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
push.v self.cattywriter
conv.v.i
pushenv [825]

:[824]
call.i instance_destroy(argc=0)
popz.v

:[825]
popenv [824]
push.v self.brattywriter
conv.v.i
pushenv [827]

:[826]
call.i instance_destroy(argc=0)
popz.v

:[827]
popenv [826]
pushi.e 8
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 201
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[828]
push.v self.con
pushi.e 202
cmp.i.v EQ
bf [830]

:[829]
pushi.e 4
pop.v.i self.selling
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_1974"@25039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 203
pop.v.i self.con

:[830]
push.v self.con
pushi.e 203
cmp.i.v EQ
bf [835]

:[831]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [835]

:[832]
push.v self.brattywriter
conv.v.i
pushenv [834]

:[833]
call.i instance_destroy(argc=0)
popz.v

:[834]
popenv [833]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_shop3_1987"@25041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_1988"@25043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_1989"@25045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 204
pop.v.i self.con

:[835]
push.v self.con
pushi.e 204
cmp.i.v EQ
bf [838]

:[836]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [838]

:[837]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_shop3_2001"@25047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop3_2002"@25049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop3_2003"@25051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop3_2004"@25053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 205
pop.v.i self.con

:[838]
push.v self.con
pushi.e 205
cmp.i.v EQ
bf [843]

:[839]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [843]

:[840]
push.v self.brattywriter
conv.v.i
pushenv [842]

:[841]
call.i instance_destroy(argc=0)
popz.v

:[842]
popenv [841]
push.s "obj_shop3_2017"@25055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 206
pop.v.i self.con

:[843]
push.v self.con
pushi.e 206
cmp.i.v EQ
bf [849]

:[844]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [846]

:[845]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [847]

:[846]
push.e 0

:[847]
bf [849]

:[848]
push.s "obj_shop3_2028"@25057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 207
pop.v.i self.con

:[849]
push.v self.con
pushi.e 207
cmp.i.v EQ
bf [854]

:[850]
pushi.e 4
pop.v.i self.selling
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [854]

:[851]
push.v self.brattywriter
conv.v.i
pushenv [853]

:[852]
call.i instance_destroy(argc=0)
popz.v

:[853]
popenv [852]
pushi.e 8
pop.v.i global.faceemotion
push.s "obj_shop3_2042"@25059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 208
pop.v.i self.con

:[854]
push.v self.con
pushi.e 208
cmp.i.v EQ
bf [860]

:[855]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [857]

:[856]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [858]

:[857]
push.e 0

:[858]
bf [860]

:[859]
push.s "obj_shop3_2053"@25061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 114
pop.v.i self.con

:[860]
push.v self.con
pushi.e 250
cmp.i.v EQ
bf [871]

:[861]
pushi.e 4
pop.v.i self.selling
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [864]

:[862]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [864]

:[863]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [865]

:[864]
push.e 0

:[865]
bf [871]

:[866]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
push.v self.brattywriter
conv.v.i
pushenv [868]

:[867]
call.i instance_destroy(argc=0)
popz.v

:[868]
popenv [867]
push.v self.cattywriter
conv.v.i
pushenv [870]

:[869]
call.i instance_destroy(argc=0)
popz.v

:[870]
popenv [869]
push.s "obj_shop3_2067"@25063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 251
pop.v.i self.con

:[871]
push.v self.con
pushi.e 251
cmp.i.v EQ
bf [877]

:[872]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [874]

:[873]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [875]

:[874]
push.e 0

:[875]
bf [877]

:[876]
push.s "obj_shop3_2077"@25065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 252
pop.v.i self.con

:[877]
push.v self.con
pushi.e 252
cmp.i.v EQ
bf [882]

:[878]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [882]

:[879]
push.v self.brattywriter
conv.v.i
pushenv [881]

:[880]
call.i instance_destroy(argc=0)
popz.v

:[881]
popenv [880]
push.s "obj_shop3_2088"@25067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 253
pop.v.i self.con

:[882]
push.v self.con
pushi.e 253
cmp.i.v EQ
bf [888]

:[883]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [885]

:[884]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [886]

:[885]
push.e 0

:[886]
bf [888]

:[887]
push.s "obj_shop3_2098"@25069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 254
pop.v.i self.con

:[888]
push.v self.con
pushi.e 254
cmp.i.v EQ
bf [893]

:[889]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [893]

:[890]
push.v self.brattywriter
conv.v.i
pushenv [892]

:[891]
call.i instance_destroy(argc=0)
popz.v

:[892]
popenv [891]
push.s "obj_shop3_2109"@25071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 255
pop.v.i self.con

:[893]
push.v self.con
pushi.e 255
cmp.i.v EQ
bf [899]

:[894]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [896]

:[895]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [897]

:[896]
push.e 0

:[897]
bf [899]

:[898]
push.s "obj_shop3_2119"@25073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 256
pop.v.i self.con

:[899]
push.v self.con
pushi.e 256
cmp.i.v EQ
bf [904]

:[900]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [904]

:[901]
push.v self.brattywriter
conv.v.i
pushenv [903]

:[902]
call.i instance_destroy(argc=0)
popz.v

:[903]
popenv [902]
push.s "obj_shop3_2131"@25075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 257
pop.v.i self.con

:[904]
push.v self.con
pushi.e 257
cmp.i.v EQ
bf [910]

:[905]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [907]

:[906]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [908]

:[907]
push.e 0

:[908]
bf [910]

:[909]
push.s "obj_shop3_2141"@25077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 258
pop.v.i self.con

:[910]
push.v self.con
pushi.e 258
cmp.i.v EQ
bf [915]

:[911]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [915]

:[912]
push.v self.brattywriter
conv.v.i
pushenv [914]

:[913]
call.i instance_destroy(argc=0)
popz.v

:[914]
popenv [913]
push.s "obj_shop3_2152"@25079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 259
pop.v.i self.con

:[915]
push.v self.con
pushi.e 259
cmp.i.v EQ
bf [921]

:[916]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [918]

:[917]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [919]

:[918]
push.e 0

:[919]
bf [921]

:[920]
push.s "obj_shop3_2162"@25081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 260
pop.v.i self.con

:[921]
push.v self.con
pushi.e 260
cmp.i.v EQ
bf [926]

:[922]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [926]

:[923]
push.v self.brattywriter
conv.v.i
pushenv [925]

:[924]
call.i instance_destroy(argc=0)
popz.v

:[925]
popenv [924]
push.s "obj_shop3_2174"@25083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 261
pop.v.i self.con

:[926]
push.v self.con
pushi.e 261
cmp.i.v EQ
bf [932]

:[927]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [929]

:[928]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
b [930]

:[929]
push.e 0

:[930]
bf [932]

:[931]
push.s "obj_shop3_2184"@25085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 262
pop.v.i self.con

:[932]
push.v self.con
pushi.e 262
cmp.i.v EQ
bf [937]

:[933]
push.v self.cattywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [937]

:[934]
push.v self.brattywriter
conv.v.i
pushenv [936]

:[935]
call.i instance_destroy(argc=0)
popz.v

:[936]
popenv [935]
push.s "obj_shop3_2196"@25087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "obj_shop3_2198"@25089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 998
pop.v.i self.con

:[937]
push.v self.con
pushi.e 900
cmp.i.v EQ
bf [941]

:[938]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [941]

:[939]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 6
cmp.i.v EQ
bf [941]

:[940]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [942]

:[941]
push.e 0

:[942]
bf [948]

:[943]
push.v self.brattywriter
conv.v.i
pushenv [945]

:[944]
call.i instance_destroy(argc=0)
popz.v

:[945]
popenv [944]
pushi.e 1
push.v self.cattywriter
conv.v.i
pop.v.i [stacktop]self.halt
push.v self.cattywriter
conv.v.i
pushenv [947]

:[946]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[947]
popenv [946]
pushi.e 901
pop.v.i self.con

:[948]
push.v self.con
pushi.e 901
cmp.i.v EQ
bf [950]

:[949]
push.v self.cattywriter
call.i instance_exists(argc=1)
conv.v.b
not.b
b [951]

:[950]
push.e 0

:[951]
bf [953]

:[952]
pushi.e 1
pop.v.i self.selling
pushi.e 0
pop.v.i self.con

:[953]
push.v self.con
pushi.e 998
cmp.i.v EQ
bt [955]

:[954]
push.v self.con
pushi.e 999
cmp.i.v EQ
b [956]

:[955]
push.e 1

:[956]
bf [960]

:[957]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [960]

:[958]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [960]

:[959]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [961]

:[960]
push.e 0

:[961]
bf [969]

:[962]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
push.v self.brattywriter
conv.v.i
pushenv [964]

:[963]
call.i instance_destroy(argc=0)
popz.v

:[964]
popenv [963]
push.v self.cattywriter
conv.v.i
pushenv [966]

:[965]
call.i instance_destroy(argc=0)
popz.v

:[966]
popenv [965]
push.v self.con
pushi.e 998
cmp.i.v EQ
bf [968]

:[967]
pushi.e 1
pop.v.i self.selling

:[968]
pushi.e 0
pop.v.i self.con

:[969]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [976]

:[970]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [976]

:[971]
pushi.e 784
pushenv [975]

:[972]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [974]

:[973]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[974]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[975]
popenv [972]

:[976]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [982]

:[977]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [982]

:[978]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [982]

:[979]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [982]

:[980]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [982]

:[981]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [983]

:[982]
push.e 0

:[983]
bf [989]

:[984]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
push.v self.brattywriter
conv.v.i
pushenv [986]

:[985]
call.i instance_destroy(argc=0)
popz.v

:[986]
popenv [985]
push.v self.cattywriter
conv.v.i
pushenv [988]

:[987]
call.i instance_destroy(argc=0)
popz.v

:[988]
popenv [987]

:[989]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [991]

:[990]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [992]

:[991]
push.e 0

:[992]
bf [1002]

:[993]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [995]

:[994]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [1002]

:[995]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [997]

:[996]
push.v self.sell
pushi.e 7
cmp.i.v EQ
b [998]

:[997]
push.e 1

:[998]
bf [1000]

:[999]
pushi.e 0
pop.v.i self.menu
b [1001]

:[1000]
pushi.e 3
pop.v.i self.menu

:[1001]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[1002]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [1005]

:[1003]
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
bf [1005]

:[1004]
pushi.e 0
pushi.e -1
push.v self.menu
conv.v.i
pop.v.i [array]self.menuc

:[1005]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [1008]

:[1006]
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
bf [1008]

:[1007]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[1008]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1009]
pushi.e 71
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [1011]

:[1010]
pushi.e 5000
pop.v.i global.gold

:[1011]
pushi.e 75
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[1012]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 314
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]