.localvar 0 arguments

:[0]
push.v self.go
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.yfer
pop.v.v 1576.y
push.v 1576.y
pushi.e 3
add.i.v
pop.v.v 1576.y
pushi.e 0
pop.v.i self.go

:[end]