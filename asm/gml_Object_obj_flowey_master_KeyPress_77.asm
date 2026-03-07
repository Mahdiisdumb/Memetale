.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1637
conv.i.v
pushi.e 140
conv.i.v
pushi.e 530
conv.i.v
call.i random(argc=1)
call.i instance_create(argc=3)
popz.v

:[end]