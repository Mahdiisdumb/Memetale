.localvar 0 arguments

:[0]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v 308.phase
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.answered
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 3
pop.v.i 308.phase
push.v self.ano
pop.v.v 308.answer
pushi.e 1
pop.v.i self.answered

:[end]