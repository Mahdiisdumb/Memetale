.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 4
pop.v.i global.interact
pushi.e 1
pop.v.i global.phasing
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]