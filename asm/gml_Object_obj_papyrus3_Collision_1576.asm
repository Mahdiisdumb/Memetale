.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.conversation

:[2]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [4]

:[3]
pushi.e 8
pop.v.i self.conversation

:[4]
push.v self.conversation
pushi.e 21
cmp.i.v EQ
bf [end]

:[5]
pushi.e 22
pop.v.i self.conversation

:[end]