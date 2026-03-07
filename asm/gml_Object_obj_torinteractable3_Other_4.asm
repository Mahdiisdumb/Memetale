.localvar 0 arguments

:[0]
pushglb.v global.plot
push.d 4.5
cmp.d.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]