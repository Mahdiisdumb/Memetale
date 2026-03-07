.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1650
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
pushi.e 1
pop.v.i 1650.con

:[end]