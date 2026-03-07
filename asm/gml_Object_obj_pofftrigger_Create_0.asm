.localvar 0 arguments

:[0]
pushi.e 20
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.t
pushglb.v global.plot
pushi.e 64
cmp.i.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]