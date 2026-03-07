.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushglb.v global.plot
pushi.e 205
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 1324
conv.i.v
pushi.e 300
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asg

:[end]