.localvar 0 arguments
.localvar 1 murder 703
.localvar 2 menu_x 704
.localvar 3 text_x 705
.localvar 4 heart_y 706

:[0]
pushbltn.v self.argument0
pop.v.v local.murder
call.i scr_shop_divider_pos(argc=0)
pushi.e 15
add.i.v
pop.v.v local.menu_x
pushloc.v local.menu_x
pushi.e 15
add.i.v
pop.v.v local.text_x
pushloc.v local.murder
conv.v.b
bf [2]

:[1]
push.s "shop_take"@5062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 130
conv.i.v
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v
push.s "shop_steal"@5063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 150
conv.i.v
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v
push.s "shop_read"@5064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v
b [3]

:[2]
push.s "shop_buy"@5065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 130
conv.i.v
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v
push.s "shop_sell"@5066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 150
conv.i.v
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v
push.s "shop_talk"@5067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 170
conv.i.v
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v

:[3]
push.s "shop_exit"@5068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 190
conv.i.v
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v
pushi.e 134
pop.v.i local.heart_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [5]

:[4]
push.v local.heart_y
pushi.e 2
sub.i.v
pop.v.v local.heart_y

:[5]
pushloc.v local.heart_y
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 20
mul.i.v
add.v.v
pushloc.v local.menu_x
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]