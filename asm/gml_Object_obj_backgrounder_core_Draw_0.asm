.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 500
conv.i.v
pushi.e 2000
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_waver_height_bg(argc=2)
popz.v

:[end]