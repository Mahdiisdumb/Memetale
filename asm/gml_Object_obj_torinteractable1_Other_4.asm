.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 4
cmp.i.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]