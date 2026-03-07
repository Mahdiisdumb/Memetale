.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 41
cmp.i.v NEQ
bf [3]

:[1]
pushi.e 270
pop.v.i self.direction
pushglb.v global.plot
pushi.e 2
cmp.i.v GT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.donk

:[end]