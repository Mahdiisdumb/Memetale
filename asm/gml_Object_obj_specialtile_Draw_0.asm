.localvar 0 arguments

:[0]
push.v self.mygrey
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 19
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]