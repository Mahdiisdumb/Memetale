.localvar 0 arguments
.localvar 1 wdiff 8763
.localvar 2 adiff 8764
.localvar 3 wdiffs 8765
.localvar 4 adiffs 8766
.localvar 5 i 8767
.localvar 6 cost 8768
.localvar 7 hearty 8769
.localvar 8 heartx 8770
.localvar 9 textx 8771
.localvar 10 writerx 8772
.localvar 11 writer 8773

:[0]
push.v self.glow
pushi.e 2
add.i.v
pop.v.v self.glow
push.v self.glow
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i floor(argc=1)
pushi.e 32
conv.i.d
div.d.v
push.d 0.125
add.d.v
pop.v.v self.glow2
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 945
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.glow2
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 946
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
push.v self.shx
pushi.e 0
conv.i.v
pushi.e 947
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [15]

:[6]
pushi.e 5
pushglb.v global.wstrength
sub.v.i
pop.v.v local.wdiff
pushi.e 7
pushglb.v global.adef
sub.v.i
pop.v.v local.adiff
pushloc.v local.wdiff
call.i string(argc=1)
pop.v.v local.wdiffs
pushloc.v local.wdiff
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
push.s "+"@48708
pushloc.v local.wdiffs
add.v.s
pop.v.v local.wdiffs

:[8]
pushloc.v local.adiff
call.i string(argc=1)
pop.v.v local.adiffs
pushloc.v local.adiff
pushi.e 0
cmp.i.v GTE
bf [10]

:[9]
push.s "+"@48708
pushloc.v local.adiffs
add.v.s
pop.v.v local.adiffs

:[10]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 0
cmp.i.v GTE
bf [12]

:[11]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v LTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushloc.v local.adiffs
pushloc.v local.wdiffs
push.s "shop1_itemdesc_"@50924
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

:[15]
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
bf [39]

:[16]
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

:[17]
push.s "obj_shop1_263"@24392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_shop1_264"@24394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
pushi.e 1
pop.v.i self.mainmessage
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_shop1_265"@24396
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
bf [39]

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
bf [37]

:[34]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 3
pop.v.i self.menu
b [37]

:[36]
pushi.e 4
pop.v.i self.menu
pushi.e 7
pop.v.i self.sell

:[37]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[39]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [41]

:[40]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [42]

:[41]
push.e 1

:[42]
bf [110]

:[43]
pushi.e 0
pop.v.i local.i

:[44]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [49]

:[45]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.s "00"@50928
pop.v.s local.cost
b [48]

:[47]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.itemcost
call.i string(argc=1)
pop.v.v local.cost

:[48]
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
b [44]

:[49]
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
bf [75]

:[50]
pushi.e 4
pop.v.i self.menumax
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [64]

:[51]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_shop1_352"@24398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_shop1_353"@24400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_shop1_354"@24402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_shop1_355"@24404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_shop1_356"@24406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_shop1_357"@24408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
popz.v

:[64]
pushi.e 134
pop.v.i local.hearty
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [66]

:[65]
push.v local.hearty
pushi.e 2
sub.i.v
pop.v.v local.hearty

:[66]
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
bf [70]

:[67]
pushi.e 2
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [69]

:[68]
pushi.e 0
pop.v.i self.menu

:[69]
b [72]

:[70]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [72]

:[71]
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[72]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [74]

:[73]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[74]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc

:[75]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [98]

:[76]
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
bf [78]

:[77]
push.v local.textx
pushi.e 8
sub.i.v
pop.v.v local.textx

:[78]
pushi.e 1
pop.v.i self.menumax
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
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

:[80]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "shop_take_prompt"@32245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 130
conv.i.v
pushloc.v local.textx
call.i draw_text(argc=3)
popz.v

:[82]
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
bf [125]

:[111]
pushi.e 4
pop.v.i self.menumax
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
push.s "shop1_talk1_title"@32255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop1_talk2_title"@32257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop1_talk3_title"@32259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop1_talk4_title"@32261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
b [114]

:[113]
push.s "shop1_talk5_title"@32263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop1_talk6_title"@32265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop1_talk7_title"@32266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v
push.s "shop1_talk8_title"@32268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shop_draw_talktitle(argc=3)
popz.v

:[114]
call.i scr_shop_draw_talkmenu(argc=0)
popz.v
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [118]

:[115]
push.s "obj_shop1_438"@24410
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
bf [117]

:[116]
push.v local.writerx
pushi.e 2
add.i.v
pop.v.v local.writerx

:[117]
pushi.e 784
conv.i.v
pushi.e 110
conv.i.v
pushloc.v local.writerx
call.i instance_create(argc=3)
pop.v.v local.writer

:[118]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [123]

:[119]
pushi.e 1
pop.v.i 784.dfy
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [121]

:[120]
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
b [122]

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
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 0
pop.v.i self.menu
pushi.e 1
pop.v.i 784.dfy

:[125]
push.v self.menu
pushi.e 4
cmp.i.v LT
bf [127]

:[126]
call.i scr_shop_draw_status(argc=0)
popz.v

:[127]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [179]

:[128]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [130]

:[129]
pushi.e 0
pop.v.i self.menu

:[130]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [159]

:[134]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [141]

:[135]
push.s "obj_shop1_476"@24412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_477"@24414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop1_478"@24416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.soldo
pushi.e 1
add.i.v
pop.v.v self.soldo
push.v self.soldo
pushi.e 1
cmp.i.v GT
bf [137]

:[136]
push.s "obj_shop1_480"@24418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_481"@24420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[137]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [141]

:[138]
pushi.e -5
pushi.e 255
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [140]

:[139]
push.s "obj_shop1_486"@24422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v global.gold
pushi.e 758
add.i.v
pop.v.v global.gold
pushi.e 1
pushi.e -5
pushi.e 255
pop.v.i [array]global.flag
b [141]

:[140]
push.s "obj_shop1_492"@24424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[141]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [144]

:[142]
push.s "obj_shop1_498"@24426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
push.s "obj_shop1_500"@24427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[144]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [147]

:[145]
push.s "obj_shop1_504"@24429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_505"@24431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop1_506"@24433
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
bf [147]

:[146]
push.s "obj_shop1_511"@24435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_512"@24437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop1_513"@24439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[147]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [150]

:[148]
push.s "obj_shop1_518"@24441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_519"@24443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop1_520"@24445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop1_521"@24447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop1_522"@24449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop1_523"@24451
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
bf [150]

:[149]
push.s "obj_shop1_528"@24453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_529"@24455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop1_530"@24457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[150]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [153]

:[151]
push.s "obj_shop1_536"@24459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_537"@24461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop1_538"@24463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop1_539"@24465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop1_540"@24467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop1_541"@24469
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
bf [153]

:[152]
push.s "obj_shop1_545"@24471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_546"@24473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop1_547"@24475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop1_548"@24477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[153]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [156]

:[154]
push.s "obj_shop1_555"@24479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_556"@24481
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop1_557"@24483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop1_558"@24485
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop1_559"@24487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
push.s "obj_shop1_563"@24489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_564"@24491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[156]
push.v self.sell
pushi.e 7
cmp.i.v EQ
bf [158]

:[157]
push.s "obj_shop1_570"@24493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop1_571"@24495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[158]
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

:[159]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [166]

:[160]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [166]

:[161]
pushi.e 784
pushenv [165]

:[162]
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [164]

:[163]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[164]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[165]
popenv [162]

:[166]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [168]

:[167]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [169]

:[168]
push.e 0

:[169]
bf [179]

:[170]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [172]

:[171]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [179]

:[172]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [174]

:[173]
push.v self.sell
pushi.e 7
cmp.i.v EQ
b [175]

:[174]
push.e 1

:[175]
bf [177]

:[176]
pushi.e 0
pop.v.i self.menu
b [178]

:[177]
pushi.e 3
pop.v.i self.menu

:[178]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[179]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [182]

:[180]
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
bf [182]

:[181]
pushi.e 0
pushi.e -1
push.v self.menu
conv.v.i
pop.v.i [array]self.menuc

:[182]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[183]
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
bf [end]

:[184]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[end]