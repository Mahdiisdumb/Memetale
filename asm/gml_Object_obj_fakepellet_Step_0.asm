.localvar 0 arguments

:[0]
push.v self.attackyou
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.d 0.1
conv.d.v
push.v 749.ystart
push.v 749.xstart
call.i move_towards_point(argc=3)
popz.v
pushi.e -500
pop.v.i self.depth
pushi.e 2
pop.v.i self.attackyou
push.d -0.004
pop.v.d self.friction

:[end]