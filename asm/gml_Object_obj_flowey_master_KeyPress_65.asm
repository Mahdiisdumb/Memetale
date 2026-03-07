.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1646
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1646
conv.i.v
pushi.e 140
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1646
conv.i.v
pushi.e 140
conv.i.v
pushi.e 530
conv.i.v
call.i instance_create(argc=3)
popz.v
b [end]

:[3]
pushi.e 3
pop.v.i 1646.con

:[end]