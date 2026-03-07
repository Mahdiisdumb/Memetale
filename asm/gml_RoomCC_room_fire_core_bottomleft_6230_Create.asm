.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.image_xscale
pushi.e -5
pushi.e 423
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]