.localvar 0 arguments

:[0]
push.v self.darkmode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.darkmode

:[2]
push.v self.darkmode
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e 3
pop.v.i self.darkmode

:[end]