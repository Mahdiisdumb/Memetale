.localvar 0 arguments

:[0]
pushi.e 29
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.color
call.i draw_set_color(argc=1)
popz.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_height
push.v self.m
div.v.v
add.v.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_width
push.v self.m
div.v.v
add.v.v
push.v self.y
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]