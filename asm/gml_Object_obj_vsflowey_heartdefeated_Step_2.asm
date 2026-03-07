.localvar 0 arguments

:[0]
push.v self.do_restart
conv.v.b
bf [end]

:[1]
pushglb.v global.savedata_async_id
pushi.e -1
cmp.i.v EQ
bf [end]

:[2]
call.i game_restart(argc=0)
popz.v

:[end]