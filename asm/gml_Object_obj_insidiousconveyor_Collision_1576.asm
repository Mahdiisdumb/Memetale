.localvar 0 arguments

:[0]
push.v self.collide
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.collide

:[end]