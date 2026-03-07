.localvar 0 arguments

:[0]
push.v self.drawblack
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushbltn.v self.room_height
pushi.e 10
add.i.v
pushbltn.v self.room_width
pushi.e 10
add.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]