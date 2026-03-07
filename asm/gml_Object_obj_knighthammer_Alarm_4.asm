.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.go
pushi.e -10
pop.v.i self.vspeed

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 3
pop.v.i self.go
pushi.e 10
pop.v.i self.vspeed

:[end]