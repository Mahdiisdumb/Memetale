.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.check
push.v 1576.y
pushi.e 10
sub.i.v
push.v 1576.x
call.i draw_text(argc=3)
popz.v
push.v self.qtimer
push.v 1576.y
pushi.e 20
sub.i.v
push.v 1576.x
call.i draw_text(argc=3)
popz.v

:[end]