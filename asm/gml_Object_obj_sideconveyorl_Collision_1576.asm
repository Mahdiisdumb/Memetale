.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v 1576.x
pushi.e 3
sub.i.v
pop.v.v 1576.x

:[end]