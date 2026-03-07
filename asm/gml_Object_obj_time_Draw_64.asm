.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.time
pushi.e 30
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.savedata_debuginfo
pushi.e 30
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]