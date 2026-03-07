.localvar 0 arguments

:[0]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]