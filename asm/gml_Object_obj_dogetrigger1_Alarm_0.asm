.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
pop.v.i self.conversation

:[2]
push.v self.conversation
push.d 5.6
cmp.d.v EQ
bf [4]

:[3]
pushi.e 6
pop.v.i self.conversation

:[4]
push.v self.conversation
pushi.e 8
cmp.i.v EQ
bf [end]

:[5]
pushi.e 9
pop.v.i self.conversation

:[end]