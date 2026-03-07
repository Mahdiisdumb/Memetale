.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.sl
pushi.e 19
pop.v.i self.image_xscale
pushi.e 20
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.onner
pushi.e 0
pop.v.i self.doom
pushglb.v global.plot
pushi.e 164
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]