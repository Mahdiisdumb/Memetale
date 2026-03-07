.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.cl
b [end]

:[3]
pushi.e 0
pop.v.i self.cl

:[end]