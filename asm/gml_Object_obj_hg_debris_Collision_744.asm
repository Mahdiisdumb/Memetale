.localvar 0 arguments

:[0]
pushi.e 596
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 596.c_counter
pushi.e 280
cmp.i.v LT
bf [end]

:[2]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]