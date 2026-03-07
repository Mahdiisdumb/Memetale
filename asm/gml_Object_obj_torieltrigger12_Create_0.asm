.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.image_yscale
pushi.e 100
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.flames
pushglb.v global.plot
pushi.e 24
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.dingus
pushi.e 0
pop.v.i self.turts

:[end]