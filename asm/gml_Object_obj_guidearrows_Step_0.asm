.localvar 0 arguments

:[0]
push.v 199.conversation
pushi.e 2
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]