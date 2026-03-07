.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v other.id
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]

:[end]