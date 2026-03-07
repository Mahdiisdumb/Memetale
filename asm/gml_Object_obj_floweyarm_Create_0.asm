.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.acon
pushi.e 0
pop.v.i self.acon2
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.reach
pushi.e 0
pop.v.i self.reach2
pushi.e 0
pop.v.i self.reach3
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.frozen
pushi.e 1
pop.v.i self.desperate
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1591
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.id
pop.v.v 1591.rightarm

:[5]
push.v self.image_xscale
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 1591
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.id
pop.v.v 1591.leftarm

:[10]
call.i scr_floweybodysave(argc=0)
popz.v

:[end]