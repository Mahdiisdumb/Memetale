.localvar 0 arguments

:[0]
push.v self.visible
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.visible
b [end]

:[2]
pushi.e 0
pop.v.i self.visible

:[end]