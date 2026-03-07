.localvar 0 arguments

:[0]
call.i draw_self_border_e(argc=0)
popz.v
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.hp
push.v self.y
push.v self.x
pushi.e 200
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]