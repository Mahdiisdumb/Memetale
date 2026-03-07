.localvar 0 arguments

:[0]
pushi.e 100
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.conversation
pushglb.v global.plot
push.d 19.9
cmp.d.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]