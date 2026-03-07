.localvar 0 arguments

:[0]
pushi.e 272
conv.i.v
pushi.e 200
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.firingrate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]