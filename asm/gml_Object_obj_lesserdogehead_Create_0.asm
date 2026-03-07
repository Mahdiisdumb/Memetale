.localvar 0 arguments

:[0]
pushi.e 221
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 221
pop.v.i self.tailobj
b [3]

:[2]
pushi.e 605
pop.v.i self.tailobj

:[3]
push.v self.tailobj
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
push.v self.tailobj
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]