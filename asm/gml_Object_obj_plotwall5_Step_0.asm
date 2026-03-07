.localvar 0 arguments

:[0]
push.v 916.x
pushi.e 280
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]