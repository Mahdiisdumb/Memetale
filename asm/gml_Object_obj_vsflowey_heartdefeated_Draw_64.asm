.localvar 0 arguments

:[0]
push.v self.in_fakecrash
conv.v.b
bf [2]

:[1]
call.i scr_fakecrash_draw(argc=0)
popz.v
b [end]

:[2]
push.v self.force_black_screen
conv.v.b
bf [end]

:[3]
pushi.e 0
conv.i.v
call.i draw_enable_alphablend(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i window_get_height(argc=0)
call.i window_get_width(argc=0)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_enable_alphablend(argc=1)
popz.v

:[end]