.localvar 0 arguments

:[0]
pushglb.v global.plot
push.v self.plotrating
cmp.v.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]