.localvar 0 arguments

:[0]
push.v self.counter
pushi.e 10
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]