.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 3
pop.v.i global.battlegroup
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 30
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]