.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [2]

:[1]
pushi.e 8
pop.v.i self.conversation

:[2]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [4]

:[3]
pushi.e 10
pop.v.i self.conversation

:[4]
push.v self.conversation
pushi.e 15
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1339
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 16
pop.v.i self.conversation

:[8]
push.v self.conversation
pushi.e 21
cmp.i.v EQ
bf [10]

:[9]
pushi.e 22
pop.v.i self.conversation

:[10]
push.v self.conversation
pushi.e 24
cmp.i.v EQ
bf [end]

:[11]
pushi.e 25
pop.v.i self.conversation

:[end]