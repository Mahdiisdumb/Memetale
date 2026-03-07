.localvar 0 arguments
.localvar 1 y_top 680
.localvar 2 text 681
.localvar 3 divider_x 682
.localvar 4 text_x 683
.localvar 5 text_y 684

:[0]
pushbltn.v self.argument0
pop.v.v local.y_top
pushbltn.v self.argument1
pop.v.v local.text
call.i scr_shop_divider_pos(argc=0)
pop.v.v local.divider_x
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.y_top
pushi.e 320
conv.i.v
pushi.e 120
conv.i.v
pushloc.v local.divider_x
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushloc.v local.y_top
pushi.e 116
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.y_top
pushi.e 4
add.i.v
pushi.e 316
conv.i.v
pushi.e 120
conv.i.v
pushloc.v local.divider_x
pushi.e 4
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[2]
pushloc.v local.divider_x
pushi.e 14
add.i.v
pop.v.v local.text_x
pushloc.v local.y_top
pushi.e 14
add.i.v
pop.v.v local.text_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [4]

:[3]
push.v local.text_y
pushi.e 4
sub.i.v
pop.v.v local.text_y

:[4]
pushloc.v local.text
pushloc.v local.text_y
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v

:[end]