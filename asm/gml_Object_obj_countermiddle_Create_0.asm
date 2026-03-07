.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 134
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
push.d 1.2
pop.v.d self.image_xscale

:[end]