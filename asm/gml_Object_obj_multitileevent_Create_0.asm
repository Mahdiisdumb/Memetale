.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 167
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 1
pop.v.i self.con

:[end]