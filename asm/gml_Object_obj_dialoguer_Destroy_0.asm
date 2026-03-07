.localvar 0 arguments

:[0]
pushi.e 775
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 775
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]