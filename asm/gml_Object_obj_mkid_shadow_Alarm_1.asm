.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
push.v 1576.y
pushi.e 3
add.i.v
pop.v.v self.y
push.v 1576.x
pushi.e 24
sub.i.v
pop.v.v self.x
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 1576.x
pushi.e 24
sub.i.v
pop.v.v self.x

:[2]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v 1576.x
pushi.e 24
add.i.v
pop.v.v self.x

:[4]
pushi.e 1473
pop.v.i self.rsprite
pushi.e 1472
pop.v.i self.lsprite
pushi.e 1474
pop.v.i self.usprite
pushi.e 1471
pop.v.i self.dsprite
pushglb.v global.plot
pushi.e 112
cmp.i.v GT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e 1
pop.v.i self.follow
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.speedup
push.v 1576.depth
pop.v.v self.depth
pushi.e 0
pop.v.i self.look

:[end]