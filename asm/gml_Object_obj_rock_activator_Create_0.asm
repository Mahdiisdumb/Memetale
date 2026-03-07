.localvar 0 arguments

:[0]
pushi.e 400
pop.v.i self.image_yscale
pushglb.v global.plot
pushi.e 12
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]