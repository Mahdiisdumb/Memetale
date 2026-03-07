.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.tangible
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.b_buffer
pushi.e 0
cmp.i.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 1
pop.v.i self.myinteract

:[end]