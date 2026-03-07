.localvar 0 arguments

:[0]
push.v self.shadow
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]