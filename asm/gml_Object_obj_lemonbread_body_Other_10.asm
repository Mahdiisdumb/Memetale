.localvar 0 arguments

:[0]
push.v self.melting
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.melting

:[2]
push.v self.melting
pushi.e 3
cmp.i.v EQ
bf [end]

:[3]
pushi.e 4
pop.v.i self.melting

:[end]