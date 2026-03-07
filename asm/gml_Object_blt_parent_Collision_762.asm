.localvar 0 arguments

:[0]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]