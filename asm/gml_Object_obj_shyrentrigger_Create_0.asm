.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 110
cmp.i.v GT
bf [3]

:[1]
pushi.e -5
pushi.e 81
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [2]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 12
pop.v.i self.image_yscale

:[end]