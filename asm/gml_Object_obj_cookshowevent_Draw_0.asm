.localvar 0 arguments

:[0]
push.v self.con
pushi.e 4
cmp.i.v LT
bf [end]

:[1]
push.v 1576.depth
pushi.e 1000
add.i.v
pop.v.v self.depth
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 500
conv.i.v
pushi.e 400
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]