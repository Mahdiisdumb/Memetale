.localvar 0 arguments

:[0]
pushi.e 1111
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i 1111.con

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]