.localvar 0 arguments

:[0]
pushi.e 100
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.conversation
pushglb.v global.plot
pushi.e 21
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.dingus

:[end]