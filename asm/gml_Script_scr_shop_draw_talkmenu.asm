.localvar 0 arguments
.localvar 1 menu_x 689
.localvar 2 text_x 690
.localvar 3 heart_y 691

:[0]
pushi.e 15
pop.v.i local.menu_x
pushloc.v local.menu_x
pushi.e 15
add.i.v
pop.v.v local.text_x
push.s "shop_exit_submenu"@5053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 210
conv.i.v
pushloc.v local.text_x
call.i draw_text(argc=3)
popz.v
pushi.e 134
pop.v.i local.heart_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
push.v local.heart_y
pushi.e 2
sub.i.v
pop.v.v local.heart_y

:[2]
pushloc.v local.heart_y
pushi.e -1
pushi.e 3
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