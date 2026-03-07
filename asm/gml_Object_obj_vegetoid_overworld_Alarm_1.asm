.localvar 0 arguments

:[0]
pushi.e 18
pop.v.i global.battlegroup
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 122
pop.v.i global.battlegroup

:[2]
pushi.e 202
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]