.localvar 0 arguments

:[0]
push.v self.go
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.interact
pushi.e 5
cmp.i.v NEQ
bf [3]

:[2]
push.v self.xfer
pop.v.v 1576.x
push.v 1576.x
push.v self.myspeedx
sub.v.v
pop.v.v 1576.x

:[3]
pushi.e 0
pop.v.i self.go

:[end]