.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.phase
pushi.e 400
pop.v.i self.image_yscale
push.v 916.x
pushi.e 280
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]