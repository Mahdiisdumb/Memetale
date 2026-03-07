.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 44
pop.v.i global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.plot
pushi.e 111
cmp.i.v LT
bf [3]

:[2]
pushi.e 111
pop.v.i global.plot

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]