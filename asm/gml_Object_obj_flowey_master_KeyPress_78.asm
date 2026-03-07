.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1641
conv.i.v
pushi.e -50
conv.i.v
pushi.e 110
pushi.e 400
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
popz.v

:[end]