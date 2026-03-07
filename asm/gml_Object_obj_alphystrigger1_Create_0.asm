.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
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
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 8
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.looktimer

:[end]