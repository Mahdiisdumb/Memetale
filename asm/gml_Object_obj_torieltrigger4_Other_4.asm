.localvar 0 arguments

:[0]
pushglb.v global.plot
push.d 8.5
cmp.d.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]