.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 175
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
pushi.e 1262
conv.i.v
pushi.e 150
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dm1
pushi.e 1262
conv.i.v
pushi.e 150
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dm2

:[3]
pushi.e 1
pop.v.i self.image_yscale
pushi.e 4
pop.v.i self.image_xscale

:[end]