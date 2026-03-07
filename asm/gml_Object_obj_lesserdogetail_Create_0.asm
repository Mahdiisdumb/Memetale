.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 221
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 221
pop.v.i self.tailobj

:[2]
pushi.e 605
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e 605
pop.v.i self.tailobj

:[end]