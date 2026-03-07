.localvar 0 arguments
.localvar 1 boxofs 9291
.localvar 2 heartofs 9292
.localvar 3 itemofs 9293

:[0]
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
pushi.e 1
pop.v.i global.interact
push.v self.buffer
pushi.e 3
cmp.i.v GT
bf [end]

:[1]
pushi.e 300
pop.v.i self.boxno
push.v self.boxtype
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 312
pop.v.i self.boxno

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
pushi.e 6
add.i.v
pop.v.v self.yy
pushi.e 8
pop.v.i local.boxofs
pushi.e 9
pop.v.i local.heartofs
pushi.e 23
pop.v.i local.itemofs
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [5]

:[4]
pushi.e 6
pop.v.i local.boxofs
pushi.e 7
pop.v.i local.heartofs
pushi.e 19
pop.v.i local.itemofs

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 234
pushloc.v local.boxofs
sub.v.i
add.v.v
push.v self.xx
pushi.e 320
pushloc.v local.boxofs
sub.v.i
add.v.v
push.v self.yy
pushloc.v local.boxofs
pushi.e 6
sub.i.v
add.v.v
push.v self.xx
pushloc.v local.boxofs
add.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 231
pushloc.v local.boxofs
sub.v.i
add.v.v
push.v self.xx
pushi.e 317
pushloc.v local.boxofs
sub.v.i
add.v.v
push.v self.yy
pushloc.v local.boxofs
pushi.e 3
sub.i.v
add.v.v
push.v self.xx
pushloc.v local.boxofs
pushi.e 3
add.i.v
add.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i scr_itemname(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [10]

:[7]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.itemname
push.v self.yy
pushi.e 30
add.i.v
push.v self.i
pushi.e 16
mul.i.v
add.v.v
push.v self.xx
pushloc.v local.boxofs
add.v.v
pushi.e 3
add.i.v
pushloc.v local.itemofs
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 40
add.i.v
push.v self.i
pushi.e 16
mul.i.v
add.v.v
push.v self.xx
pushloc.v local.boxofs
add.v.v
pushi.e 3
add.i.v
pushloc.v local.itemofs
add.v.v
pushi.e 95
add.i.v
push.v self.yy
pushi.e 40
add.i.v
push.v self.i
pushi.e 16
mul.i.v
add.v.v
push.v self.xx
pushloc.v local.boxofs
add.v.v
pushi.e 3
add.i.v
pushloc.v local.itemofs
add.v.v
pushi.e 5
add.i.v
call.i draw_line(argc=4)
popz.v

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[10]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "itembox_title_inventory"@31749
conv.s.v
call.i scr_gettext(argc=1)
push.v self.yy
pushi.e 9
add.i.v
push.v self.xx
pushloc.v local.boxofs
add.v.v
pushi.e 3
add.i.v
pushloc.v local.itemofs
add.v.v
pushi.e 50
add.i.v
call.i scr_drawtext_centered(argc=3)
popz.v
push.s "itembox_title_box"@31751
conv.s.v
call.i scr_gettext(argc=1)
push.v self.yy
pushi.e 9
add.i.v
push.v self.xx
pushi.e 162
add.i.v
pushloc.v local.itemofs
add.v.v
pushi.e 50
add.i.v
call.i scr_drawtext_centered(argc=3)
popz.v
push.v self.boxno
call.i scr_storagename(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [15]

:[12]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.itemname
push.v self.yy
pushi.e 30
add.i.v
push.v self.i
pushi.e 16
mul.i.v
add.v.v
push.v self.xx
pushi.e 162
add.i.v
pushloc.v local.itemofs
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.boxno
push.v self.i
add.v.v
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 40
add.i.v
push.v self.i
pushi.e 16
mul.i.v
add.v.v
push.v self.xx
pushi.e 162
add.i.v
pushloc.v local.itemofs
add.v.v
pushi.e 95
add.i.v
push.v self.yy
pushi.e 40
add.i.v
push.v self.i
pushi.e 16
mul.i.v
add.v.v
push.v self.xx
pushi.e 162
add.i.v
pushloc.v local.itemofs
add.v.v
pushi.e 5
add.i.v
call.i draw_line(argc=4)
popz.v

:[14]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[15]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 190
add.i.v
push.v self.xx
pushi.e 160
add.i.v
push.v self.yy
pushi.e 40
add.i.v
push.v self.xx
pushi.e 160
add.i.v
call.i draw_line(argc=4)
popz.v
push.v self.yy
pushi.e 190
add.i.v
push.v self.xx
pushi.e 161
add.i.v
push.v self.yy
pushi.e 40
add.i.v
push.v self.xx
pushi.e 161
add.i.v
call.i draw_line(argc=4)
popz.v
push.s "itembox_close"@31753
conv.s.v
call.i scr_gettext(argc=1)
push.v self.yy
pushi.e 197
add.i.v
push.v self.xx
pushi.e 100
add.i.v
call.i scr_drawtext_icons(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [18]

:[16]
push.v self.column
pushi.e 1
cmp.i.v NEQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.column
push.v self.c0y
pop.v.v self.c1y

:[18]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [22]

:[19]
push.v self.column
pushi.e 0
cmp.i.v NEQ
bf [22]

:[20]
pushi.e 0
pop.v.i self.column
push.v self.c1y
pop.v.v self.c0y
push.v self.c0y
pushi.e 7
cmp.i.v GT
bf [22]

:[21]
pushi.e 7
pop.v.i self.c0y

:[22]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [33]

:[23]
push.v self.column
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.c0y
pushi.e 0
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v self.c0y
pushi.e 1
sub.i.v
pop.v.v self.c0y

:[28]
push.v self.column
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.v self.c1y
pushi.e 0
cmp.i.v GT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.v self.c1y
pushi.e 1
sub.i.v
pop.v.v self.c1y

:[33]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [44]

:[34]
push.v self.column
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.c0y
pushi.e 7
cmp.i.v LT
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.c0y
pushi.e 1
add.i.v
pop.v.v self.c0y

:[39]
push.v self.column
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.v self.c1y
pushi.e 9
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.v self.c1y
pushi.e 1
add.i.v
pop.v.v self.c1y

:[44]
push.v self.column
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v self.yy
pushi.e 35
add.i.v
pushi.e 16
push.v self.c0y
mul.v.i
add.v.v
push.v self.xx
pushloc.v local.boxofs
add.v.v
pushi.e 3
add.i.v
pushloc.v local.heartofs
add.v.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[46]
push.v self.column
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.v self.yy
pushi.e 35
add.i.v
pushi.e 16
push.v self.c1y
mul.v.i
add.v.v
push.v self.xx
pushi.e 162
add.i.v
pushloc.v local.heartofs
add.v.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[48]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [50]

:[49]
push.v self.buffer
pushi.e 6
cmp.i.v GT
b [51]

:[50]
push.e 0

:[51]
bf [58]

:[52]
push.v self.column
pushi.e 0
cmp.i.v EQ
bf [55]

:[53]
push.v self.boxno
pushi.e -5
push.v self.c0y
conv.v.i
push.v [array]global.item
pushi.e 89
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e 0
conv.i.v
push.v self.c0y
pushi.e 70
conv.i.v
call.i script_execute(argc=3)
popz.v

:[55]
push.v self.column
pushi.e 1
cmp.i.v EQ
bf [58]

:[56]
pushi.e -5
push.v self.c1y
push.v self.boxno
add.v.v
conv.v.i
push.v [array]global.flag
pushi.e 88
conv.i.v
call.i script_execute(argc=2)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.v self.boxno
pushi.e 0
conv.i.v
push.v self.c1y
call.i scr_storageshift(argc=3)
popz.v

:[58]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [end]

:[59]
pushi.e 0
pop.v.i global.interact
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 0
pop.v.i global.menuno

:[61]
pushi.e -2
pop.v.i 1531.buffer
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]