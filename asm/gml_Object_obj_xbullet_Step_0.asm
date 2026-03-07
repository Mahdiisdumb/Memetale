.localvar 0 arguments

:[0]
push.v self.x
push.v self.xstart
pushi.e 260
sub.i.v
cmp.v.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.x
push.v self.xstart
pushi.e 260
add.i.v
cmp.v.v GT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]