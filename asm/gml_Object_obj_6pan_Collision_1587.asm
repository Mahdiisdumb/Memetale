.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i event_inherited(argc=0)
popz.v

:[end]