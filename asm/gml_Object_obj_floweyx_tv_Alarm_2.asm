.localvar 0 arguments

:[0]
push.v self.tvmode
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.tvmode

:[2]
pushglb.v global.floweyhp
pushi.e 0
cmp.i.v GT
bf [end]

:[3]
pushi.e 1592
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.frozen

:[5]
popenv [4]

:[end]