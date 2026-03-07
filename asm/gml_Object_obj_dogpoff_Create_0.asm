.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushglb.v global.plot
pushi.e 64
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.poffed

:[end]