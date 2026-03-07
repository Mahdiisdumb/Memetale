.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 160
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 5
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.quickskip
pushi.e 0
pop.v.i self.failure

:[end]