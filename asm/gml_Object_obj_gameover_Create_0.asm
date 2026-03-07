.localvar 0 arguments

:[0]
pushglb.v global.myyb
pushglb.v global.myxb
pushi.e 745
conv.i.v
call.i action_create_object(argc=3)
popz.v
pushi.e 0
pop.v.i self.unpersist

:[end]