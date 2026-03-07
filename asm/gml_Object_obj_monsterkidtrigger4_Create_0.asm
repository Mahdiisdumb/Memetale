.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 113
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 91
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 20
pop.v.i self.image_yscale

:[end]