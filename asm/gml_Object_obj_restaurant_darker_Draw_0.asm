.localvar 0 arguments

:[0]
push.i 2298648
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.4
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 280
conv.i.v
pushi.e 780
conv.i.v
pushi.e 100
conv.i.v
pushi.e 80
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]