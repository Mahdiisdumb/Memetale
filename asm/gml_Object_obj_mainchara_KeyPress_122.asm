.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 82
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]