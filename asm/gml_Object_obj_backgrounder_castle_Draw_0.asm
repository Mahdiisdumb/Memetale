.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 241
conv.i.v
pushbltn.v self.room_width
pushi.e 150
sub.i.v
pushi.e 195
conv.i.v
pushi.e 140
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]