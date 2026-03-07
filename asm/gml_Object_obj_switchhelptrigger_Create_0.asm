.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.image_yscale
pushi.e 100
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.conversation
pushi.e -5
pushi.e 51
push.v [array]global.flag
pushi.e 2
cmp.i.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]