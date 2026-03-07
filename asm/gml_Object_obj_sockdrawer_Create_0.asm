.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.read
pushi.e 2
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushglb.v global.plot
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]