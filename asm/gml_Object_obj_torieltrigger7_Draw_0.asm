.localvar 0 arguments

:[0]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.x
pushi.e 60
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v 1576.y
pushi.e 80
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]