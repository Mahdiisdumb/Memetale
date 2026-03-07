.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 280
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 1
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact

:[end]