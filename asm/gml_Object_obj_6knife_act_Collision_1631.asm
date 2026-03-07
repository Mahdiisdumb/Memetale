.localvar 0 arguments

:[0]
push.v other.type
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v other.id
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]