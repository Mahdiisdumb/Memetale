.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.phase
pushi.e 400
pop.v.i self.image_yscale
pushi.e -5
pushi.e 35
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]