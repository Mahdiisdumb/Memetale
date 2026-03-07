.localvar 0 arguments

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [2]

:[1]
call.i game_end(argc=0)
popz.v
b [end]

:[2]
call.i game_restart(argc=0)
popz.v

:[end]