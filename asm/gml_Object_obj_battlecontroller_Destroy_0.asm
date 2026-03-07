.localvar 0 arguments

:[0]
push.v self.suppress_border
conv.v.b
bf [end]

:[1]
pushi.e 1
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v

:[end]