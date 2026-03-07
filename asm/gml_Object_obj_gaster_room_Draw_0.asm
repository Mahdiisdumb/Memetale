.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[1]
pushglb.v global.savedata_async_id
pushi.e -1
cmp.i.v EQ
bf [end]

:[2]
call.i ossafe_game_end(argc=0)
popz.v

:[end]