.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]