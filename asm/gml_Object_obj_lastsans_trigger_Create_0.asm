.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 200
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 6
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [end]

:[3]
pushi.e 1
pop.v.i self.murder

:[end]