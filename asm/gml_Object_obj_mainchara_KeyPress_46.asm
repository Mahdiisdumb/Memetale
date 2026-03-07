.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i room_goto_previous(argc=0)
popz.v

:[end]