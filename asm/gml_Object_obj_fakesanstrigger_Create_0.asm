.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 35
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 275
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.conversation
pushi.e 999
pop.v.i self.image_yscale
pushi.e -5
pushi.e 47
push.v [array]global.flag
pushi.e 2
cmp.i.v GT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]