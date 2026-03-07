.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [end]

:[2]
pushi.e 1
conv.i.v
pushi.e 768
conv.i.v
call.i instance_change(argc=2)
popz.v

:[end]