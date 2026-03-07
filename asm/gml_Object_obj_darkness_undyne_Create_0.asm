.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.glowamt
pushi.e 1
pop.v.i self.glowyes
pushi.e 1
pop.v.i self.maxvol
pushglb.v global.plot
pushi.e 117
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]