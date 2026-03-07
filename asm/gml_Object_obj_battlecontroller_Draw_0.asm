.localvar 0 arguments
.localvar 1 maxwidth 1642
.localvar 2 i 1643
.localvar 3 name 1644
.localvar 4 width 1645
.localvar 5 j 1646
.localvar 6 ch 1647
.localvar 7 lineheight 1649
.localvar 8 y_start 1650
.localvar 9 first 1651
.localvar 10 xx 1652
.localvar 11 yy 1653
.localvar 12 lineheader 1654
.localvar 13 num_items 1655
.localvar 14 arrow_yofs 1656
.localvar 15 spr 1657

:[0]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e -1000
pop.v.i self.depth
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v global.turntimer
pushi.e 1
sub.i.v
pop.v.v global.turntimer

:[2]
pushi.e 760
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[3]
pushi.e 5
pop.v.i self.depth
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.drawrect
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v 762.y
push.v 761.x
push.v 760.y
pushi.e 5
add.i.v
push.v 760.x
pushi.e 5
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[5]
pushbltn.v self.background_color
push.i 16777215
cmp.i.v NEQ
bf [7]

:[6]
push.v self.drawbinfo
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 170
conv.i.v
call.i script_execute(argc=1)
popz.v

:[10]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [45]

:[15]
pushi.e 0
pop.v.i local.maxwidth
pushi.e 0
pop.v.i local.i

:[16]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [35]

:[17]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [34]

:[18]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.monstername
pop.v.v local.name
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [31]

:[19]
pushi.e 0
pop.v.i local.width
pushi.e 1
pop.v.i local.j

:[20]
pushloc.v local.j
pushloc.v local.name
call.i strlen(argc=1)
cmp.v.v LTE
bf [30]

:[21]
pushloc.v local.j
pushloc.v local.name
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch
pushloc.v local.ch
pushi.e 32
cmp.i.v EQ
bt [23]

:[22]
pushloc.v local.ch
push.i 65377
cmp.i.v GTE
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
push.v local.width
pushi.e 13
add.i.v
pop.v.v local.width
b [29]

:[26]
pushloc.v local.ch
pushi.e 8192
cmp.i.v LT
bf [28]

:[27]
push.v local.width
pushi.e 16
add.i.v
pop.v.v local.width
b [29]

:[28]
push.v local.width
pushi.e 26
add.i.v
pop.v.v local.width

:[29]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [20]

:[30]
b [32]

:[31]
pushloc.v local.name
call.i strlen(argc=1)
pushi.e 16
mul.i.v
pop.v.v local.width

:[32]
pushloc.v local.width
pushloc.v local.maxwidth
cmp.v.v GT
bf [34]

:[33]
pushloc.v local.width
pop.v.v local.maxwidth

:[34]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [16]

:[35]
pushi.e 190
pushloc.v local.maxwidth
add.v.i
pop.v.v self.xwrite
pushi.e 0
pop.v.i local.i

:[36]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [45]

:[37]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 520
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
bf [44]

:[41]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 32
pop.v.i local.lineheight
pushi.e 280
pop.v.i local.y_start
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [43]

:[42]
pushi.e 36
pop.v.i local.lineheight

:[43]
pushi.e 0
conv.i.v
pushloc.v local.y_start
pushloc.v local.i
pushloc.v local.lineheight
mul.v.v
add.v.v
pushi.e 16
add.i.v
push.v self.xwrite
pushi.e 100
add.i.v
pushloc.v local.y_start
pushloc.v local.i
pushloc.v local.lineheight
mul.v.v
add.v.v
push.v self.xwrite
call.i draw_rectangle(argc=5)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushloc.v local.y_start
pushloc.v local.i
pushloc.v local.lineheight
mul.v.v
add.v.v
pushi.e 16
add.i.v
push.v self.xwrite
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.monstermaxhp
div.v.v
pushi.e 100
mul.i.v
add.v.v
pushloc.v local.y_start
pushloc.v local.i
pushloc.v local.lineheight
mul.v.v
add.v.v
push.v self.xwrite
call.i draw_rectangle(argc=5)
popz.v

:[44]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [36]

:[45]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [50]

:[46]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v GTE
bf [50]

:[47]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v LT
bf [50]

:[48]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [end]

:[52]
pushglb.v global.bmenuno
pushi.e 3
sub.i.v
pushi.e 8
mul.i.v
pop.v.v local.first
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v local.xx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v local.yy
push.s "item_menub_header"@41
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.lineheader
pushi.e 0
pop.v.i local.i

:[53]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [55]

:[54]
pushi.e -5
pushloc.v local.first
pushloc.v local.i
add.v.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushloc.v local.lineheader
pushi.e -5
pushloc.v local.first
pushloc.v local.i
add.v.v
conv.v.i
push.v [array]global.itemnameb
add.v.v
pushloc.v local.yy
pushloc.v local.i
pushi.e 36
mul.i.v
add.v.v
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [53]

:[58]
pushi.e 8
pop.v.i local.num_items

:[59]
pushloc.v local.num_items
pushi.e 0
cmp.i.v GT
bf [61]

:[60]
pushi.e -5
pushloc.v local.num_items
pushi.e 1
sub.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
push.v local.num_items
push.e 1
sub.i.v
pop.v.v local.num_items
b [59]

:[64]
pushloc.v local.num_items
pushi.e 3
cmp.i.v GT
bf [end]

:[65]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pop.v.v local.xx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 5
pushi.e 2
pushloc.v local.num_items
add.v.i
mul.v.i
sub.v.v
pop.v.v local.yy
push.d 0.5
conv.d.v
push.v 1575.time
pushi.e 30
mod.i.v
pushi.e 30
conv.i.d
div.d.v
call.i min(argc=2)
pushi.e 6
mul.i.v
call.i round(argc=1)
pop.v.v local.arrow_yofs
pushloc.v local.first
pushi.e 0
cmp.i.v GT
bf [67]

:[66]
pushloc.v local.yy
pushloc.v local.arrow_yofs
sub.v.v
pushloc.v local.xx
pushi.e 0
conv.i.v
pushi.e 43
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[67]
push.v local.yy
pushi.e 10
add.i.v
pop.v.v local.yy
pushi.e 0
pop.v.i local.i

:[68]
pushloc.v local.i
pushloc.v local.num_items
cmp.v.v LT
bf [73]

:[69]
pushloc.v local.first
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
add.v.v
pushloc.v local.i
cmp.v.v EQ
bf [71]

:[70]
pushi.e 45
pop.v.i local.spr
b [72]

:[71]
pushi.e 44
pop.v.i local.spr

:[72]
pushloc.v local.yy
pushloc.v local.xx
pushi.e 0
conv.i.v
pushloc.v local.spr
call.i draw_sprite(argc=4)
popz.v
push.v local.yy
pushi.e 10
add.i.v
pop.v.v local.yy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [68]

:[73]
pushloc.v local.first
pushi.e 3
add.i.v
pushloc.v local.num_items
cmp.v.v LT
bf [end]

:[74]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.yy
pushi.e 10
add.i.v
pushloc.v local.arrow_yofs
add.v.v
pushloc.v local.xx
pushi.e 0
conv.i.v
pushi.e 43
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]