.localvar 0 arguments

:[0]
pushi.e 1591
pushenv [2]

:[1]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
call.i instance_destroy(argc=0)
popz.v

:[end]