.localvar 0 arguments

:[0]
pushi.e 50
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.conversation
pushglb.v global.plot
pushi.e 16
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.volume
pushi.e 0
pop.v.i self.fademusicout

:[end]