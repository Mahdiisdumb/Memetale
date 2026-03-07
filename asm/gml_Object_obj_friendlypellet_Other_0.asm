.localvar 0 arguments

:[0]
push.v self.attackyou
pushi.e 3
cmp.i.v NEQ
bf [end]

:[1]
push.v 199.conversation
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
pushi.e 5
pop.v.i 199.conversation

:[3]
push.v 199.conversation
pushi.e 8
cmp.i.v EQ
bf [5]

:[4]
pushi.e 9
pop.v.i 199.conversation

:[5]
push.v 199.conversation
push.d 9.4
cmp.d.v EQ
bf [end]

:[6]
push.d 9.5
pop.v.d 199.conversation

:[end]