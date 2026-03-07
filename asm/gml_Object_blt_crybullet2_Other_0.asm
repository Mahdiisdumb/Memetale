.localvar 0 arguments

:[0]
push.v self.outside
pushi.e 1
add.i.v
pop.v.v self.outside
push.v self.outside
pushi.e 450
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]