.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [end]

:[1]
pushi.e 281
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.deactivate

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[end]