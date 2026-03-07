.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e -1
pushi.e 4
push.v [array]self.alarm
push.v 1576.y
pushi.e 30
sub.i.v
push.v 1576.x
call.i draw_text(argc=3)
popz.v
push.v self.unbuffer
push.v 1576.y
pushi.e 10
sub.i.v
push.v 1576.x
call.i draw_text(argc=3)
popz.v

:[end]