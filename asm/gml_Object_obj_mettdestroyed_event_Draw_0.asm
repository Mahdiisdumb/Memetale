.localvar 0 arguments

:[0]
push.v self.x_maroon
call.i draw_set_color(argc=1)
popz.v
pushi.e 980
conv.i.v
pushi.e 180
conv.i.v
pushi.e 840
conv.i.v
pushi.e 140
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]