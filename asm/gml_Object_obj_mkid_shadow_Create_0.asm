.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e -1
pop.v.i self.follow
pushglb.v global.plot
pushi.e 112
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]