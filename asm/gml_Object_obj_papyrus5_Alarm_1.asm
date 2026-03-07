.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [2]

:[1]
pushi.e 10
pop.v.i self.conversation

:[2]
push.v self.conversation
pushi.e 11
cmp.i.v EQ
bf [4]

:[3]
pushi.e 12
pop.v.i self.conversation

:[4]
push.v self.conversation
pushi.e 17
cmp.i.v EQ
bf [6]

:[5]
pushi.e 18
pop.v.i self.conversation

:[6]
push.v self.conversation
pushi.e 24
cmp.i.v EQ
bf [end]

:[7]
pushi.e 25
pop.v.i self.conversation

:[end]