.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.onion_blue_alpha
pushi.e 0
pop.v.i self.onionh
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.special
pushi.e 0
pop.v.i self.follow
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.y
push.v 1576.y
cmp.v.v GT
bf [end]

:[2]
call.i scr_depth(argc=0)
popz.v

:[end]