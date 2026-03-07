.localvar 0 arguments
.localvar 1 line 694
.localvar 2 highlight 695
.localvar 3 text 696
.localvar 4 menu_x 697
.localvar 5 text_x 698
.localvar 6 text_space 699
.localvar 7 scale 700
.localvar 8 text_width 701

:[0]
pushbltn.v self.argument0
pop.v.v local.line
pushbltn.v self.argument1
pop.v.v local.highlight
pushbltn.v self.argument2
pop.v.v local.text
pushi.e 15
pop.v.i local.menu_x
pushloc.v local.menu_x
pushi.e 15
add.i.v
pop.v.v local.text_x
call.i scr_shop_divider_pos(argc=0)
pushi.e 10
sub.i.v
pushloc.v local.text_x
sub.v.v
pop.v.v local.text_space
pushloc.v local.highlight
conv.v.b
bf [2]

:[1]
push.i 65535
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
b [3]

:[2]
push.i 16777215
conv.i.v
call.i draw_set_colour(argc=1)
popz.v

:[3]
pushi.e 1
pop.v.i local.scale
pushloc.v local.text
call.i string_width(argc=1)
pop.v.v local.text_width
pushloc.v local.text_width
pushloc.v local.text_space
cmp.v.v GT
bf [5]

:[4]
pushloc.v local.text_space
pushloc.v local.text_width
div.v.v
pop.v.v local.scale

:[5]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.scale
pushloc.v local.text
pushi.e 130
pushi.e 20
pushloc.v local.line
mul.v.i
add.v.i
pushloc.v local.text_x
call.i draw_text_transformed(argc=6)
popz.v
pushloc.v local.highlight
conv.v.b
bf [end]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[end]