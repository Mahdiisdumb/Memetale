.localvar 0 arguments

:[0]
push.v self.lafftrax
pushi.e 1
add.i.v
pop.v.v self.lafftrax
push.v self.lafftrax
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 21
pop.v.i self.conversation

:[2]
push.v self.lafftrax
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e 23
pop.v.i self.conversation

:[end]