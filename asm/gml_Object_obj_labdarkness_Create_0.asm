.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.glowamt
pushglb.v global.plot
pushi.e 125
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]