.localvar 0 arguments

:[0]
pushi.e 400
pop.v.i self.image_yscale
pushglb.v global.plot
push.d 9.3
cmp.d.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]