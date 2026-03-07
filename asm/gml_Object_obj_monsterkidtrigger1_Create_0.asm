.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 103
cmp.i.v GT
bf [4]

:[1]
pushi.e 1485
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
pushi.e 0
pop.v.i self.conversation
pushi.e 999
pop.v.i self.image_yscale

:[end]