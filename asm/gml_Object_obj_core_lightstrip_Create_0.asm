.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.powered
pushi.e 0
pop.v.i self.siner
pushi.e 1273
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1273.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]