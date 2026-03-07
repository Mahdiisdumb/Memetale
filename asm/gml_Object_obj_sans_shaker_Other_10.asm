.localvar 0 arguments

:[0]
push.v self.self_d
pushi.e 2
cmp.i.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]