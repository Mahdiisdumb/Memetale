.localvar 0 arguments

:[0]
push.v self.knock
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.knock
push.v self.knock
pushi.e 1
cmp.i.v EQ
bf [end]

:[2]
pushi.e 30
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]